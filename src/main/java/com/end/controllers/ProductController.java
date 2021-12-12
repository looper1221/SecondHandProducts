/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.controllers;

import com.end.dao.CustomerDao;
import com.end.dao.ProductDao;
import com.end.model.Cart;
import com.end.model.Product;
import com.end.services.CustomerService;
import com.end.services.ProductService;
import java.io.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author suliman
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    private Path path;

    @Autowired
    private ProductDao productDao;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private CustomerDao customerDao;

    @Autowired
    private ProductService productService;

    @RequestMapping("/productList")
    public String getProducts(Model model) {
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping("/viewProduct/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) throws IOException {
        Product product = productService.getProductById(productId);
        Cart cart = new Cart();
        int cartId = cart.getCartId();
        model.addAttribute("cartId", cartId);
        model.addAttribute("product", product);

        return "viewProduct";
    }

    @RequestMapping("/user/addProduct")
    public String addProduct(Model model) {
        Product product = new Product();

        model.addAttribute("product", product);

        return "sellProducts";
    }

    @RequestMapping(value = "/user/addProduct", method = RequestMethod.POST)
    public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result,
            HttpServletRequest request) {
        if (result.hasErrors()) {
            return "sellProducts";
        }

        productDao.addProduct(product);

        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getProductId() + ".png");

        if (productImage != null && !productImage.isEmpty()) {
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (IOException | IllegalStateException e) {
                throw new RuntimeException("Product image saving failed", e);
            }
        }

        return "redirect:/product/user/myProducts";
    }

    @RequestMapping("/user/editMyProduct/{id}")
    public String editProduct(@PathVariable("id") int id, Model model) {
        Product product = productDao.getProductById(id);

        model.addAttribute(product);

        return "editMyProduct";
    }

    @RequestMapping(value = "/user/editMyProduct", method = RequestMethod.POST)
    public String editProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model,
            HttpServletRequest request) {

        if (result.hasErrors()) {
            return "editMyProduct";
        }

        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getProductId() + ".png");

        if (productImage != null && !productImage.isEmpty()) {
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                throw new RuntimeException("Product image saving failed", e);
            }
        }

        productDao.editProduct(product);

        return "redirect:/product/user/myProducts";
    }

    @RequestMapping("/user/deleteProduct/{id}")
    public String deleteProduct(@PathVariable int id, Model model, HttpServletRequest request) {

        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + id + ".png");

        if (Files.exists(path)) {
            try {
                Files.delete(path);
            } catch (IOException e) {
            }
        }
        productDao.deleteProduct(id);

        return "redirect:/product/user/myProducts";
    }

    @RequestMapping("/user/myProducts")
    public String productInventory(Model model) {
        List<Product> products = productDao.getProductList();
        model.addAttribute("products", products);

        return "myProducts";
    }

    /**
     * @RequestMapping("/productList") public String
     * getProductByCategory(@RequestParam("searchCondition") String
     * searchCondition, Model model) { List<Product> products =
     * productService.getProductList(); model.addAttribute("products",
     * products); model.addAttribute("searchCondition", searchCondition);
     *
     * return "productList"; }
*
     */
}

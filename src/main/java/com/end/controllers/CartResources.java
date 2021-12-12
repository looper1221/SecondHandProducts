/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.controllers;

import com.end.model.Cart;
import com.end.model.CartItem;
import com.end.model.Customer;
import com.end.model.Product;
import com.end.services.CartItemService;
import com.end.services.CartService;
import com.end.services.CustomerService;
import com.end.services.ProductService;
import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 *
 * @author suliman
 */
@Controller
@RequestMapping("/rest/cart")
public class CartResources {

    @Autowired
    private CartService cartService;

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private ProductService productService;

    @RequestMapping("/{cartId}")
    public @ResponseBody
    Cart getCartById(@PathVariable(value = "cartId") int cartId) {
        return cartService.getCartById(cartId);
    }

    @RequestMapping(value = "/add/{productId}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)

    public void addItem(@PathVariable(value = "productId") int productId, Principal activeUser) {

        Customer customer = customerService.getCustomerByUsername(activeUser.getName());
        Cart cart = customer.getCart();
        Product product = productService.getProductById(productId);

        List<CartItem> cartItems = cart.getCartItems();

        for (int i = 0; i < cartItems.size(); i++) {
            if (product.getProductId() == cartItems.get(i).getProduct().getProductId()) {
                CartItem cartItem = cartItems.get(i);
                cartItem.setItemName(product.getProductName());
                cartItem.setUnitPrice(product.getProductPrice());
                cart.setGrandTotal(product.getProductPrice() + cart.getGrandTotal());
                cartItemService.addCartItem(cartItem);
                //cartService.update(cart);

                return;
            }
        }

        CartItem cartItem = new CartItem();
        cartItem.setProduct(product);
        cartItem.setCart(cart);
        cart.setGrandTotal(product.getProductPrice() + cart.getGrandTotal());
       // cartService.update(cart);
        cartItemService.addCartItem(cartItem);

    }

    @RequestMapping(value = "/remove/{itemId}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public String removeItem(@PathVariable(value = "itemId") int itemId) {
        CartItem cartItem = cartItemService.getCartItemById(itemId);
        System.out.println("Cartitemid: " + cartItemService.getCartItemById(itemId));
        cartItemService.removeCartItem(cartItem);

        return "productList";
    }

    @RequestMapping("/clearCart/{cartId}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public String clearCart(@PathVariable(value = "cartId") int cartId) {
        Cart cart = cartService.getCartById(cartId);
        cartItemService.removeAllCartItems(cart);

        return "home";
    }

    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload.")
    public void handleClientErrors(Exception e) {
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error.")
    public void handleServerErrors(Exception e) {
    }
}

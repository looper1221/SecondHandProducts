/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.controllers;

import com.end.model.Cart;
import com.end.model.CartItem;
import com.end.services.CustomerService;
import com.end.model.Customer;
import com.end.services.impl.CartItemServiceImpl;
import java.security.Principal;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author suliman
 */
@Controller
@RequestMapping("/customer/cart")
public class CartController {

    @Autowired
    private CustomerService customerService;

    CartItemServiceImpl cartItemServiceImpl;

    @RequestMapping
    public String getCart(Principal activeUser, Model model) {

        Customer customer = customerService.getCustomerByUsername(activeUser.getName());
        int cartId = customer.getCart().getCartId();
        //List<CartItem> items = cartItemServiceImpl.getItemsList();
        //   System.out.println("ITems:" + items);
        model.addAttribute("cartId", cartId);
        // model.addAttribute("items", items);
        return "redirect:/customer/cart/" + cartId;
    }

    @RequestMapping("/{cartId}")
    public String getCartRedirect(@PathVariable(value = "cartId") int cartId, Model model, Principal activeUser) {
        Customer customer = customerService.getCustomerByUsername(activeUser.getName());
        Cart cart = customer.getCart();
        List<CartItem> items = cart.getCartItems();
        model.addAttribute("items", items);
        model.addAttribute("cart", cart);
        return "cart";
    }

}

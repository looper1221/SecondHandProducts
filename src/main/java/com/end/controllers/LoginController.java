/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.controllers;

import com.end.model.Cart;
import javax.servlet.http.HttpServletRequest;
import org.h2.engine.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author suliman
 */
@Controller
public class LoginController {

    @RequestMapping("/login")
    public String login(@RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout, Model model) {
        if (error != null) {
            model.addAttribute("error", "Invalid Username or Password !");
        }
        if (logout != null) {
            model.addAttribute("msg", "You have been logged out Successfully");

        }
        return "/login";
    }

    @RequestMapping("/customer")
    public String customerLogin(Model model) {
        Cart cart = new Cart();
        int cartId = cart.getCartId();
        model.addAttribute("cartId", cartId);

        return "home";
    }
}

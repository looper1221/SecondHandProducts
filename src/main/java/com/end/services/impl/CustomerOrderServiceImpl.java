/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.services.impl;

import com.end.dao.CustomerOrderDao;
import com.end.model.Cart;
import com.end.model.CartItem;
import com.end.model.CustomerOrder;
import com.end.services.CartService;
import com.end.services.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 * @author suliman
 */
@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    @Override
    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    @Override
    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal = 0.0;
        
                 System.out.println("Grand:" + grandTotal);

        Cart cart = cartService.getCartById(cartId);
                 System.out.println("Grand:" + grandTotal);
         System.out.println("Grand:" + grandTotal);

        List<CartItem> cartItems = cart.getCartItems();
        
         System.out.println("Grand:" + grandTotal);
                  System.out.println("Grand:" + grandTotal);
         System.out.println("Grand:" + grandTotal);
         System.out.println("Grand:" + grandTotal);
         System.out.println("Grand:" + grandTotal);
         System.out.println("Grand:" + grandTotal);
         System.out.println("Grand:" + grandTotal);

         
         for (CartItem item : cartItems) {
            grandTotal+=item.getUnitPrice();
             System.out.println("Grand:" + grandTotal);
         }
        return grandTotal;
    
    }
}


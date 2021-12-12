/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.services;

import com.end.model.Cart;

/**
 *
 * @author suliman
 */
public interface CartService {

    Cart getCartById(int cartId);

    
}

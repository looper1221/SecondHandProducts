/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.services;

import com.end.model.Cart;
import com.end.model.CartItem;
import java.util.List;

/**
 *
 * @author suliman
 */
public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    List<CartItem> getItemsList();

    CartItem getCartItemByProductId(int productId);

    CartItem getCartItemById(int itemId);
}

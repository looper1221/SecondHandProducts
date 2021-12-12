/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.services.impl;

import com.end.dao.CartDao;
import com.end.model.Cart;
import com.end.services.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author suliman
 */
@Service
public class CartServiceImpl implements CartService {

@Autowired
	private CartDao cartDao;

	public CartDao getCartDao() {
		return cartDao;
	}

	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}

@Override
	public Cart getCartById(int CartId) {

		return cartDao.getCartById(CartId);
	}


}

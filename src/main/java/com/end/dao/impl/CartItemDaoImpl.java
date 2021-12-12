/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.dao.impl;

import com.end.dao.CartItemDao;
import com.end.model.Cart;
import com.end.model.CartItem;
import com.end.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 *
 * @author suliman
 */
@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }

    @Override
    public void removeCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();
    }

    @Override
    public void removeAllCartItems(Cart cart) {
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems) {
            removeCartItem(item);
        }
    }

    @Override
    public CartItem getCartItemByProductId(int productId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where productId = ?");
        query.setInteger(0, productId);
        session.flush();

        return (CartItem) query.uniqueResult();
    }

    @Override
    public List<CartItem> getItemsList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from com.end.model.CartItem");
        List<CartItem> items = query.list();
        session.flush();

        return items;

    }

    @Override
    public CartItem getCartItemById(int itemId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where cartItemId = ?");
        query.setInteger(0, itemId);
        session.flush();

        return (CartItem) query.uniqueResult();
    }

}

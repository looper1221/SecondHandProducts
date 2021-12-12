/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.dao.impl;

import com.end.dao.CartDao;
import com.end.model.Cart;
import com.end.services.CustomerOrderService;
import java.io.IOException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author suliman
 */
@Repository
@Transactional
public class CartDaoImpl implements CartDao {

    @Autowired
    private SessionFactory sessionFactory;

    private CustomerOrderService customerOrderService;

    @Override
    public Cart getCartById(int cartId) {
        Session session = sessionFactory.getCurrentSession();
        return (Cart) session.get(Cart.class, cartId);
    }

    @Override
    public Cart validate(int cartId) throws IOException {
        Cart cart = getCartById(cartId);

        if (cart == null || cart.getCartItems().isEmpty()) {

            throw new IOException(cartId + "");
        }
        //(cart);
        return cart;
    }

   /*@Override
    public void update(Cart cart) {
        double grandTotal = 0.0;
        int cartId = cart.getCartId();
                         System.out.println("CartID:::::" + cartId);

     grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
   System.out.println("GrandTotal:::::" + grandTotal);

        cart.setGrandTotal(grandTotal);

        Session session = sessionFactory.openSession();
        session.saveOrUpdate(cart);
        session.flush();
        session.close();
    }*/

    @Override
    public void update(Cart cart) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }



   

  
}

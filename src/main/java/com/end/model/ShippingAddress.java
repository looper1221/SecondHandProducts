/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Table;

/**
 *
 * @author suliman
 */
@Entity
@Table
public class ShippingAddress implements Serializable {

    private static final long serialVersionUID = 989191150380037359L;

    @Id
    @GeneratedValue
    @Column
    private int shippingAddressId;
    @Column
    private String streetName;
    @Column
    private String apartmentNumber;
    @Column
    private String city;
    @Column
    private String statee;
    @Column
    private String country;
    @Column
    private String zipCode;

    @OneToOne(mappedBy = "shippingAddress")
    private Customer customer;

    public int getShippingAddressId() {
        return shippingAddressId;
    }

    public void setShippingAddressId(int shippingAddressId) {
        this.shippingAddressId = shippingAddressId;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getApartmentNumber() {
        return apartmentNumber;
    }

    public void setApartmentNumber(String apartmentNumber) {
        this.apartmentNumber = apartmentNumber;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStatee() {
        return statee;
    }

    public void setStatee(String statee) {
        this.statee = statee;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

}

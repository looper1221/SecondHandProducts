/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.end.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author suliman
 */
@Entity
@Table
public class Authorities implements Serializable {

    @Id
    @GeneratedValue
    private int authoritiesId;
    private String username;
    private String authority;

    public int getAuthoritiesId() {
        return authoritiesId;
    }

    public void setAuthoritiesId(int authoritiesId) {
        this.authoritiesId = authoritiesId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

}

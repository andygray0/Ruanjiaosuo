package com.wine.web.bean;

import java.io.Serializable;

/**
 * Created by wzjer on 2018/4/8.
 */
public class InternAssignItem implements Serializable {

    private static final long serialVersionUID = 1L;

    private String username;

    private Integer number;

    public String getUsername() {
        return username;
    }

    public InternAssignItem setUsername(String username) {
        this.username = username;
        return this;
    }

    public Integer getNumber() {
        return number;
    }

    public InternAssignItem setNumber(Integer number) {
        this.number = number;
        return this;
    }
}

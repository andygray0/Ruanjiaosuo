package com.wine.model;

import java.io.Serializable;
import java.util.Date;

public class KeywordCategory implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;
    private String categoryName;
    private String describe;
    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public KeywordCategory setId(Integer id) {
        this.id = id;
        return this;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public KeywordCategory setCategoryName(String categoryName) {
        this.categoryName = categoryName;
        return this;
    }

    public String getDescribe() {
        return describe;
    }

    public KeywordCategory setDescribe(String describe) {
        this.describe = describe;
        return this;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public KeywordCategory setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
        return this;
    }
}

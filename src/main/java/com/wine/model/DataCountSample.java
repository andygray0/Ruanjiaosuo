package com.wine.model;

import java.io.Serializable;

public class DataCountSample implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer year;
    private Integer month;
    private Integer item = 0;
    private Integer query = 0;
    private Integer valid = 0;
    private Integer finish = 0;
    private Integer status;


    public Integer getYear() {
        return year;
    }

    public DataCountSample setYear(Integer year) {
        this.year = year;
        return this;
    }

    public Integer getMonth() {
        return month;
    }

    public DataCountSample setMonth(Integer month) {
        this.month = month;
        return this;
    }

    public Integer getItem() {
        return item;
    }

    public DataCountSample setItem(Integer item) {
        this.item = item;
        return this;
    }

    public Integer getQuery() {
        return query;
    }

    public DataCountSample setQuery(Integer query) {
        this.query = query;
        return this;
    }

    public Integer getValid() {
        return valid;
    }

    public DataCountSample setValid(Integer valid) {
        this.valid = valid;
        return this;
    }

    public Integer getFinish() {
        return finish;
    }

    public DataCountSample setFinish(Integer finish) {
        this.finish = finish;
        return this;
    }

    public Integer getStatus() {
        return status;
    }

    public DataCountSample setStatus(Integer status) {
        this.status = status;
        return this;
    }
}

package com.wine.model3;

import java.io.Serializable;

public class YearCount implements Serializable {
    private Integer year;

    private Integer count;

    private static final long serialVersionUID = 1L;

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}

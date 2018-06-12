package com.wine.web.bean;

import java.util.List;

/**
 * Created by acer on 2018/2/24.
 */
public class ParamPage<T> {

    private Integer page;

    private Integer limit;

    private Integer startNo;

    private String order = "id";

    private String direction = "ASC";

    private Integer total;

    private List<T> resultList;

    public Integer getPage() {
        return page;
    }

    public ParamPage<T> setPage(Integer page) {
        this.page = page;
        return this;
    }

    public Integer getLimit() {
        return limit;
    }

    public ParamPage<T> setLimit(Integer limit) {
        this.limit = limit;
        return this;
    }

    public Integer getStartNo() {
        this.startNo = (this.page - 1 ) * limit;
        return startNo;
    }

    public ParamPage<T> setStartNo(Integer startNo) {
        this.startNo = startNo;
        return this;
    }

    public String getOrder() {
        return order;
    }

    public ParamPage<T> setOrder(String order) {
        this.order = order;
        return this;
    }

    public String getDirection() {
        return direction;
    }

    public ParamPage<T> setDirection(String direction) {
        this.direction = direction;
        return this;
    }

    public Integer getTotal() {
        return total;
    }

    public ParamPage<T> setTotal(Integer total) {
        this.total = total;
        return this;
    }

    public List<T> getResultList() {
        return resultList;
    }

    public ParamPage<T> setResultList(List<T> resultList) {
        this.resultList = resultList;
        return this;
    }
}

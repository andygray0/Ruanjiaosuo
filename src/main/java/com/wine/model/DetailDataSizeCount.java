package com.wine.model;

import java.io.Serializable;

public class DetailDataSizeCount implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;
    private String taskName;
    private Integer itemCount = 0;
    private Integer recordCount = 0;

    private Integer item1 = 0;
    private Integer item2 = 0;
    private Integer item3 = 0;
    private Integer item4 = 0;
    private Integer item5 = 0;

    public Integer getId() {
        return id;
    }

    public DetailDataSizeCount setId(Integer id) {
        this.id = id;
        return this;
    }

    public String getTaskName() {
        return taskName;
    }

    public DetailDataSizeCount setTaskName(String taskName) {
        this.taskName = taskName;
        return this;
    }

    public Integer getItemCount() {
        return itemCount;
    }

    public DetailDataSizeCount setItemCount(Integer itemCount) {
        this.itemCount = itemCount;
        return this;
    }

    public Integer getRecordCount() {
        return recordCount;
    }

    public DetailDataSizeCount setRecordCount(Integer recordCount) {
        this.recordCount = recordCount;
        return this;
    }

    public Integer getItem1() {
        return item1;
    }

    public DetailDataSizeCount setItem1(Integer item1) {
        this.item1 = item1;
        return this;
    }

    public Integer getItem2() {
        return item2;
    }

    public DetailDataSizeCount setItem2(Integer item2) {
        this.item2 = item2;
        return this;
    }

    public Integer getItem3() {
        return item3;
    }

    public DetailDataSizeCount setItem3(Integer item3) {
        this.item3 = item3;
        return this;
    }

    public Integer getItem4() {
        return item4;
    }

    public DetailDataSizeCount setItem4(Integer item4) {
        this.item4 = item4;
        return this;
    }

    public Integer getItem5() {
        return item5;
    }

    public DetailDataSizeCount setItem5(Integer item5) {
        this.item5 = item5;
        return this;
    }
}

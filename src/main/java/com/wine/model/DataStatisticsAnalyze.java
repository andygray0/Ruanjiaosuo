package com.wine.model;

import java.io.Serializable;
import java.util.Date;

public class DataStatisticsAnalyze  implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private Integer year;

    private String season;

    private Date createTime;

    private String createBy;

    public Integer getId() {
        return id;
    }

    public DataStatisticsAnalyze setId(Integer id) {
        this.id = id;
        return this;
    }

    public Integer getYear() {
        return year;
    }

    public DataStatisticsAnalyze setYear(Integer year) {
        this.year = year;
        return this;
    }

    public String getSeason() {
        return season;
    }

    public DataStatisticsAnalyze setSeason(String season) {
        this.season = season;
        return this;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public DataStatisticsAnalyze setCreateTime(Date createTime) {
        this.createTime = createTime;
        return this;
    }

    public String getCreateBy() {
        return createBy;
    }

    public DataStatisticsAnalyze setCreateBy(String createBy) {
        this.createBy = createBy;
        return this;
    }


}

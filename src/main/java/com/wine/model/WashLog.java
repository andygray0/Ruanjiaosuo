package com.wine.model;

import java.io.Serializable;
import java.util.Date;

public class WashLog implements Serializable {
    private Integer id;

    private String name;

    private Integer exway;

    private String rules;

    private String sourcetable;

    private String goaltable;

    private String querys;

    private Integer counts;

    private Date fromtime;

    private Date totime;

    private Integer successflag;

    private String errlog;

    private Integer cleancount;

    private Integer checkcount;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getExway() {
        return exway;
    }

    public void setExway(Integer exway) {
        this.exway = exway;
    }

    public String getRules() {
        return rules;
    }

    public void setRules(String rules) {
        this.rules = rules == null ? null : rules.trim();
    }

    public String getSourcetable() {
        return sourcetable;
    }

    public void setSourcetable(String sourcetable) {
        this.sourcetable = sourcetable == null ? null : sourcetable.trim();
    }

    public String getGoaltable() {
        return goaltable;
    }

    public void setGoaltable(String goaltable) {
        this.goaltable = goaltable == null ? null : goaltable.trim();
    }

    public String getQuerys() {
        return querys;
    }

    public void setQuerys(String querys) {
        this.querys = querys == null ? null : querys.trim();
    }

    public Integer getCounts() {
        return counts;
    }

    public void setCounts(Integer counts) {
        this.counts = counts;
    }

    public Date getFromtime() {
        return fromtime;
    }

    public void setFromtime(Date fromtime) {
        this.fromtime = fromtime;
    }

    public Date getTotime() {
        return totime;
    }

    public void setTotime(Date totime) {
        this.totime = totime;
    }

    public Integer getSuccessflag() {
        return successflag;
    }

    public void setSuccessflag(Integer successflag) {
        this.successflag = successflag;
    }

    public String getErrlog() {
        return errlog;
    }

    public void setErrlog(String errlog) {
        this.errlog = errlog == null ? null : errlog.trim();
    }

    public Integer getCleancount() {
        return cleancount;
    }

    public void setCleancount(Integer cleancount) {
        this.cleancount = cleancount;
    }

    public Integer getCheckcount() {
        return checkcount;
    }

    public void setCheckcount(Integer checkcount) {
        this.checkcount = checkcount;
    }
}
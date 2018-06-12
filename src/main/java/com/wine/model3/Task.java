package com.wine.model3;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Task implements Serializable {
    private String id;

    private Date created;

    private Date modified;

    private String name;

    private String worker;

    private Integer flag;

    private String detail;

    private String year;

    private String month;

    private Integer oneitems;

    private Integer twoitems;

    private Integer threeitems;

    private Integer fouritems;

    private Integer fiveitems;

    private Integer period;

    private Integer count;

    private Integer workload;

    private BigDecimal unitprice;

    private Integer realWorkload;

    private Date deadline;

    private Integer status;

    private Date feedbacktime;

    private String purpose;

    private Date confirmtime;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getModified() {
        return modified;
    }

    public void setModified(Date modified) {
        this.modified = modified;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getWorker() {
        return worker;
    }

    public void setWorker(String worker) {
        this.worker = worker == null ? null : worker.trim();
    }

    public Integer getFlag() {
        return flag;
    }

    public void setFlag(Integer flag) {
        this.flag = flag;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year == null ? null : year.trim();
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month == null ? null : month.trim();
    }

    public Integer getOneitems() {
        return oneitems;
    }

    public void setOneitems(Integer oneitems) {
        this.oneitems = oneitems;
    }

    public Integer getTwoitems() {
        return twoitems;
    }

    public void setTwoitems(Integer twoitems) {
        this.twoitems = twoitems;
    }

    public Integer getThreeitems() {
        return threeitems;
    }

    public void setThreeitems(Integer threeitems) {
        this.threeitems = threeitems;
    }

    public Integer getFouritems() {
        return fouritems;
    }

    public void setFouritems(Integer fouritems) {
        this.fouritems = fouritems;
    }

    public Integer getFiveitems() {
        return fiveitems;
    }

    public void setFiveitems(Integer fiveitems) {
        this.fiveitems = fiveitems;
    }

    public Integer getPeriod() {
        return period;
    }

    public void setPeriod(Integer period) {
        this.period = period;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getWorkload() {
        return workload;
    }

    public void setWorkload(Integer workload) {
        this.workload = workload;
    }

    public BigDecimal getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(BigDecimal unitprice) {
        this.unitprice = unitprice;
    }

    public Integer getRealWorkload() {
        return realWorkload;
    }

    public void setRealWorkload(Integer realWorkload) {
        this.realWorkload = realWorkload;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getFeedbacktime() {
        return feedbacktime;
    }

    public void setFeedbacktime(Date feedbacktime) {
        this.feedbacktime = feedbacktime;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose == null ? null : purpose.trim();
    }

    public Date getConfirmtime() {
        return confirmtime;
    }

    public void setConfirmtime(Date confirmtime) {
        this.confirmtime = confirmtime;
    }
}
package com.wine.model3;

import java.io.Serializable;
import java.util.Date;

public class Toclean implements Serializable {
    private String irHkey;

    private Integer irSid;

    private Integer irStartid;

    private String irPkey;

    private String irUrlname;

    private String irSitename;

    private String irChannel;

    private String irUrltitle;

    private Date irLasttime;

    private Date irUrldate;

    private Date irUrltime;

    private Date irLoadtime;

    private String irDistrict;

    private String irCatalog;

    private String irCatalog1;

    private String irCatalog2;

    private Integer irBbsnum;

    private Date irInserttime;

    private Date irBiddingDate;

    private Integer clCheckCount;

    private String clTaskid;

    private String clCheckWorker;

    private static final long serialVersionUID = 1L;

    public String getIrHkey() {
        return irHkey;
    }

    public void setIrHkey(String irHkey) {
        this.irHkey = irHkey == null ? null : irHkey.trim();
    }

    public Integer getIrSid() {
        return irSid;
    }

    public void setIrSid(Integer irSid) {
        this.irSid = irSid;
    }

    public Integer getIrStartid() {
        return irStartid;
    }

    public void setIrStartid(Integer irStartid) {
        this.irStartid = irStartid;
    }

    public String getIrPkey() {
        return irPkey;
    }

    public void setIrPkey(String irPkey) {
        this.irPkey = irPkey == null ? null : irPkey.trim();
    }

    public String getIrUrlname() {
        return irUrlname;
    }

    public void setIrUrlname(String irUrlname) {
        this.irUrlname = irUrlname == null ? null : irUrlname.trim();
    }

    public String getIrSitename() {
        return irSitename;
    }

    public void setIrSitename(String irSitename) {
        this.irSitename = irSitename == null ? null : irSitename.trim();
    }

    public String getIrChannel() {
        return irChannel;
    }

    public void setIrChannel(String irChannel) {
        this.irChannel = irChannel == null ? null : irChannel.trim();
    }

    public String getIrUrltitle() {
        return irUrltitle;
    }

    public void setIrUrltitle(String irUrltitle) {
        this.irUrltitle = irUrltitle == null ? null : irUrltitle.trim();
    }

    public Date getIrLasttime() {
        return irLasttime;
    }

    public void setIrLasttime(Date irLasttime) {
        this.irLasttime = irLasttime;
    }

    public Date getIrUrldate() {
        return irUrldate;
    }

    public void setIrUrldate(Date irUrldate) {
        this.irUrldate = irUrldate;
    }

    public Date getIrUrltime() {
        return irUrltime;
    }

    public void setIrUrltime(Date irUrltime) {
        this.irUrltime = irUrltime;
    }

    public Date getIrLoadtime() {
        return irLoadtime;
    }

    public void setIrLoadtime(Date irLoadtime) {
        this.irLoadtime = irLoadtime;
    }

    public String getIrDistrict() {
        return irDistrict;
    }

    public void setIrDistrict(String irDistrict) {
        this.irDistrict = irDistrict == null ? null : irDistrict.trim();
    }

    public String getIrCatalog() {
        return irCatalog;
    }

    public void setIrCatalog(String irCatalog) {
        this.irCatalog = irCatalog == null ? null : irCatalog.trim();
    }

    public String getIrCatalog1() {
        return irCatalog1;
    }

    public void setIrCatalog1(String irCatalog1) {
        this.irCatalog1 = irCatalog1 == null ? null : irCatalog1.trim();
    }

    public String getIrCatalog2() {
        return irCatalog2;
    }

    public void setIrCatalog2(String irCatalog2) {
        this.irCatalog2 = irCatalog2 == null ? null : irCatalog2.trim();
    }

    public Integer getIrBbsnum() {
        return irBbsnum;
    }

    public void setIrBbsnum(Integer irBbsnum) {
        this.irBbsnum = irBbsnum;
    }

    public Date getIrInserttime() {
        return irInserttime;
    }

    public void setIrInserttime(Date irInserttime) {
        this.irInserttime = irInserttime;
    }

    public Date getIrBiddingDate() {
        return irBiddingDate;
    }

    public void setIrBiddingDate(Date irBiddingDate) {
        this.irBiddingDate = irBiddingDate;
    }

    public Integer getClCheckCount() {
        return clCheckCount;
    }

    public void setClCheckCount(Integer clCheckCount) {
        this.clCheckCount = clCheckCount;
    }

    public String getClTaskid() {
        return clTaskid;
    }

    public void setClTaskid(String clTaskid) {
        this.clTaskid = clTaskid == null ? null : clTaskid.trim();
    }

    public String getClCheckWorker() {
        return clCheckWorker;
    }

    public void setClCheckWorker(String clCheckWorker) {
        this.clCheckWorker = clCheckWorker == null ? null : clCheckWorker.trim();
    }
}
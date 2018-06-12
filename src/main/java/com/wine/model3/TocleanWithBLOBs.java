package com.wine.model3;

import java.io.Serializable;

public class TocleanWithBLOBs extends Toclean implements Serializable {
    private byte[] irContent;

    private String irBiddingId;

    private String irBiddingType;

    private String irBiddingName;

    private String irBiddingContent;

    private String irBiddingSource;

    private String irBiddingMoney;

    private String irBiddingAgency;

    private String irBiddingOrg;

    private String irBiddingAddr;

    private String irBidDate;

    private String irBidType;

    private String irBidOrg;

    private String irBidAddr;

    private String irBidMoney;

    private String irAnnulmentDate;

    private String irAnnulmentReason;

    private String irAnnulmentTreatment;

    private String irOpenTime;

    private String irOpenAddr;

    private String irFirstAddr;

    private String irBiddingFileid;

    private String irBiddingNameTitle;

    private String clBiddingIdCheck;

    private String clBiddingOrgCheck;

    private String clBiddingAddrCheck;

    private String clBiddingAgencyCheck;

    private String clBiddingMoneyCheck;

    private String clBidDateCheck;

    private String clBidOrgCheck;

    private String clBidAddrCheckclCheckRemark;

    private String clBidMoneyCheck;

    private String clAonoTimeCheck;

    private String clBiddingOrgProCheck;

    private String clItemTypeKeywordCheck;

    private String clIndustryCategoryCheck;

    private String clCheckRemark;

    private static final long serialVersionUID = 1L;

    public byte[] getIrContent() {
        return irContent;
    }

    public void setIrContent(byte[] irContent) {
        this.irContent = irContent;
    }

    public String getIrBiddingId() {
        return irBiddingId;
    }

    public void setIrBiddingId(String irBiddingId) {
        this.irBiddingId = irBiddingId == null ? null : irBiddingId.trim();
    }

    public String getIrBiddingType() {
        return irBiddingType;
    }

    public void setIrBiddingType(String irBiddingType) {
        this.irBiddingType = irBiddingType == null ? null : irBiddingType.trim();
    }

    public String getIrBiddingName() {
        return irBiddingName;
    }

    public void setIrBiddingName(String irBiddingName) {
        this.irBiddingName = irBiddingName == null ? null : irBiddingName.trim();
    }

    public String getIrBiddingContent() {
        return irBiddingContent;
    }

    public void setIrBiddingContent(String irBiddingContent) {
        this.irBiddingContent = irBiddingContent == null ? null : irBiddingContent.trim();
    }

    public String getIrBiddingSource() {
        return irBiddingSource;
    }

    public void setIrBiddingSource(String irBiddingSource) {
        this.irBiddingSource = irBiddingSource == null ? null : irBiddingSource.trim();
    }

    public String getIrBiddingMoney() {
        return irBiddingMoney;
    }

    public void setIrBiddingMoney(String irBiddingMoney) {
        this.irBiddingMoney = irBiddingMoney == null ? null : irBiddingMoney.trim();
    }

    public String getIrBiddingAgency() {
        return irBiddingAgency;
    }

    public void setIrBiddingAgency(String irBiddingAgency) {
        this.irBiddingAgency = irBiddingAgency == null ? null : irBiddingAgency.trim();
    }

    public String getIrBiddingOrg() {
        return irBiddingOrg;
    }

    public void setIrBiddingOrg(String irBiddingOrg) {
        this.irBiddingOrg = irBiddingOrg == null ? null : irBiddingOrg.trim();
    }

    public String getIrBiddingAddr() {
        return irBiddingAddr;
    }

    public void setIrBiddingAddr(String irBiddingAddr) {
        this.irBiddingAddr = irBiddingAddr == null ? null : irBiddingAddr.trim();
    }

    public String getIrBidDate() {
        return irBidDate;
    }

    public void setIrBidDate(String irBidDate) {
        this.irBidDate = irBidDate == null ? null : irBidDate.trim();
    }

    public String getIrBidType() {
        return irBidType;
    }

    public void setIrBidType(String irBidType) {
        this.irBidType = irBidType == null ? null : irBidType.trim();
    }

    public String getIrBidOrg() {
        return irBidOrg;
    }

    public void setIrBidOrg(String irBidOrg) {
        this.irBidOrg = irBidOrg == null ? null : irBidOrg.trim();
    }

    public String getIrBidAddr() {
        return irBidAddr;
    }

    public void setIrBidAddr(String irBidAddr) {
        this.irBidAddr = irBidAddr == null ? null : irBidAddr.trim();
    }

    public String getIrBidMoney() {
        return irBidMoney;
    }

    public void setIrBidMoney(String irBidMoney) {
        this.irBidMoney = irBidMoney == null ? null : irBidMoney.trim();
    }

    public String getIrAnnulmentDate() {
        return irAnnulmentDate;
    }

    public void setIrAnnulmentDate(String irAnnulmentDate) {
        this.irAnnulmentDate = irAnnulmentDate == null ? null : irAnnulmentDate.trim();
    }

    public String getIrAnnulmentReason() {
        return irAnnulmentReason;
    }

    public void setIrAnnulmentReason(String irAnnulmentReason) {
        this.irAnnulmentReason = irAnnulmentReason == null ? null : irAnnulmentReason.trim();
    }

    public String getIrAnnulmentTreatment() {
        return irAnnulmentTreatment;
    }

    public void setIrAnnulmentTreatment(String irAnnulmentTreatment) {
        this.irAnnulmentTreatment = irAnnulmentTreatment == null ? null : irAnnulmentTreatment.trim();
    }

    public String getIrOpenTime() {
        return irOpenTime;
    }

    public void setIrOpenTime(String irOpenTime) {
        this.irOpenTime = irOpenTime == null ? null : irOpenTime.trim();
    }

    public String getIrOpenAddr() {
        return irOpenAddr;
    }

    public void setIrOpenAddr(String irOpenAddr) {
        this.irOpenAddr = irOpenAddr == null ? null : irOpenAddr.trim();
    }

    public String getIrFirstAddr() {
        return irFirstAddr;
    }

    public void setIrFirstAddr(String irFirstAddr) {
        this.irFirstAddr = irFirstAddr == null ? null : irFirstAddr.trim();
    }

    public String getIrBiddingFileid() {
        return irBiddingFileid;
    }

    public void setIrBiddingFileid(String irBiddingFileid) {
        this.irBiddingFileid = irBiddingFileid == null ? null : irBiddingFileid.trim();
    }

    public String getIrBiddingNameTitle() {
        return irBiddingNameTitle;
    }

    public void setIrBiddingNameTitle(String irBiddingNameTitle) {
        this.irBiddingNameTitle = irBiddingNameTitle == null ? null : irBiddingNameTitle.trim();
    }

    public String getClBiddingIdCheck() {
        return clBiddingIdCheck;
    }

    public void setClBiddingIdCheck(String clBiddingIdCheck) {
        this.clBiddingIdCheck = clBiddingIdCheck == null ? null : clBiddingIdCheck.trim();
    }

    public String getClBiddingOrgCheck() {
        return clBiddingOrgCheck;
    }

    public void setClBiddingOrgCheck(String clBiddingOrgCheck) {
        this.clBiddingOrgCheck = clBiddingOrgCheck == null ? null : clBiddingOrgCheck.trim();
    }

    public String getClBiddingAddrCheck() {
        return clBiddingAddrCheck;
    }

    public void setClBiddingAddrCheck(String clBiddingAddrCheck) {
        this.clBiddingAddrCheck = clBiddingAddrCheck == null ? null : clBiddingAddrCheck.trim();
    }

    public String getClBiddingAgencyCheck() {
        return clBiddingAgencyCheck;
    }

    public void setClBiddingAgencyCheck(String clBiddingAgencyCheck) {
        this.clBiddingAgencyCheck = clBiddingAgencyCheck == null ? null : clBiddingAgencyCheck.trim();
    }

    public String getClBiddingMoneyCheck() {
        return clBiddingMoneyCheck;
    }

    public void setClBiddingMoneyCheck(String clBiddingMoneyCheck) {
        this.clBiddingMoneyCheck = clBiddingMoneyCheck == null ? null : clBiddingMoneyCheck.trim();
    }

    public String getClBidDateCheck() {
        return clBidDateCheck;
    }

    public void setClBidDateCheck(String clBidDateCheck) {
        this.clBidDateCheck = clBidDateCheck == null ? null : clBidDateCheck.trim();
    }

    public String getClBidOrgCheck() {
        return clBidOrgCheck;
    }

    public void setClBidOrgCheck(String clBidOrgCheck) {
        this.clBidOrgCheck = clBidOrgCheck == null ? null : clBidOrgCheck.trim();
    }

    public String getClBidAddrCheckclCheckRemark() {
        return clBidAddrCheckclCheckRemark;
    }

    public void setClBidAddrCheckclCheckRemark(String clBidAddrCheckclCheckRemark) {
        this.clBidAddrCheckclCheckRemark = clBidAddrCheckclCheckRemark == null ? null : clBidAddrCheckclCheckRemark.trim();
    }

    public String getClBidMoneyCheck() {
        return clBidMoneyCheck;
    }

    public void setClBidMoneyCheck(String clBidMoneyCheck) {
        this.clBidMoneyCheck = clBidMoneyCheck == null ? null : clBidMoneyCheck.trim();
    }

    public String getClAonoTimeCheck() {
        return clAonoTimeCheck;
    }

    public void setClAonoTimeCheck(String clAonoTimeCheck) {
        this.clAonoTimeCheck = clAonoTimeCheck == null ? null : clAonoTimeCheck.trim();
    }

    public String getClBiddingOrgProCheck() {
        return clBiddingOrgProCheck;
    }

    public void setClBiddingOrgProCheck(String clBiddingOrgProCheck) {
        this.clBiddingOrgProCheck = clBiddingOrgProCheck == null ? null : clBiddingOrgProCheck.trim();
    }

    public String getClItemTypeKeywordCheck() {
        return clItemTypeKeywordCheck;
    }

    public void setClItemTypeKeywordCheck(String clItemTypeKeywordCheck) {
        this.clItemTypeKeywordCheck = clItemTypeKeywordCheck == null ? null : clItemTypeKeywordCheck.trim();
    }

    public String getClIndustryCategoryCheck() {
        return clIndustryCategoryCheck;
    }

    public void setClIndustryCategoryCheck(String clIndustryCategoryCheck) {
        this.clIndustryCategoryCheck = clIndustryCategoryCheck == null ? null : clIndustryCategoryCheck.trim();
    }

    public String getClCheckRemark() {
        return clCheckRemark;
    }

    public void setClCheckRemark(String clCheckRemark) {
        this.clCheckRemark = clCheckRemark == null ? null : clCheckRemark.trim();
    }
}
package com.wine.model;

import java.io.Serializable;
import java.util.Date;

public class WaitCheckData implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;

	private Integer irSid;

	private String irUrltitle;

	private Date irLasttime;

	private Integer clCount;

	private Date irLasttimestartDate;

	private Date irLasttimeendDate;

	private Integer clWorkStatus;

	private Integer clReviewStatus;

	@Override
	public String toString() {
		return "WaitCheckData{" +
				"irSid=" + irSid +
				", irUrltitle='" + irUrltitle + '\'' +
				", irLasttime=" + irLasttime +
				", clCount=" + clCount +
				'}';
	}

	public Integer getId(){
		return this.id;
	}

	public WaitCheckData setId(Integer id){
		this.id = id;
		return this;
	}

	public Integer getIrSid(){
		return this.irSid;
	}

	public WaitCheckData setIrSid(Integer irSid){
		this.irSid = irSid;
		return this;
	}

	public String getIrUrltitle(){
		return this.irUrltitle;
	}

	public WaitCheckData setIrUrltitle(String irUrltitle){
		this.irUrltitle = irUrltitle;
		return this;
	}

	public Date getIrLasttime(){
		return this.irLasttime;
	}

	public WaitCheckData setIrLasttime(Date irLasttime){
		this.irLasttime = irLasttime;
		return this;
	}

	public Integer getClCount(){
		return this.clCount;
	}

	public WaitCheckData setClCount(Integer clCount){
		this.clCount = clCount;
		return this;
	}

	public Date getIrLasttimestartDate() {
		return irLasttimestartDate;
	}

	public WaitCheckData setIrLasttimestartDate(Date irLasttimestartDate) {
		this.irLasttimestartDate = irLasttimestartDate;
		return this;
	}

	public Date getIrLasttimeendDate() {
		return irLasttimeendDate;
	}

	public WaitCheckData setIrLasttimeendDate(Date irLasttimeendDate) {
		this.irLasttimeendDate = irLasttimeendDate;
		return this;
	}

	public Integer getClWorkStatus() {
		return clWorkStatus;
	}

	public WaitCheckData setClWorkStatus(Integer clWorkStatus) {
		this.clWorkStatus = clWorkStatus;
		return this;
	}

	public Integer getClReviewStatus() {
		return clReviewStatus;
	}

	public WaitCheckData setClReviewStatus(Integer clReviewStatus) {
		this.clReviewStatus = clReviewStatus;
		return this;
	}
}
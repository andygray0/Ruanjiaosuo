package com.wine.model;

import java.io.Serializable;
import java.util.Date;

public class PersonWashTask implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;

	private String taskName;

    private String taskStatus;

	private Date createTime;

	private Date virtualFeedbackTime;

	private String checkIntern;

	private Integer itemCount;

	private Integer checkTimes;

	private String checkStatus;

	private Date realFeedbackTime;

	private Date validateTime;

	private Integer recordCount;

	private Integer randomCheckRate;

	private Integer realQueryItemCount;

	private Integer realFinishedItemCount;

	private Double workLoad;

	private String multiInternFilter;

	private Integer realQueryRecordCount;

	private Integer realFinishedRecordCount;

	public Integer getId(){
		return this.id;
	}

	public PersonWashTask setId(Integer id){
		this.id = id;
		return this;
	}

	public String getTaskName(){
		return this.taskName;
	}

	public PersonWashTask setTaskName(String taskName){
		this.taskName = taskName;
		return this;
	}

    public String getTaskStatus() {
        return taskStatus;
    }

    public void setTaskStatus(String taskStatus) {
        this.taskStatus = taskStatus;
    }

    public Date getCreateTime(){
		return this.createTime;
	}

	public PersonWashTask setCreateTime(Date createTime){
		this.createTime = createTime;
		return this;
	}

	public Date getVirtualFeedbackTime(){
		return this.virtualFeedbackTime;
	}

	public PersonWashTask setVirtualFeedbackTime(Date virtualFeedbackTime){
		this.virtualFeedbackTime = virtualFeedbackTime;
		return this;
	}

	public String getCheckIntern(){
		return this.checkIntern;
	}

	public PersonWashTask setCheckIntern(String checkIntern){
		this.checkIntern = checkIntern;
		return this;
	}

	public Integer getItemCount(){
		return this.itemCount;
	}

	public PersonWashTask setItemCount(Integer itemCount){
		this.itemCount = itemCount;
		return this;
	}

	public Integer getCheckTimes(){
		return this.checkTimes;
	}

	public PersonWashTask setCheckTimes(Integer checkTimes){
		this.checkTimes = checkTimes;
		return this;
	}

	public String getCheckStatus(){
		return this.checkStatus;
	}

	public PersonWashTask setCheckStatus(String checkStatus){
		this.checkStatus = checkStatus;
		return this;
	}

	public Date getRealFeedbackTime(){
		return this.realFeedbackTime;
	}

	public PersonWashTask setRealFeedbackTime(Date realFeedbackTime){
		this.realFeedbackTime = realFeedbackTime;
		return this;
	}

	public Date getValidateTime(){
		return this.validateTime;
	}

	public PersonWashTask setValidateTime(Date validateTime){
		this.validateTime = validateTime;
		return this;
	}

	public Integer getRecordCount(){
		return this.recordCount;
	}

	public PersonWashTask setRecordCount(Integer recordCount){
		this.recordCount = recordCount;
		return this;
	}

	public Integer getRandomCheckRate() {
		return randomCheckRate;
	}

	public PersonWashTask setRandomCheckRate(Integer randomCheckRate) {
		this.randomCheckRate = randomCheckRate;
		return this;
	}

	public Integer getRealQueryItemCount() {
		return realQueryItemCount;
	}

	public PersonWashTask setRealQueryItemCount(Integer realQueryItemCount) {
		this.realQueryItemCount = realQueryItemCount;
		return this;
	}

	public Integer getRealFinishedItemCount() {
		return realFinishedItemCount;
	}

	public PersonWashTask setRealFinishedItemCount(Integer realFinishedItemCount) {
		this.realFinishedItemCount = realFinishedItemCount;
		return this;
	}

	public Double getWorkLoad() {
		return workLoad;
	}

	public PersonWashTask setWorkLoad(Double workLoad) {
		this.workLoad = workLoad;
		return this;
	}

    public String getMultiInternFilter() {
        return multiInternFilter;
    }

    public PersonWashTask setMultiInternFilter(String multiInternFilter) {
        this.multiInternFilter = multiInternFilter;
        return this;
    }

	public Integer getRealQueryRecordCount() {
		return realQueryRecordCount;
	}

	public PersonWashTask setRealQueryRecordCount(Integer realQueryRecordCount) {
		this.realQueryRecordCount = realQueryRecordCount;
		return this;
	}

	public Integer getRealFinishedRecordCount() {
		return realFinishedRecordCount;
	}

	public PersonWashTask setRealFinishedRecordCount(Integer realFinishedRecordCount) {
		this.realFinishedRecordCount = realFinishedRecordCount;
		return this;
	}
}
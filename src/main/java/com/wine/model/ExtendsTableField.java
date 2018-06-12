package com.wine.model;

import java.io.Serializable;
import java.util.Date;

public class ExtendsTableField implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;

	private Integer relationId;

	private String fieldName;

	private String fieldTitle;

	private Integer numberFlag;

	private Integer showFlag;

	public Integer getId(){
		return this.id;
	}

	public ExtendsTableField setId(Integer id){
		this.id = id;
		return this;
	}

	public Integer getRelationId() {
		return relationId;
	}

	public ExtendsTableField setRelationId(Integer relationId) {
		this.relationId = relationId;
		return this;
	}

	public String getFieldName(){
		return this.fieldName;
	}

	public ExtendsTableField setFieldName(String fieldName){
		this.fieldName = fieldName;
		return this;
	}

	public String getFieldTitle(){
		return this.fieldTitle;
	}

	public ExtendsTableField setFieldTitle(String fieldTitle){
		this.fieldTitle = fieldTitle;
		return this;
	}

	public Integer getNumberFlag(){
		return this.numberFlag;
	}

	public ExtendsTableField setNumberFlag(Integer numberFlag){
		this.numberFlag = numberFlag;
		return this;
	}

	public Integer getShowFlag(){
		return this.showFlag;
	}

	public ExtendsTableField setShowFlag(Integer showFlag){
		this.showFlag = showFlag;
		return this;
	}


 
}
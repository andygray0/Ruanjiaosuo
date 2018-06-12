package com.wine.model;

import java.io.Serializable;

public class CommonTableField implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;

	private String name;

	private String title;

	private String belongTable;

	private String showFlag;

	private String fieldType;

	private Integer fieldLength;

	private String fieldRequired;

	private String fieldUnique;

	private Integer fieldOrder;

	@Override
	public String toString() {
		return "CommonTableField{" +
				"id=" + id +
				", name='" + name + '\'' +
				", title='" + title + '\'' +
				", belongTable='" + belongTable + '\'' +
				", showFlag='" + showFlag + '\'' +
				", fieldType='" + fieldType + '\'' +
				", fieldLength=" + fieldLength +
				", fieldRequired='" + fieldRequired + '\'' +
				", fieldUnique='" + fieldUnique + '\'' +
				", fieldOrder=" + fieldOrder +
				'}';
	}

	public Integer getId(){
		return this.id;
	}

	public CommonTableField setId(Integer id){
		this.id = id;
		return this;
	}

	public String getName(){
		return this.name;
	}

	public CommonTableField setName(String name){
		this.name = name;
		return this;
	}

	public String getTitle(){
		return this.title;
	}

	public CommonTableField setTitle(String title){
		this.title = title;
		return this;
	}

	public String getBelongTable(){
		return this.belongTable;
	}

	public CommonTableField setBelongTable(String belongTable){
		this.belongTable = belongTable;
		return this;
	}

	public String getShowFlag(){
		return this.showFlag;
	}

	public CommonTableField setShowFlag(String showFlag){
		this.showFlag = showFlag;
		return this;
	}

	public String getFieldType(){
		return this.fieldType;
	}

	public CommonTableField setFieldType(String fieldType){
		this.fieldType = fieldType;
		return this;
	}

	public Integer getFieldLength(){
		return this.fieldLength;
	}

	public CommonTableField setFieldLength(Integer fieldLength){
		this.fieldLength = fieldLength;
		return this;
	}

	public String getFieldRequired(){
		return this.fieldRequired;
	}

	public CommonTableField setFieldRequired(String fieldRequired){
		this.fieldRequired = fieldRequired;
		return this;
	}

	public String getFieldUnique(){
		return this.fieldUnique;
	}

	public CommonTableField setFieldUnique(String fieldUnique){
		this.fieldUnique = fieldUnique;
		return this;
	}

	public Integer getFieldOrder(){
		return this.fieldOrder;
	}

	public CommonTableField setFieldOrder(Integer fieldOrder){
		this.fieldOrder = fieldOrder;
		return this;
	}


 
}
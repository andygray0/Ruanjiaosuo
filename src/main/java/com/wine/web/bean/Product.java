package com.wine.web.bean;


public class Product {
	private String title;
	
	private int itemId;
	
	private PageResponse rep;

	public Product() {
		
	}
	public Product(String title, PageResponse rep, int itemId) {
		this.title = title;
		this.rep = rep;
		this.itemId = itemId;
	}
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public PageResponse getRep() {
		return rep;
	}

	public void setRep(PageResponse rep) {
		this.rep = rep;
	}

	
	
}

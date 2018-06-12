package com.wine.web.bean;

import com.wine.constants.Constants;

public class WebCondition {
	private Integer[] id;
	
	private Integer itemId;
	
	private Integer subType;
	
	private String name;
	
	private String title;

	private String lang;
	
	private String subject;
	
	private int state;
	// 当前页
	private int page = 1;

    private String login_name;

    private String 正题名;

    public String getLogin_name() {
        return login_name;
    }

    public void setLogin_name(String login_name) {
        this.login_name = login_name;
    }
    private String email;
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    private String tel;
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }
	// 每页条数
	private int rows = Constants.DEFAULT_ROWS;

	public Integer[] getId() {
		return id;
	}

	public void setId(Integer[] id) {
		this.id = id;
	}

	public Integer getItemId() {
		return itemId;
	}

	public void setItemId(Integer itemId) {
		this.itemId = itemId;
	}

	public Integer getSubType() {
		return subType;
	}

	public void setSubType(Integer subType) {
		this.subType = subType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

//	public String get正题名() {
//		return 正题名;
//	}
//
//	public void set正题名(String 正题名) {
//		this.正题名 = 正题名;
//	}
}

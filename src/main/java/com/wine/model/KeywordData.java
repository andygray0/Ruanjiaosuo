package com.wine.model;

import java.io.Serializable;

public class KeywordData implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;
    private Integer keywordCategoryId;

    private String keyword;

    /**
     *   10个扩展字段
     */
    private String category0;
    private String category1;
    private String category2;
    private String category3;
    private String category4;
    private String category5;
    private String category6;
    private String category7;
    private String category8;
    private String category9;


    public Integer getId() {
        return id;
    }

    public KeywordData setId(Integer id) {
        this.id = id;
        return this;
    }

    public Integer getKeywordCategoryId() {
        return keywordCategoryId;
    }

    public KeywordData setKeywordCategoryId(Integer keywordCategoryId) {
        this.keywordCategoryId = keywordCategoryId;
        return this;
    }

    public String getKeyword() {
        return keyword;
    }

    public KeywordData setKeyword(String keyword) {
        this.keyword = keyword;
        return this;
    }

    public String getCategory0() {
        return category0;
    }

    public KeywordData setCategory0(String category0) {
        this.category0 = category0;
        return this;
    }

    public String getCategory1() {
        return category1;
    }

    public KeywordData setCategory1(String category1) {
        this.category1 = category1;
        return this;
    }

    public String getCategory2() {
        return category2;
    }

    public KeywordData setCategory2(String category2) {
        this.category2 = category2;
        return this;
    }

    public String getCategory3() {
        return category3;
    }

    public KeywordData setCategory3(String category3) {
        this.category3 = category3;
        return this;
    }

    public String getCategory4() {
        return category4;
    }

    public KeywordData setCategory4(String category4) {
        this.category4 = category4;
        return this;
    }

    public String getCategory5() {
        return category5;
    }

    public KeywordData setCategory5(String category5) {
        this.category5 = category5;
        return this;
    }

    public String getCategory6() {
        return category6;
    }

    public KeywordData setCategory6(String category6) {
        this.category6 = category6;
        return this;
    }

    public String getCategory7() {
        return category7;
    }

    public KeywordData setCategory7(String category7) {
        this.category7 = category7;
        return this;
    }

    public String getCategory8() {
        return category8;
    }

    public KeywordData setCategory8(String category8) {
        this.category8 = category8;
        return this;
    }

    public String getCategory9() {
        return category9;
    }

    public KeywordData setCategory9(String category9) {
        this.category9 = category9;
        return this;
    }
}

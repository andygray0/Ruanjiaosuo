package com.wine.dao;

import com.wine.model.KeywordCategory;
import com.wine.service.base.BaseMapper;

public interface KeywordCategoryMapper extends BaseMapper<KeywordCategory> {

    int insertOne(KeywordCategory keywordCategory);

    void updateById(KeywordCategory keywordCategory);

}

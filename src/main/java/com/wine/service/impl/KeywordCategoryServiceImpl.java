package com.wine.service.impl;

import com.wine.dao.KeywordCategoryMapper;
import com.wine.model.KeywordCategory;
import com.wine.service.KeywordCategoryService;
import com.wine.service.base.BaseServiceImpl;
import com.wine.service.base.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class KeywordCategoryServiceImpl extends BaseServiceImpl<KeywordCategory,Dao> implements KeywordCategoryService {

    @Autowired
    private KeywordCategoryMapper mapper;

    @Override
    public void updateById(KeywordCategory keywordCategory) {
        mapper.updateById(keywordCategory);
    }
}

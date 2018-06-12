package com.wine.service;

import com.wine.model.KeywordCategory;
import com.wine.service.base.BaseService;

public interface KeywordCategoryService extends BaseService<KeywordCategory>{

    void updateById(KeywordCategory keywordCategory);

}

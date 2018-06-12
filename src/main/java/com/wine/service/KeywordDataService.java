package com.wine.service;

import com.wine.model.ExtendsTableField;
import com.wine.model.KeywordData;
import com.wine.service.base.BaseService;
import com.wine.web.bean.ParamPage;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

public interface KeywordDataService extends BaseService<KeywordData> {

    int countTotalWithCondtions(KeywordData data);

    List<KeywordData> findByPageWithCondtions(ParamPage<KeywordData> pageInfo, KeywordData data, String extendFields);

    List<ExtendsTableField> findExtendsTableFieldsList(Integer keywordCategoryId);

    void removeExtendFieldsByRelationId(Integer relationId);

    void saveExtendFieldsRelation(List<ExtendsTableField> arr);

    List<ExtendsTableField> findAllExtendsTableFieldsList(Integer keywordCategoryId);

    void deleteByKeywordCategoryId(Integer id);

    void deleteExtendFieldsByKeywordCategoryId(Integer id);

    List<KeywordData> findByCategoryIdWithCondtions(Map<String, Object> paramsMap, KeywordData keywordData);

    Map<String,Object> validateExcelFile(InputStream inputStream, String[] titles, String originalFilename);
}

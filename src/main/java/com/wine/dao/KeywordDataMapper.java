package com.wine.dao;

import com.wine.model.ExtendsTableField;
import com.wine.model.KeywordData;
import com.wine.service.base.BaseMapper;
import com.wine.web.bean.ParamPage;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface KeywordDataMapper extends BaseMapper<KeywordData> {

    int countTotalWithCondtions(@Param("data") KeywordData data);

    List<KeywordData> findByPageWithCondtions(@Param("page") ParamPage<KeywordData> pageInfo, @Param("data") KeywordData data, @Param("extendFields") String extendFields);

    List<ExtendsTableField> findExtendsTableFieldsList(@Param("keywordCategoryId") Integer keywordCategoryId);

    List<ExtendsTableField> findAllExtendsTableFieldsList(@Param("keywordCategoryId") Integer keywordCategoryId);

    void removeExtendFieldsByRelationId(@Param("relationId") Integer relationId);

    void saveExtendFieldsRelation(@Param("arr") List<ExtendsTableField> arr);

    int insertOne(KeywordData data);

    void deleteByKeywordCategoryId(@Param("keywordCategoryId") Integer id);

    void deleteExtendFieldsByKeywordCategoryId(@Param("keywordCategoryId") Integer id);

    List<KeywordData> findByCategoryIdWithCondtions(@Param("paramsMap") Map<String, Object> paramsMap, @Param("data") KeywordData keywordData);

    int insertBatch(@Param("list") ArrayList<KeywordData> list);

}
package com.wine.service.base;

import java.sql.DatabaseMetaData;
import java.util.List;
import java.util.Map;

/**
 *
 * @param <T>   entity

 */
public interface BaseService<T> {

    DatabaseMetaData getMetaData();

    List<T> findAll();

    int insertOne(T t);

    int updateOne(Map<String, Object> map);

    int deleteById(Integer id);

    T getById(Integer id);

    int deleteBatchByIds(String ids);

    List<T> findByPage(Integer limit, Integer page, String sort, String direction);

    int countTotal();

    int updateByOneField(Integer id, String field, String value);

    int findCountByOneField(Integer id, String field, String value);

    int findCountUniqueField(String field, String value);

    T findById(Integer id);

    int insertBatch(List<T> list);

    int insertRecordsOfPartition(List<T> resultList, int batchSize);

}

package com.wine.service.base;

import org.apache.ibatis.annotations.Param;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @param <T>   entity

 */
public interface BaseMapper<T> {

    List<T> findAll();

    int deleteById(@Param("id") Integer id);

    T getById(@Param("id") Integer id);

    int deleteBatchByIds(@Param("ids") String ids);

    List<T> findByPage(@Param("limit") Integer limit, @Param("startNo") Integer startNo, @Param("sort") String sort, @Param("direction") String direction);

    int countTotal();

    int updateByOneField(@Param("id") Integer id, @Param("field") String field, @Param("value") String value);

    int findCountByOneField(@Param("id") Integer id, @Param("field") String field, @Param("value") String value);

    int findCountUniqueField(@Param("field") String field, @Param("value") String value);

    T findById(@Param("id") Integer id);

    Map<String,Object> findToMapListByParams();

}

package com.wine.service.base;

import org.apache.ibatis.session.defaults.DefaultSqlSessionFactory;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.sql.DatabaseMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by acer on 2018/2/11.
 */
public class BaseServiceImpl<T,D> implements BaseService<T>  {

    private DefaultSqlSessionFactory sqlSessionFactory;

    private Object getBaseMapper(){
        try{
            Class <T> entityClass = (Class <T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
            Class <T> daoClass = (Class <T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[1];
            WebApplicationContext wac = ContextLoader.getCurrentWebApplicationContext();
            DaoAnnotation annotation = daoClass.getAnnotation(DaoAnnotation.class);
            sqlSessionFactory = (DefaultSqlSessionFactory) wac.getBean(annotation.ssf());
            Class<?> mapperClass = Class.forName(entityClass.getName().replace("."+ annotation.model() +".", "."+    annotation.dao() +".") + "Mapper");
            Object mapper = sqlSessionFactory.openSession().getMapper(mapperClass);
            return mapper;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public DatabaseMetaData getMetaData() {
        try {
            getBaseMapper();
            return sqlSessionFactory.openSession().getConnection().getMetaData();
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<T> findAll()  {
        Object mapper = getBaseMapper();
        List<T> list = new ArrayList<T>();
        try {
            list = (List<T>) mapper.getClass().getMethod("findAll").invoke(mapper);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int insertOne(T t) {
        Object mapper = getBaseMapper();
        Integer count = 0;
        try {
            count = (Integer) mapper.getClass().getMethod("insertOne",t.getClass()).invoke(mapper,t);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int updateOne(Map<String,Object> map) {
        Object mapper = getBaseMapper();
        Integer count = 0;
        try {
            count = (Integer) mapper.getClass().getMethod("updateOne",map.getClass()).invoke(mapper,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int deleteById(Integer id) {
        Object mapper = getBaseMapper();
        Integer count = 0;
        try {
            count = (Integer) mapper.getClass().getMethod("deleteById",Integer.class).invoke(mapper,id);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public T getById(Integer id) {
        Object mapper = getBaseMapper();
        T t = null;
        try {
            t = (T) mapper.getClass().getMethod("getById",Integer.class).invoke(mapper,id);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return t;
    }

    @Override
    public int deleteBatchByIds(String ids) {
        Object mapper = getBaseMapper();
        Integer count = 0;
        try {
            count = (Integer) mapper.getClass().getMethod("deleteBatchByIds",String.class).invoke(mapper,ids);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public List<T> findByPage(Integer limit, Integer page, String sort, String direction) {
        Object mapper = getBaseMapper();
        Integer startNo = (page - 1) * limit;
        List<T> list = new ArrayList<T>();
        try {
            list = (List<T>) mapper.getClass()
                    .getMethod("findByPage",Integer.class, Integer.class, String.class, String.class)
                    .invoke(mapper,limit, startNo, sort, direction);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int countTotal() {
        Object mapper = getBaseMapper();
        Integer count = 0;
        try {
            count = (Integer) mapper.getClass().getMethod("countTotal").invoke(mapper);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int updateByOneField(Integer id, String field, String value) {
        Object mapper = getBaseMapper();
        Integer count = 0;
        try {
            count = (Integer) mapper.getClass()
                    .getMethod("updateByOneField",id.getClass(), field.getClass(), value.getClass())
                    .invoke(mapper,id, field, value);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int findCountByOneField(Integer id, String field, String value) {
        Object mapper = getBaseMapper();
        Integer count = 0;
        try {
            count = (Integer) mapper.getClass()
                    .getMethod("findCountByOneField",id.getClass(), field.getClass(), value.getClass())
                    .invoke(mapper,id, field, value);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int findCountUniqueField(String field, String value) {
        Object mapper = getBaseMapper();
        Integer count = 0;
        try {
            count = (Integer) mapper.getClass()
                    .getMethod("findCountUniqueField", field.getClass(), value.getClass())
                    .invoke(mapper, field, value);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public T findById(Integer id) {
        Object mapper = getBaseMapper();
        T t = null;
        try {
            t = (T) mapper.getClass()
                    .getMethod("findById",Integer.class)
                    .invoke(mapper,id);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return t;
    }

    @Override
    public int insertBatch(List<T> list) {
        Object mapper = getBaseMapper();
        Integer count = 0;
        try {
            count = (Integer) mapper.getClass()
                    .getMethod("insertBatch", list.getClass())
                    .invoke(mapper, list);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return count;
    }


    @Override
    public int insertRecordsOfPartition(List<T> resultList, int batchSize) {
        int c = 0;
        if(null == resultList || resultList.size() == 0 || resultList.size() < batchSize){
            return 0;
        }  else {
            c = resultList.size();
            int totalTimes = resultList.size() % batchSize == 0 ? resultList.size() / batchSize : resultList.size() / batchSize + 1;
            for(int i = 1; i <= totalTimes; i++){
                List<T> tempList = new ArrayList<T>();
                for(int j = (i - 1) * batchSize; j < i * batchSize; j++){
                    try{
                        tempList.add(resultList.get(j));
                    } catch (IndexOutOfBoundsException e){}
                }
                this.insertBatch(tempList);
            }
        }
        return c;
    }

}

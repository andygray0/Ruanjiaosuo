package com.wine.dao;

import com.wine.model.ReportMenu;
import com.wine.model.Role;
import com.wine.service.base.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface ReportMenuMapper extends BaseMapper<ReportMenu> {

    void deleteRoleMenuRelations(@Param("roleId") Integer roleId, @Param("cancelMenu") String cancelMenu);

    void saveRoleMenuRelations(@Param("roleId") Integer roleId, @Param("menuIds") List<Integer> menuIds);

    List<Role> findRoleByMenuId(@Param("menuId") Integer menuId);

    int deleteRoleMenuRelationsByMenuIds(@Param("ids") String ids);

    int insertOne(ReportMenu t);

    int updateOne(@Param("map") HashMap<String, Object> map);

    int findCountValidAddOrUpdate(@Param("field") String field, @Param("value") String value, @Param("pid") Integer pid, @Param("id") Integer id);

    void insertUrlPrefix(@Param("prefix") String prefix, @Param("name") String name, @Param("menuid")Integer menuid);

    void updateUrlPrefix(@Param("prefix") String prefix, @Param("name") String name, @Param("menuid")Integer menuid);

    List<ReportMenu> findAllReportMenus(@Param("roleId") Integer roleId);

    void deletePrefixRelationsByIds(@Param("ids") String ids);

    void deletePrefixByIds(@Param("ids") String ids);

}
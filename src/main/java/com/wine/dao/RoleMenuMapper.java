package com.wine.dao;

import com.wine.model.Role;
import com.wine.model.RoleMenu;
import com.wine.service.base.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface RoleMenuMapper extends BaseMapper<RoleMenu> {

    void deleteRoleMenuRelations(@Param("roleId") Integer roleId, @Param("cancelMenu") String cancelMenu);

    void saveRoleMenuRelations(@Param("roleId") Integer roleId, @Param("menuIds") List<Integer> menuIds);

    void deleteRoleMenuReportRelations(@Param("roleId") Integer roleId, @Param("cancelMenu") String cancelMenu);

    void saveRoleMenuReportRelations(@Param("roleId") Integer roleId, @Param("menuIds") List<Integer> menuIds);

    List<Role> findRoleByMenuId(@Param("menuId") Integer menuId);

    int deleteRoleMenuRelationsByMenuIds(@Param("ids") String ids);

    int insertOne(RoleMenu t);

    int updateOne(@Param("map") HashMap<String, Object> map);

    int findCountValidAddOrUpdate(@Param("field") String field, @Param("value") String value, @Param("pid") Integer pid, @Param("id") Integer id);
}
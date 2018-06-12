package com.wine.dao;

import com.wine.model.Role;
import com.wine.model.RoleMenu;
import com.wine.model.User;
import com.wine.service.base.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface RoleMapper extends BaseMapper<Role> {

    List<Role> findAll();

    List<Map<String,Object>> findAllUsersWithRole();

    void saveUserRoleRelation(@Param("userId") Integer userId, @Param("roleId") Integer roleId);

    void deleteUserRoleRelation(@Param("userId") Integer userId);

    void updateUserRoleRelation(@Param("userId") Integer userId, @Param("roleId") Integer roleId);

    List<Map<String, Integer>> findMapOfMenuToRoleByRoleId(@Param("roleId") Integer roleId);

    List<Map<String, Integer>> findMapOfMenuToReportRoleByRoleId(@Param("roleId") Integer roleId);

    List<RoleMenu> findRoleMenusByRoleId(@Param("roleId") Integer roleId);

    int insertOne(Role role);

    int deleteUserRoleRelationByRoleIds(@Param("ids") String ids);

    int deleteMenuRoleRelationByRoleIds(@Param("ids") String ids);

    int deleteUserRoleRelationByUserIds(@Param("ids") String ids);

    List<Role> findIdAndValue();

    List<String> findAvailableUrlsByRoleId(@Param("roleId") Integer roleId);

    List<Map<String,Object>> findAllUrlPrefixWithRole(@Param("roleId") Integer roleId);

    int deleteUrlPrefixRoleRelation(@Param("roleId") Integer roleId);

    int saveUrlPrefixRoleRelation(@Param("roleId") Integer roleId, @Param("urlPrefixIds") Integer[] urlPrefixIds);

    int deleteUrlPrefixRelationByRoleIds(@Param("roleIds") String roleIds);

    Role getRoleByUserId(@Param("userId") Integer userId);

    List<String> findUrlPrefixStringWithRole(@Param("roleId") Integer roleId);

    List<User> findUsersByRoleName(@Param("roleName") String roleName);

    List<Map<String,Object>> findAllUrlPrefixWithRoleReport(@Param("roleId") Integer roleId);

    void deleteUrlPrefixRoleRelationReport(@Param("roleId") Integer roleId);

    void saveUrlPrefixRoleRelationReport(@Param("roleId") Integer roleId, @Param("urlPrefixIds") Integer[] urlPrefixIds);

    List<String> findUrlPrefixStringWithRoleReport(@Param("roleId") Integer roleId);
}
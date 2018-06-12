package com.wine.service;

import com.wine.model.Role;
import com.wine.model.RoleMenu;
import com.wine.model.User;
import com.wine.service.base.BaseService;

import java.util.List;
import java.util.Map;

public interface RoleService extends BaseService<Role> {

    List<Map<String,Object>> findAllUsersWithRole();

    void saveUserRoleRelation(Integer userId, Integer roleId);

    void deleteUser(Integer id);

    void deleteUserRoleRelation(Integer userId);

    void updateUserRoleRelation(Integer userId, Integer roleId);

    Map<Integer,Integer> findMapOfMenuToRoleByRoleId(Integer roleId);

    Map<Integer,Integer> findMapOfMenuToReportRoleByRoleId(Integer roleId);

    List<RoleMenu> findRoleMenusByRoleId(Integer roleId);

    int deleteUserRoleRelationByRoleIds(String ids);

    int deleteMenuRoleRelationByRoleIds(String ids);

    int deleteUserRoleRelationByUserIds(String ids);

    List<Role> findIdAndValue();

    List<String> findAvailableUrlsByRoleId(Integer roleId);

    List<Map<String,Object>> findAllUrlPrefixWithRole(Integer roleId);

    int deleteUrlPrefixRoleRelation(Integer roleId);

    int saveUrlPrefixRoleRelation(Integer roleId, Integer[] urlPrefixIds);

    int deleteUrlPrefixRelationByRoleIds(String ids);

    Role getRoleByUserId(Integer userId);

    List<String> findUrlPrefixStringWithRole(Integer roleId);

    List<User> findUsersByRoleName(String roleName);

    List<Map<String,Object>> findAllUrlPrefixWithRoleReport(Integer roleId);

    void deleteUrlPrefixRoleRelationReport(Integer roleId);

    void saveUrlPrefixRoleRelationReport(Integer roleId, Integer[] urlPrefixIds);

    List<String> findUrlPrefixStringWithRoleReport(Integer roleId);
}

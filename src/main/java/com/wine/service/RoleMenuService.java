package com.wine.service;

import com.wine.model.Role;
import com.wine.model.RoleMenu;
import com.wine.service.base.BaseService;

import java.util.List;

public interface RoleMenuService extends BaseService<RoleMenu> {

    void deleteRoleMenuRelations(Integer roleId, String cancelMenu);

    void saveRoleMenuRelations(Integer roleId, String addMenu);

    List<Role> findRoleByMenuId(Integer id);

    int deleteRoleMenuRelationsByMenuIds(String ids);

    int findCountValidAddOrUpdate(String field, String value, Integer pid, Integer id);

    void deleteRoleMenuReportRelations(Integer roleId, String cancelMenu);

    void saveRoleMenuReportRelations(Integer roleId, String addMenu);
}

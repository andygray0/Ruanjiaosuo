package com.wine.service;

import com.wine.model.ReportMenu;
import com.wine.model.Role;
import com.wine.service.base.BaseService;

import java.util.List;

public interface ReportMenuService extends BaseService<ReportMenu> {

    void deleteRoleMenuRelations(Integer roleId, String cancelMenu);

    void saveRoleMenuRelations(Integer roleId, String addMenu);

    List<Role> findRoleByMenuId(Integer id);

    int deleteRoleMenuRelationsByMenuIds(String ids);

    int findCountValidAddOrUpdate(String field, String value, Integer pid, Integer id);

    void insertUrlPrefix(String prefix, String name, Integer menuid);

    void updateUrlPrefix(String prefix, String name, Integer menuid);

    List<ReportMenu> findAllReportMenus(Integer id);

    void deletePrefixRelationsByIds(String ids);

    void deletePrefixByIds(String ids);
}

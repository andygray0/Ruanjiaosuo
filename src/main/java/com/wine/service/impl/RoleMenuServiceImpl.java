package com.wine.service.impl;

import com.wine.dao.RoleMenuMapper;
import com.wine.model.Role;
import com.wine.model.RoleMenu;
import com.wine.service.RoleMenuService;
import com.wine.service.base.BaseServiceImpl;
import com.wine.service.base.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RoleMenuServiceImpl extends BaseServiceImpl<RoleMenu,Dao> implements RoleMenuService {

	@Autowired
	private RoleMenuMapper mapper;


	@Override
	public void deleteRoleMenuRelations(Integer roleId, String cancelMenu) {
		mapper.deleteRoleMenuRelations(roleId, cancelMenu);
	}

	@Override
	public void saveRoleMenuRelations(Integer roleId, String addMenu) {
		List<Integer> menuIds = new ArrayList<Integer>();
		for(String s : addMenu.split(",")){
			menuIds.add(Integer.parseInt(s));
		}
		mapper.saveRoleMenuRelations(roleId, menuIds);
	}

	@Override
	public List<Role> findRoleByMenuId(Integer id) {
		return mapper.findRoleByMenuId(id);
	}

	@Override
	public int deleteRoleMenuRelationsByMenuIds(String ids) {
		return mapper.deleteRoleMenuRelationsByMenuIds(ids);
	}

	@Override
	public int findCountValidAddOrUpdate(String field, String value, Integer pid, Integer id) {
		return mapper.findCountValidAddOrUpdate(field,value,pid,id);
	}

	@Override
	public void deleteRoleMenuReportRelations(Integer roleId, String cancelMenu) {
		mapper.deleteRoleMenuReportRelations(roleId, cancelMenu);
	}

	@Override
	public void saveRoleMenuReportRelations(Integer roleId, String addMenu) {
		List<Integer> menuIds = new ArrayList<Integer>();
		for(String s : addMenu.split(",")){
			menuIds.add(Integer.parseInt(s));
		}
		mapper.saveRoleMenuReportRelations(roleId, menuIds);
	}
}

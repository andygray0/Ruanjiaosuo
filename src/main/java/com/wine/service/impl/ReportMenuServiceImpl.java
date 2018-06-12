package com.wine.service.impl;

import com.wine.dao.ReportMenuMapper;
import com.wine.model.ReportMenu;
import com.wine.model.Role;
import com.wine.service.ReportMenuService;
import com.wine.service.base.BaseServiceImpl;
import com.wine.service.base.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ReportMenuServiceImpl extends BaseServiceImpl<ReportMenu,Dao> implements ReportMenuService {

	@Autowired
	private ReportMenuMapper mapper;


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
	public void insertUrlPrefix(String prefix, String name, Integer menuid) {
		mapper.insertUrlPrefix(prefix, name, menuid);
	}

	@Override
	public void updateUrlPrefix(String prefix, String name, Integer menuid) {
		mapper.updateUrlPrefix(prefix, name, menuid);
	}

	@Override
	public List<ReportMenu> findAllReportMenus(Integer id) {
		return mapper.findAllReportMenus(id);
	}

	@Override
	public void deletePrefixRelationsByIds(String ids) {
		mapper.deletePrefixRelationsByIds(ids);
	}

	@Override
	public void deletePrefixByIds(String ids) {
		mapper.deletePrefixByIds(ids);
	}
}

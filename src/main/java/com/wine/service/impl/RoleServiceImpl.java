package com.wine.service.impl;

import com.wine.dao.RoleMapper;
import com.wine.model.Role;
import com.wine.model.RoleMenu;
import com.wine.model.User;
import com.wine.service.RoleService;
import com.wine.service.base.BaseServiceImpl;
import com.wine.service.base.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RoleServiceImpl extends BaseServiceImpl<Role,Dao> implements RoleService {

	@Autowired
	private RoleMapper mapper;

	@Override
	public List<Role> findAll() {
		return mapper.findAll();
	}

	@Override
	public List<Map<String,Object>> findAllUsersWithRole() {
		return mapper.findAllUsersWithRole();
	}

	@Override
	public void saveUserRoleRelation(Integer userId, Integer roleId) {
		mapper.saveUserRoleRelation(userId, roleId);
	}

	@Override
	public void deleteUser(Integer id) {
		mapper.deleteById(id);
	}

	@Override
	public void deleteUserRoleRelation(Integer userId) {
		mapper.deleteUserRoleRelation(userId);
	}

	@Override
	public void updateUserRoleRelation(Integer userId, Integer roleId) {
		mapper.updateUserRoleRelation(userId,roleId);
	}

	@Override
	public Map<Integer, Integer> findMapOfMenuToRoleByRoleId(Integer roleId) {

		Map<Integer, Integer> menuRoleMap = new HashMap<Integer, Integer>();

		List<Map<String, Integer>> mapList = mapper.findMapOfMenuToRoleByRoleId(roleId);
		for(Map<String, Integer> map : mapList){
			menuRoleMap.put(map.get("menuId"), map.get("roleId"));
		}
		return menuRoleMap;
	}

	@Override
	public Map<Integer, Integer> findMapOfMenuToReportRoleByRoleId(Integer roleId) {
		Map<Integer, Integer> menuRoleMap = new HashMap<Integer, Integer>();

		List<Map<String, Integer>> mapList = mapper.findMapOfMenuToReportRoleByRoleId(roleId);
		for(Map<String, Integer> map : mapList){
			menuRoleMap.put(map.get("menuId"), map.get("roleId"));
		}
		return menuRoleMap;
	}

	@Override
	public List<RoleMenu> findRoleMenusByRoleId(Integer roleId) {
		return mapper.findRoleMenusByRoleId(roleId);
	}

	@Override
	public int deleteUserRoleRelationByRoleIds(String ids) {
		return mapper.deleteUserRoleRelationByRoleIds(ids);
	}

	@Override
	public int deleteMenuRoleRelationByRoleIds(String ids) {
		return mapper.deleteMenuRoleRelationByRoleIds(ids);
	}

	@Override
	public int deleteUserRoleRelationByUserIds(String ids) {
		return mapper.deleteUserRoleRelationByUserIds(ids);
	}

	@Override
	public List<Role> findIdAndValue() {
		return mapper.findIdAndValue();
	}

	@Override
	public List<String> findAvailableUrlsByRoleId(Integer roleId) {
		return mapper.findAvailableUrlsByRoleId(roleId);
	}

	@Override
	public List<Map<String, Object>> findAllUrlPrefixWithRole(Integer roleId) {
		return mapper.findAllUrlPrefixWithRole(roleId);
	}

	@Override
	public int deleteUrlPrefixRoleRelation(Integer roleId) {
		return mapper.deleteUrlPrefixRoleRelation(roleId);
	}

	@Override
	public int saveUrlPrefixRoleRelation(Integer roleId, Integer[] urlPrefixIds) {
		return mapper.saveUrlPrefixRoleRelation(roleId, urlPrefixIds);
	}

	@Override
	public int deleteUrlPrefixRelationByRoleIds(String ids) {
		return mapper.deleteUrlPrefixRelationByRoleIds(ids);
	}

	@Override
	public Role getRoleByUserId(Integer userId) {
		return mapper.getRoleByUserId(userId);
	}

	@Override
	public List<String> findUrlPrefixStringWithRole(Integer roleId) {
		return mapper.findUrlPrefixStringWithRole(roleId);
	}

	@Override
	public List<User> findUsersByRoleName(String roleName) {
		return mapper.findUsersByRoleName(roleName);
	}

	@Override
	public List<Map<String, Object>> findAllUrlPrefixWithRoleReport(Integer roleId) {
		return mapper.findAllUrlPrefixWithRoleReport(roleId);
	}

	@Override
	public void deleteUrlPrefixRoleRelationReport(Integer roleId) {
		mapper.deleteUrlPrefixRoleRelationReport(roleId);
	}

	@Override
	public void saveUrlPrefixRoleRelationReport(Integer roleId, Integer[] urlPrefixIds) {
		mapper.saveUrlPrefixRoleRelationReport(roleId, urlPrefixIds);
	}

	@Override
	public List<String> findUrlPrefixStringWithRoleReport(Integer roleId) {
		return mapper.findUrlPrefixStringWithRoleReport(roleId);
	}
}

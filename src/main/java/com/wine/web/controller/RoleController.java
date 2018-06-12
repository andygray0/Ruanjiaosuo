package com.wine.web.controller;

import com.wine.constants.Constants;
import com.wine.model.Role;
import com.wine.model.RoleMenu;
import com.wine.service.RoleMenuService;
import com.wine.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/role")
@OperateLogClassLevelAnnotation(module = "角色管理")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private RoleMenuService menuService;

    @RequestMapping("/toIndex")
    public String toIndex() {
        return "role22/role";
    }

    @RequestMapping("/getByPage")
    @ResponseBody
    public Map<String, Object> getByPage(Integer limit, Integer page) {
        Map<String, Object> map = new HashMap<String, Object>();

        List<Role> roleList = roleService.findByPage(limit, page, "id", "ASC");

        int total = roleService.countTotal();

        map.put("rows", roleList);
        map.put("total", total);
        return map;
    }

    @RequestMapping("/insertOne")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "插入一条记录")
    public String insertOne(Role role) {
        roleService.insertOne(role);
        return "ok";
    }

    @RequestMapping("/deleteRoles")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "删除选中的角色")
    public String deleteRoles(String ids) {
        roleService.deleteUserRoleRelationByRoleIds(ids);
        roleService.deleteMenuRoleRelationByRoleIds(ids);
        roleService.deleteUrlPrefixRelationByRoleIds(ids);
        roleService.deleteBatchByIds(ids);
        return "ok";
    }

    @RequestMapping("/updateByOneField")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "只修改一个角色的一个字段的值")
    public String updateByOneField(Integer id, String field, String value) {
        if ("roleLevel".equals(field)) {
            field = "role_level";
        }
        roleService.updateByOneField(id, field, value);
        return "ok";
    }

    @RequestMapping("/findCountByOneField")
    @ResponseBody
    public Integer findCountByOneField(Integer id, String field, String value) {
        if ("roleLevel".equals(field)) {
            field = "role_level";
        }
        int count = roleService.findCountByOneField(id, field, value);
        return count;
    }

    @RequestMapping("/validUniqueField")
    @ResponseBody
    public Map<String, Object> validUniqueField(String field, String value) {
        if ("roleLevel".equals(field)) {
            field = "role_level";
        }
        int count = roleService.findCountUniqueField(field, value);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("valid", count == 0);
        return map;
    }


    @RequestMapping("/saveRoleMenuDatas")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "给角色分配菜单")
    public Integer saveRoleMenuDatas(String addMenu, String cancelMenu, Integer roleId) {

        if (!"".equals(cancelMenu)) { // 取消的菜单
            menuService.deleteRoleMenuRelations(roleId, cancelMenu);
        }

        if (!"".equals(addMenu)) { // 授权的菜单
            menuService.saveRoleMenuRelations(roleId, addMenu);
        }

        return 1;
    }


    @RequestMapping("/saveRoleMenuReportDatas")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "给角色分配报表菜单")
    public Integer saveRoleMenuReportDatas(String addMenu, String cancelMenu, Integer roleId) {

        if (!"".equals(cancelMenu)) { // 取消的菜单
            menuService.deleteRoleMenuReportRelations(roleId, cancelMenu);
        }

        if (!"".equals(addMenu)) { // 授权的菜单
            menuService.saveRoleMenuReportRelations(roleId, addMenu);
        }

        return 1;
    }

    @RequestMapping("/findIdAndValue")
    @ResponseBody
    public List<Role> findIdAndValue() {
        return roleService.findIdAndValue();
    }

    @RequestMapping("/updateUserRoleRelation")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "修改用户角色")
    public String updateUserRoleRelation(Integer userId, Integer roleId) {
        roleService.deleteUserRoleRelation(userId);
        if (null != roleId) {
            roleService.saveUserRoleRelation(userId, roleId);
        }
        return "ok";
    }

    @RequestMapping("/findRoleMenuShow.do")
    public String roleMenuShow(Integer roleId, String roleName, Model model) {

        List<RoleMenu> menuList = roleService.findRoleMenusByRoleId(roleId);

        List<RoleMenu> menuListLevel1 = new ArrayList<RoleMenu>();
        List<RoleMenu> menuListLevel2 = new ArrayList<RoleMenu>();

        for (RoleMenu menu : menuList) {
            Integer level = menu.getMenuLevel();
            if (level == 1) {
                menuListLevel1.add(menu);
            } else {
                menuListLevel2.add(menu);
            }
        }

        model.addAttribute("menuListLevel1", menuListLevel1);
        model.addAttribute("menuListLevel2", menuListLevel2);
        return "role22/role_menu_show";
    }

    @RequestMapping("/roleMenuShow.do")
    public String roleMenuShow1(Integer roleId, String roleName, Model model) {
        model.addAttribute("roleId", roleId);
        model.addAttribute("roleName", roleName);

        List<RoleMenu> menuList = roleService.findRoleMenusByRoleId(roleId);

        List<RoleMenu> menuListLevel1 = new ArrayList<RoleMenu>();
        List<RoleMenu> menuListLevel2 = new ArrayList<RoleMenu>();

        for (RoleMenu menu : menuList) {
            Integer level = menu.getMenuLevel();
            if (level == 1) {
                menuListLevel1.add(menu);
            } else {
                menuListLevel2.add(menu);
            }
        }

        model.addAttribute("menuListLevel1", menuListLevel1);
        model.addAttribute("menuListLevel2", menuListLevel2);

        return "home/index";
    }

    @RequestMapping("/findAllUrlPrefixWithRole")
    @ResponseBody
    public List<Map<String, Object>> findAllUrlPrefixWithRole(Integer roleId) {
        List<Map<String, Object>> mapList = roleService.findAllUrlPrefixWithRole(roleId);
        return mapList;
    }

    @RequestMapping("/findAllUrlPrefixWithRoleReport")
    @ResponseBody
    public List<Map<String, Object>> findAllUrlPrefixWithRoleReport(Integer roleId) {
        List<Map<String, Object>> mapList = roleService.findAllUrlPrefixWithRoleReport(roleId);
        return mapList;
    }

    @RequestMapping("/saveUrlPrefixRoleRelation")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "给角色设置URL前缀")
    public List<Map<String, Object>> saveUrlPrefixRoleRelation(HttpServletRequest request, Integer roleId, @RequestParam(value = "urlPrefixIds[]", required = false) Integer[] urlPrefixIds) {
        // 删除该角色下的所有的关系
        roleService.deleteUrlPrefixRoleRelation(roleId);

        if (null != urlPrefixIds) { // 更新权限
            roleService.saveUrlPrefixRoleRelation(roleId, urlPrefixIds);
        }

        Role role = (Role) request.getSession().getAttribute(Constants.CURRENT_ROLE);

        if (null != role && roleId == role.getId()) {
            List<String> urlPrefixList = roleService.findUrlPrefixStringWithRole(roleId);
            List<String> list2 = roleService.findUrlPrefixStringWithRoleReport(roleId);
            urlPrefixList.addAll(list2);
            request.getSession().setAttribute(Constants.CURRENT_ROLE_URL_PREFIX_LIST, urlPrefixList);
        }

        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        return mapList;
    }


    @RequestMapping("/saveUrlPrefixRoleRelationReport")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "给角色设置URL前缀,报表菜单")
    public List<Map<String, Object>> saveUrlPrefixRoleRelationReport(HttpServletRequest request, Integer roleId, @RequestParam(value = "urlPrefixIds[]", required = false) Integer[] urlPrefixIds) {
        // 删除该角色下的所有的关系
        roleService.deleteUrlPrefixRoleRelationReport(roleId);

        if (null != urlPrefixIds) { // 更新权限
            roleService.saveUrlPrefixRoleRelationReport(roleId, urlPrefixIds);
        }

        Role role = (Role) request.getSession().getAttribute(Constants.CURRENT_ROLE);

        if (null != role && roleId == role.getId()) {
            List<String> urlPrefixList = roleService.findUrlPrefixStringWithRoleReport(roleId);
            List<String> list2 = roleService.findUrlPrefixStringWithRole(roleId);
            urlPrefixList.addAll(list2);

            request.getSession().setAttribute(Constants.CURRENT_ROLE_URL_PREFIX_LIST, urlPrefixList);
        }

        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        return mapList;
    }


}

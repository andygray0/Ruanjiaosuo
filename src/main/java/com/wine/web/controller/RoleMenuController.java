package com.wine.web.controller;

import com.wine.model.Role;
import com.wine.model.RoleMenu;
import com.wine.service.RoleMenuService;
import com.wine.service.RoleService;
import com.wine.utils.BeanKit;
import com.wine.utils.StringKit;
import org.apache.xpath.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by acer on 2018/2/11.
 */
@Controller
@RequestMapping("/menu")
@OperateLogClassLevelAnnotation(module = "菜单管理")
public class RoleMenuController {

    @Autowired
    private RoleMenuService menuService;

    @Autowired
    private RoleService roleService;

    @RequestMapping("/toIndex")
    public String toIndex(){
        return "role22/menu";
    }

    @RequestMapping("/findAllMenus")
    @ResponseBody
    public List<RoleMenu> findAllMenus(Integer roleId){

        Map<Integer,Integer> menuRoleMap = roleService.findMapOfMenuToRoleByRoleId(roleId);

        System.out.println(menuRoleMap.get(20));

        List<RoleMenu> menuList = menuService.findAll();
        for(RoleMenu menu : menuList){
            menu.setChecked(null != menuRoleMap.get(menu.getId()));
        }

        return menuList;
    }

    @RequestMapping("/getMenuById.do")
    public String getMenuById(Integer id, Model model){

        RoleMenu menu = menuService.getById(id);
        model.addAttribute("menu", menu);

        List<Role> roleList = menuService.findRoleByMenuId(id);
        model.addAttribute("roleList", roleList);

        return "role22/menu_by_id";
    }

    @RequestMapping("/saveMenu")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "新增一个菜单")
    public RoleMenu saveMenu(RoleMenu menu){
        menu.setLeaf(menu.getMenuLevel() == 2);
        menuService.insertOne(menu);

        return menu;
    }


    @RequestMapping("/updateMenu")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "修改一个菜单")
    public String updateMenu(RoleMenu menu){
        String[] tableFields = {"id", "name", "url","order"};
        Map<String, Object> fieldsMap = BeanKit.getMapFromBeanProperties(menu, tableFields);
        menuService.updateOne(fieldsMap);
        return "ok";
    }

    @RequestMapping("/deleteMenu")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "删除菜单")
    public String deleteMenu(String ids){
        menuService.deleteRoleMenuRelationsByMenuIds(ids);
        menuService.deleteBatchByIds(ids);
        return "ok";
    }

    @RequestMapping("/validUniqueFieldComplex")
    @ResponseBody
    public Map<String, Object> validUniqueFieldComplex(String field, String value, Integer pid, Integer id, String operate){
        Map<String, Object> map = new HashMap<String, Object>();
        Integer count = 0;
        count = menuService.findCountValidAddOrUpdate(field, value, pid, id);
        map.put("valid", count == 0);
        return map;
    }

    @RequestMapping("/addOrUpdateMenuForm")
    public String addOrUpdateMenuForm(Model model, Integer pid, Integer menuId){
        RoleMenu menu = new RoleMenu();
        if(menuId == null) { // add
            RoleMenu parentMenu = menuService.findById(pid);
            menu.setPid(pid);
            menu.setMenuLevel(parentMenu.getMenuLevel() + 1);
        } else{ // update
            menu = menuService.findById(menuId);
        }
        model.addAttribute("menu", menu);
        return "role22/addOrUpdateMenuForm";
    }




}

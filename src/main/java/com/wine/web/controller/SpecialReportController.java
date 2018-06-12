package com.wine.web.controller;

import com.wine.model.ReportMenu;
import com.wine.model.Role;
import com.wine.service.ReportMenuService;
import com.wine.service.RoleService;
import com.wine.utils.BeanKit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/reportMenu")
public class SpecialReportController {

    @Autowired
    private ReportMenuService reportMenuService;

    @Autowired
    private RoleService roleService;

    @RequestMapping("/toIndex")
    public String reportMenuIndex(){
        return "reportMenu/index";
    }

    @RequestMapping("/findAllMenus")
    @ResponseBody
    public List<ReportMenu> findAllMenus(Integer roleId){

        Map<Integer,Integer> menuRoleMap = roleService.findMapOfMenuToReportRoleByRoleId(roleId);

        System.out.println(menuRoleMap.get(20));

        List<ReportMenu> menuList = reportMenuService.findAll();
        for(ReportMenu menu : menuList){
            menu.setChecked(null != menuRoleMap.get(menu.getId()));
        }

        return menuList;
    }


    @RequestMapping("/getMenuById.do")
    public String getMenuById(Integer id, Model model){

        ReportMenu menu = reportMenuService.getById(id);
        model.addAttribute("menu", menu);

        List<Role> roleList = reportMenuService.findRoleByMenuId(id);
        model.addAttribute("roleList", roleList);

        return "reportMenu/detail";
    }

    @RequestMapping("/saveMenu")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "新增一个菜单")
    public ReportMenu saveMenu(ReportMenu menu){
        menu.setLeaf(menu.getMenuLevel() == 2);
        reportMenuService.insertOne(menu);

        if(!"/".equals(menu.getUrl()) && menu.getUrl().trim().indexOf("/", 1) > -1 && menu.getUrl().trim().endsWith(".frm")  && menu.getUrl().trim().startsWith("/")){
            String url = menu.getUrl().trim();
            int index = url.indexOf("/", 1);
            String prefix = url.substring(1, index);
            reportMenuService.insertUrlPrefix("yearSeason_" + prefix, menu.getName(), menu.getId());
        }

        return menu;
    }


    @RequestMapping("/updateMenu")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "修改一个菜单")
    public String updateMenu(ReportMenu menu){
        String[] tableFields = {"id", "name", "url","order"};
        Map<String, Object> fieldsMap = BeanKit.getMapFromBeanProperties(menu, tableFields);
        reportMenuService.updateOne(fieldsMap);

        if(!"/".equals(menu.getUrl()) && menu.getUrl().trim().indexOf("/", 1) > -1 && menu.getUrl().trim().endsWith(".frm") && menu.getUrl().trim().startsWith("/")){
            String url = menu.getUrl().trim();
            int index = url.indexOf("/", 1);
            String prefix = url.substring(1, index);
            reportMenuService.updateUrlPrefix("yearSeason_" + prefix, menu.getName(), menu.getId());
        }

        return "ok";
    }

    @RequestMapping("/deleteMenu")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "删除菜单")
    public String deleteMenu(String ids){
        reportMenuService.deleteRoleMenuRelationsByMenuIds(ids);
        reportMenuService.deleteBatchByIds(ids);

        // 删除前缀
        reportMenuService.deletePrefixRelationsByIds(ids);
        reportMenuService.deletePrefixByIds(ids);
        return "ok";
    }

    @RequestMapping("/validUniqueFieldComplex")
    @ResponseBody
    public Map<String, Object> validUniqueFieldComplex(String field, String value, Integer pid, Integer id, String operate){
        Map<String, Object> map = new HashMap<String, Object>();
        Integer count = 0;
        count = reportMenuService.findCountValidAddOrUpdate(field, value, pid, id);
        map.put("valid", count == 0);
        return map;
    }

    @RequestMapping("/addOrUpdateMenuForm")
    public String addOrUpdateMenuForm(Model model, Integer pid, Integer menuId){
        ReportMenu menu = new ReportMenu();
        if(menuId == null) { // add
            ReportMenu parentMenu = reportMenuService.findById(pid);
            menu.setPid(pid);
            menu.setMenuLevel(parentMenu.getMenuLevel() + 1);
        } else{ // update
            menu = reportMenuService.findById(menuId);
        }
        model.addAttribute("menu", menu);
        return "reportMenu/form";
    }



}

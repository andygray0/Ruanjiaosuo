package com.wine.web.controller;

import com.wine.constants.Constants;
import com.wine.model.ReportMenu;
import com.wine.model.Role;
import com.wine.model.RoleMenu;
import com.wine.service.ReportMenuService;
import com.wine.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class JspController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private ReportMenuService reportMenuService;

    /**
     * 登陆页面
     */
    @RequestMapping("/")
    public String toJsp(){
        return "redirect:/login.jsp";
    }

    /**
     * 首页
     */
    @RequestMapping("/admin/toHome")
    public String toAdminHome(HttpSession session, Model model){
        Role role = (Role) session.getAttribute(Constants.CURRENT_ROLE);
        List<RoleMenu> menuList = roleService.findRoleMenusByRoleId(role.getId());

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

    /**
     * 数据管理
     */

    @RequestMapping("/modify/index.do")
    public String datamanageuploadModify(){
        return "modify";
    }

    @RequestMapping("/datamanage/manage.do")
    public String datamanageManage(){
        return "datamanage";
    }


    /**
     * 首页
     */
    @RequestMapping("/admin/indexT.do")
    public String toIndexT(){
        return "home/index_content";
    }

    @RequestMapping("/dataMonitor/report.do")
    public String datamanageMonitor(){
        return "forward:/ReportServer?formlet=rjs_Report%2FdataMonit%2FEnterData.frm";
    }

    /**
     * 清洗规则管理
     */
    @RequestMapping("/datawash/toIndex.do")
    public String datawashToIndex(){
        return "wash";
    }


    @RequestMapping("/washlog/index.do")
    public String datawashLog(){
        return "washlog";
    }

    @RequestMapping("/washtimer/newTimer.do")
    public String newTimer(){
        return "newTimer";
    }
    @RequestMapping("/washtimer/index.do")
    public String washtimer(){
        return "timedTasks";
    }

    /**
     * 清洗规则管理
     */
    @RequestMapping("/datawashRule/toIndex.do")
    public String datawashRuleToIndex(){
        return "rule";
    }

    @RequestMapping("/datawashRule/strategy.do")
    public String datawashStrategy(){
        return "Strategy";
    }




    @RequestMapping("/darhPicture/toIndex.do")
    public String darhPicture(Model model, HttpServletRequest request){
        Role role = (Role) request.getSession().getAttribute(Constants.CURRENT_ROLE);
        List<ReportMenu> reportMenuList = reportMenuService.findAllReportMenus(role.getId());
        model.addAttribute("reportMenuList", reportMenuList);
//        return "reportMenu/main";
        return "rpt_nav";
    }


    @RequestMapping("/yearSeason_{url}/load.do")
    public String test22(@PathVariable("url")  String url, String frm){
        String frm2 = frm.replaceAll("/", "%2F");
        return "redirect:/ReportServer?formlet=" + frm2;
    }

}

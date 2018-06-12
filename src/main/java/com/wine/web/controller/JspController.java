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
    @RequestMapping("/datamanage/toIndex.do")
    public String datamanageToIndex(){
        return "manage";
    }
    @RequestMapping("/datamanage/modify.do")
    public String datamanageuploadModify(){
        return "modify";
    }
    @RequestMapping("/datamanage/upload.do")
    public String datamanageUpload(){
        return "upload";
    }
    @RequestMapping("/datamanage/manage.do")
    public String datamanageManage(){
        return "datamanage";
    }
    /**
     * 数据监控
     */
    @RequestMapping("/datamanageMonitor/report.do")
    public String datamanageMonitorReport(){
        return "redirect:/ReportServer?formlet=rjs_Report%2FData%20monitoring.frm";
    }

    /**
     * 首页
     */
    @RequestMapping("/admin/indexT.do")
    public String toIndexT(){
        return "home/index_content";
    }

    /**
     * 监控规则管理
     */
    @RequestMapping("/datamanageRule/toIndex.do")
    public String datamanageRuleToIndex(){
        return "home/index";
    }
    /**
     * 数据监控
     */
    @RequestMapping("/datamanage/monitor.do")
    public String datamanageMonitor(){
        return "redirect:/ReportServer?formlet=rjs_Report%2FData%20monitoring.frm";
    }

    /**
     * 清洗规则管理
     */
    @RequestMapping("/datawash/toIndex.do")
    public String datawashToIndex(){
        return "wash";
    }

    @RequestMapping("/datawash/result.do")
    public String datawashResult(){
        return "result";
    }
    @RequestMapping("/datawash/washlog.do")
    public String datawashLog(){
        return "washlog";
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


    /**
     * 人工清洗
     */
    @RequestMapping("/personwash/toIndex.do")
    public String personwashToIndex(){
        return "editable";
    }

    /**
     * 待查数据分配
     */
    @RequestMapping("/personwashWaitDataAllot/toIndex.do")
    public String personwashWaitDataAllottoIndex(){
        return "toclean";
    }

    /**
     * 2017年四季度行业运行数据分析报告
     */
    @RequestMapping("/analyzereport2017Fourth/report.do")
    public String analyzereport2017FourthReport(){
        return "redirect:/ReportServer?formlet=rjs_Report%2F2017+Season+4%2Findex.frm";
    }

    /**
     * 2017年三季度行业运行数据分析报告
     */
    @RequestMapping("/analyzereport2017Third/report.do")
    public String analyzereport2017ThirdReport(){
        return "redirect:/ReportServer?formlet=rjs_Report%2F2017+Season+3%2Findex.frm";
    }
    /**
     * 2017年二季度行业运行数据分析报告
     */
    @RequestMapping("/analyzereport2017Second/report.do")
    public String analyzereport2017SecondReport(){
        return "redirect:/ReportServer?formlet=rjs_Report%2F2017+Season+2%2Findex.frm";
    }
    /**
     * 2017年一季度行业运行数据分析报告
     */
    @RequestMapping("/analyzereport2017First/report.do")
    public String analyzereport2017FirstReport(){
        return "redirect:/ReportServer?formlet=rjs_Report%2F2017+Season+1%2Findex.frm";
    }
    /**
     * 2017年度行业运行数据分析报告
     */
    @RequestMapping("/analyzereport2017/report.do")
    public String analyzereport2017Report(){
        return "redirect:/ReportServer?formlet=rjs_Report%2F2017%2Findex.frm";
    }
    @RequestMapping("/report/nav.do")
    public String reportNav(){
        return "rpt_nav";
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

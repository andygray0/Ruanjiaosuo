package com.wine.web.interceptor;

import com.wine.constants.Constants;
import com.wine.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.List;

public class AccessUrlInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    private RoleService roleService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        String path = request.getContextPath();

        // 忽略的地址
        List<String> ignoreUrlList = Arrays.asList(
                path + "/admin/login.do",
                path + "/modify/urlconlist.do",
                path + "/admin/logout.do",
                path + "/noAuthority/getValidCode.do",
                path + "/datamanage/getFieldList.do",
                path + "/datamanage/getFieldList1.do",
                path + "/datawash/washAndApprove.do",
                path + "/datamanage/getColumns.do",
                path + "/datamanage/getColumn.do",
                path + "/datamanage/getWashColumn.do",
                path + "/uploadFile.do" ,
                path + "/datawashRule/ruleslist.do",
                path + "/datawashRule/rulelist.do",
                path + "/datawash/getFromTables.do",
                path + "/datawash/getToTables.do",
                path + "/datawash/getUrlconByQuery.do"


        );


        Object loginName = request.getSession().getAttribute(Constants.CURRENT_USER);
        String requestURI = path + request.getRequestURI();
        if(ignoreUrlList.contains(requestURI)){
            return true;
        } else {
            if(loginName == null){
                response.sendRedirect(path + "/login.jsp");
                return false;
            }
        }

        String current = requestURI.replace(path,"").substring(1, requestURI.indexOf("/", 1));
        List<String> urlPrefixList = (List<String>) request.getSession().getAttribute(Constants.CURRENT_ROLE_URL_PREFIX_LIST);

        if(null == urlPrefixList || urlPrefixList.size() == 0 || !urlPrefixList.contains(current)){
//            request.getRequestDispatcher(path + "/403.jsp").forward(request, response);
            response.sendRedirect(path + "/403.jsp");
            return false;
        }
        return true;
    }
}

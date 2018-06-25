package com.wine.web.controller;

import com.wine.constants.Constants;
import com.wine.exception.BaseException;
import com.wine.exception.BizException;
import com.wine.model.LoginLog;
import com.wine.model.Role;
import com.wine.model.User;
import com.wine.service.LoginLogService;
import com.wine.service.LoginService;
import com.wine.service.RoleService;
import com.wine.utils.WebUtil;
import com.wine.web.bean.PageResponse;
import com.wine.web.bean.WebCondition;
import com.wine.web.form.LoginForm;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class LoginController extends BaseController {
	private final Logger log = Logger.getLogger(LoginController.class); 
	
	@Autowired
	private LoginService loginService;

	@Autowired
	private LoginLogService loginLogService;

	@Autowired
	private RoleService roleService;
	
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	@RequestMapping(value = "/index.html")
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response, LoginForm command) {
		String username = command.getUsername();
		ModelAndView mv = new ModelAndView("index", "command", "LOGIN SUCCESS, " + username);
		return mv;
	}
	@RequestMapping("portalsLogin")
	public String portalsLogin(HttpServletRequest request, HttpServletResponse response,String username,String password) {
		PrintWriter out = null;
		try {
			String rand = (String) request.getSession().getAttribute("_rand_$^&");
			request.getSession().removeAttribute("_rand_$^&");
			out = response.getWriter();
			if (username == null || username.trim().length() <= 0) {
				out.print(1);
				return null;
			}
			if (password == null || password.trim().length() <= 0) {
				out.print(1);
				return null;
			}
/*      if (rand == null || validateNumber == null || validateNumber.trim().length() <= 0 || !rand.equalsIgnoreCase(validateNumber)) {
        out.print(3);
        return null;
      }*/
//            IdentityFactory factory = IdentityFactory.createFactory(Path.getWebsitePath() + "\\WEB-INF\\classes\\client.properties");
//            IdentityManager im = factory.getIdentityManager();
//            boolean result = im.checkPassword(account, password);
//            if (result == false) {System.out.println(account + password);
//                out.print(1);
//                return null;
//            }
//
//            int userType = 1;
//            List<String> list = im.getUserGroup(account);//获得用户的身份可以得到Student和Teacher
//            if (list != null && list.size() > 0) {
//                if (Format.toString(list.toString()).indexOf("Teacher") < 0) userType = 2;
//            }
//            else {
//                out.print(1);
//                return null;
//            }
//            //将登陆成功的用户写入图书馆自己的用户库
//            LibUser libUser= new LibUser();
//            libUser.setUseraccount(account);
//            List list2= libUserService.findAll(libUser);
//            if(list2.size()==0){
//                libUser.setUsertype(String.valueOf(userType));
//                libUser.setCanborrow(10);
//                libUserService.add(libUser);
//            }else{
//                libUser=(LibUser) list2.get(0);
//            }

			User libUser= new User();
			request.getSession().setAttribute("usersession", libUser);
			out.print(2);
			return null;
		}
		catch (Exception e) {
			e.printStackTrace();
			out.print(0);
			return null;
		}
		finally {
			if (out != null) out.close();
		}
	}
	@RequestMapping(value = "/login.do")
	@ResponseBody
	public String login(HttpServletRequest request, HttpServletResponse response, LoginForm command) {
		PrintWriter out = null;
		User user = null;
		try {
			out = response.getWriter();
			try {

				String formCode = command.getValidcode().toUpperCase();
				String validCode = (String)request.getSession().getAttribute(Constants.CURRENT_VALID_CODE);
				if(!formCode.equals(validCode)){
					log.error("验证码错误！");
					out.print(3);
					throw new BizException("error.login");
				}

				String ip = getIpAddr(request);
				user = loginService.doLogin(command, ip);

				if (user == null) {
					log.error("user is null.");
					out.print(1);
					throw new BizException("error.login");
				}else {
					request.getSession().setAttribute("usersession", user.getLoginName());
					request.getSession().setAttribute(Constants.CURRENT_USER, user.getLoginName());
					request.getSession().setAttribute(Constants.CURRENT_USER_OBJECT, user);
//					response.sendRedirect("/index.jsp");
					WebUtil.setUser(user);
					out.print(2);

					// 记录登陆日志
					LoginLog loginLog = new LoginLog();
					loginLog.setIp(ip)
							.setUserName(user.getLoginName())
							.setLoginTime(new Date())
							.setLogoutTime(null);
					loginLogService.insertOne(loginLog);

					// 将角色放置到session中
					Role role = roleService.getRoleByUserId(user.getId());
					request.getSession().setAttribute(Constants.CURRENT_ROLE, role);

					// 将角色对应的url前缀放置到session中
					List<String> urlPrefixList = new ArrayList<String>();
					List<String> list2 = new ArrayList<String>();
					if(role != null){
						urlPrefixList = roleService.findUrlPrefixStringWithRole(role.getId());
						list2 = roleService.findUrlPrefixStringWithRoleReport(role.getId());
						urlPrefixList.addAll(list2);
					}
					request.getSession().setAttribute(Constants.CURRENT_ROLE_URL_PREFIX_LIST, urlPrefixList);
					return null;
				}
			} catch (BaseException e) {
				log.error(e.getMessage());
				out.print(0);
				throw new BizException("error.login");
			} catch (Exception e) {
				log.error(e.getMessage());
				out.print(0);
				throw new Exception("error.login");
			}

		} catch (Exception e) {
			e.printStackTrace();
			out.print(0);
			return null;
		}
		//String ip = request.getRemoteAddr();
		}



    public static String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        if (ip.equals("0:0:0:0:0:0:0:1")) {
            ip = "本地";
        }
        if (ip.split(",").length > 1) {
            ip = ip.split(",")[0];
        }
        return ip;
    }


	public String getMACAddress(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {
			ip = request.getRemoteAddr();
		}
		String str = "";
		String macAddress = "";
		try {
			Process p = Runtime.getRuntime().exec("nbtstat -A " + ip);
			InputStreamReader ir = new InputStreamReader(p.getInputStream());
			LineNumberReader input = new LineNumberReader(ir);
			for (int i = 1; i < 100; i++) {
				str = input.readLine();
				if (str != null) {
					if (str.indexOf("MAC Address") > 1) {
						macAddress = str.substring(
								str.indexOf("MAC Address") + 14, str.length());
						break;
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace(System.out);
		}
		return macAddress;
	}

	@RequestMapping("/logout.do")
	@ResponseBody
	public void  logout(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.getSession().removeAttribute(Constants.CURRENT_USER);
        String userName = request.getParameter("loginName");
        String ip =getIpAddr(request);
        loginService.logout(userName,ip);

		LoginLog loginLog = new LoginLog();
		loginLog.setIp(ip)
				.setUserName(userName)
				.setLoginTime(null)
				.setLogoutTime(new Date());

		loginLogService.insertOne(loginLog);

        request.getSession().removeAttribute("usersession");
	}
    @RequestMapping(value = "/loginlist.do")
    @ResponseBody
    public PageResponse loginlist(HttpServletRequest request, HttpServletResponse response, WebCondition condition) {
        return loginService.loginlist(condition);
    }
	   
}

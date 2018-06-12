package com.wine.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import com.wine.model.*;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.wine.web.bean.TreeNode;

public class WebUtil {
	private final static Logger log = Logger.getLogger(WebUtil.class); 
	
	private static User user = null;
    private static Member member = null;
	
	public static String encrypt(String inStr) {
		MessageDigest md = null;
		String out = null;

		try {
			md = MessageDigest.getInstance("MD5");
			byte[] digest = md.digest(inStr.getBytes());
			out = byte2hex(digest);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return out;
	}

	private static String byte2hex(byte[] b) {
		String hs = "";
		String stmp = "";
		for (int n = 0; n < b.length; n++) {
			stmp = Integer.toHexString(b[n] & 0XFF);
			if (stmp.length() == 1) {
				hs = hs + "0" + stmp;
			} else {
				hs = hs + stmp;
			}
		}
		return hs.toUpperCase();
	}

	private static List<TreeNode> getTreeMenu(List<Menu> menuList) {
		return getRootMenus(menuList);
	}
	
	public static List<TreeNode> getRootMenus(List<Menu> menuList) {
		List<TreeNode> rootList = new ArrayList<TreeNode>();
		for(Menu menu : menuList) {
			Integer menuId = menu.getId();
			if(menu.getParentId() == 0 || menu.getParentId() == null) {
				TreeNode node = new TreeNode();
				node.setId(menuId.toString());
				node.setText(menu.getName());
				node.setUrl(menu.getUrl());
				node.setChildren(getChildMenus(menuList, menuId));
				rootList.add(node);
			}
		}
		return rootList;
	}
	
	private static List<TreeNode> getChildMenus(List<Menu> menuList, Integer menuId) {
		List<TreeNode> childList = new ArrayList<TreeNode>();
		for(Menu menu : menuList) {
			if(menuId.equals(menu.getParentId())) {
				TreeNode node = new TreeNode();
				node.setText(menu.getName());
				node.setUrl(menu.getUrl());
				childList.add(node);
			}
		}
		return childList;
	}
	
	public static String join(int[] arrays) {
		if(arrays == null || arrays.length == 0) {
			return StringUtils.EMPTY;
		}
		Integer[] result = new Integer[arrays.length];
		
		for (int i = 0; i < arrays.length; i++) {
			result[i] = arrays[i];
		}
		return StringUtils.join(result);
	}
	
	public static Locale getLocale(HttpServletRequest request) {
		return RequestContextUtils.getLocaleResolver(request).resolveLocale(request);
	}
	
	public static String getLang(HttpServletRequest request) {
		Locale locale = RequestContextUtils.getLocaleResolver(request).resolveLocale(request);
		String lang = null;
		if(locale == null) {
			locale = Locale.getDefault();
		}
		lang = locale.toString();
		return lang;
	}
	
	public static Integer getIntParam(HttpServletRequest request, String paramName) {
		String itemIdStr = request.getParameter(paramName);
		if(itemIdStr == null || itemIdStr.length() == 0) {
			return null;
		}
		
		Integer itemId = null;
		try {
			itemId = Integer.valueOf(itemIdStr);
		} catch (Exception e) {
			log.error(e.getMessage());
			return null;
		}
		return itemId;
	}
	/*public static void encodeImgUrl(List<Info> infoList) { 
		for(Info info : infoList) {
			String imgPath = info.getImgPath();
			if(StringUtils.isNotBlank(imgPath)) {
				try {
					info.setImgPath(URLEncoder.encode(imgPath, "UTF-8"));
				} catch (UnsupportedEncodingException e) {
					log.error("Unsupported Encoding Exception");
				}
			}
		}
	}
	
	public static void encodePicUrl(List<Picture> picList) { 
		for(Picture pic : picList) {
			String imgPath = pic.getPath();
			if(StringUtils.isNotBlank(imgPath)) {
				try {
					pic.setPath(URLEncoder.encode(imgPath, "UTF-8"));
				} catch (UnsupportedEncodingException e) {
					log.error("Unsupported Encoding Exception");
				}
			}
		}
	}
	*/
	public static String getIpAddr(HttpServletRequest request) { 
		String ip = request.getHeader(" x-forwarded-for ");
		if (ip == null || ip.length() == 0 || " unknown ".equalsIgnoreCase(ip)) {
			ip = request.getHeader(" Proxy-Client-IP ");
		}
		if (ip == null || ip.length() == 0 || " unknown ".equalsIgnoreCase(ip)) {
			ip = request.getHeader(" WL-Proxy-Client-IP ");
		}
		if (ip == null || ip.length() == 0 || " unknown ".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
    }
	
	public static User getUser() {
		return user;
	}

	public static void setUser(User user) {
		WebUtil.user = user;
	}
    public static Member getMember() {
        return member;
    }

    public static void setMember(Member member) {
        WebUtil.member = member;
    }

	public static void main(String[] args) {
		System.out.println(encrypt("hello"));
	}
}

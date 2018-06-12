package com.wine.service.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.wine.dao.page.PageQuery;
import com.wine.model.Logint;
import com.wine.utils.PageParameter;
import com.wine.web.bean.PageResponse;
import com.wine.web.bean.WebCondition;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.wine.dao.UserMapper;
import com.wine.exception.BizException;
import com.wine.exception.DataAccessException;
import com.wine.model.Log;
import com.wine.model.User;
import com.wine.model.UserCriteria;
import com.wine.model.UserCriteria.Criteria;
import com.wine.service.LogService;
import com.wine.service.LoginService;
import com.wine.utils.ThreeDes;
import com.wine.web.form.LoginForm;

public class LoginServiceImpl implements LoginService {
	private final Logger log = Logger.getLogger(LoginServiceImpl.class); 
	@Autowired
	private UserMapper userMapper;

	@Autowired
	private LogService logService;
	
	public void setUserMapper(UserMapper userMapper) {
	  this.userMapper = userMapper;
	}
	public void setLogService(LogService logService) {
		this.logService = logService;
	}

	@Override
	public User doLogin(LoginForm loginForm,String ip) {
		UserCriteria condition = new UserCriteria();
		Criteria c = condition.createCriteria();
		ThreeDes des = ThreeDes.getInstance();
		String encrypt = des.encrypt(loginForm.getPassword());
		c.andPasswordEqualTo(encrypt);
		c.andLoginNameEqualTo(loginForm.getUsername());
		List<User> users = null;
		try {
			users = userMapper.selectByExample(condition);
		} catch (Exception e) {
			throw new DataAccessException("error.db",e.getMessage());
		}
		
		if(users.isEmpty()) {
			log.error("can not found user by loginName:" + loginForm.getUsername());
			throw new BizException("error.login");
		}
		User user = users.get(0);
		if(user == null) {
			throw new BizException("error.login");
		}
        this.login(user,ip);//记录登陆信息
		return users.get(0);
	}

    public void login(User user,String ip){
        Logint logint = new Logint();
        logint.setCreated(new Date());
        logint.setIp(ip);

        //String mac = getMACAddress();
        try{
            String mac = getMACAddress(ip);
            logint.setMac(mac);
        }catch (Exception e){

        }

        logint.setLogintime(new Date());
        logint.setLoginuser(user.getLoginName());
        userMapper.insertLogint(logint);
    }


    public void logout(String userName,String ip){
        Logint logint = new Logint();
        logint.setCreated(new Date());

        try {
            //InetAddress address = InetAddress.getLocalHost();
            logint.setIp(ip);
            String mac = getMACAddress(ip);
            logint.setMac(mac);
        }catch (Exception e ){
            log.error("can not get login ip" );
            //throw new BizException("error.login");
        }

        logint.setLoginuser(userName);
        userMapper.insertLogout(logint);
    }
    /**
     * 通过IP地址获取MAC地址
     * @param ip String,127.0.0.1格式
     * @return mac String
     * @throws Exception
     */
//    public String getMACAddress(String ip) throws Exception {
//        String line = "";
//        String macAddress = "";
//        final String MAC_ADDRESS_PREFIX = "MAC Address = ";
//        //final String
//        final String LOOPBACK_ADDRESS = "127.0.0.1";
//        //如果为127.0.0.1,则获取本地MAC地址。
//        if (LOOPBACK_ADDRESS.equals(ip)) {
//            InetAddress inetAddress = InetAddress.getLocalHost();
//            //貌似此方法需要JDK1.6。
//            byte[] mac = NetworkInterface.getByInetAddress(inetAddress).getHardwareAddress();
//            //下面代码是把mac地址拼装成String
//            StringBuilder sb = new StringBuilder();
//            for (int i = 0; i < mac.length; i++) {
//                if (i != 0) {
//                    sb.append("-");
//                }
//                //mac[i] & 0xFF 是为了把byte转化为正整数
//                String s = Integer.toHexString(mac[i] & 0xFF);
//                sb.append(s.length() == 1 ? 0 + s : s);
//            }
//            //把字符串所有小写字母改为大写成为正规的mac地址并返回
//            macAddress = sb.toString().trim().toUpperCase();
//            return macAddress;
//        }
//        //获取非本地IP的MAC地址
//        try {
//            Process p = Runtime.getRuntime().exec("nbtstat -A " + ip);
//            InputStreamReader isr = new InputStreamReader(p.getInputStream(),"GBK");
//            BufferedReader br = new BufferedReader(isr);
//            while ((line = br.readLine()) != null) {
//                if (line != null) {
//                    int index = line.indexOf(MAC_ADDRESS_PREFIX);
//
//                    if (index != -1) {
//                        macAddress = line.substring(index + MAC_ADDRESS_PREFIX.length()).trim().toUpperCase();
//                    }
//                }
//            }
//            br.close();
//        } catch (IOException e) {
//            e.printStackTrace(System.out);
//        }
//        return macAddress;
//    }

    public String getMACAddress(String ip) {
        String str = "";
        String macAddress = "";
//        try {
//            Process p = Runtime.getRuntime().exec("cmd /c C:\\\\Windows\\\\sysnative\\\\nbtstat.exe -a " + ip);
//            InputStreamReader ir = new InputStreamReader(p.getInputStream(),"GBK");
//            LineNumberReader input = new LineNumberReader(ir);
//            for (int i = 1; i < 100; i++) {
//                str = input.readLine();
//                System.out.println("str======================="+str);
//                if (str != null) {
//                    if (str.indexOf("MAC Address") > 1) {
//                        macAddress = str.substring(
//                                str.indexOf("MAC Address") + 14, str.length());
//                        break;
//                    }
//                }
//            }
//        } catch (IOException e) {
//            e.printStackTrace(System.out);
//        }
        return macAddress;
    }



    @Override
	public User getUserById(int id) {
		UserCriteria condition = new UserCriteria();
		Criteria c = condition.createCriteria();
		c.andIdEqualTo(id);
		List<User> users = null;
		try {
			users = userMapper.selectByExample(condition);
		} catch (Exception e) {
			throw new DataAccessException("error.db",e.getMessage());
		}
		User user = users.get(0);
		if(user == null) {
			throw new BizException("error.login");
		}
		return users.get(0);
	}

	@Override
	public int updateUser(User user) {
		user.setModified(new Date());
		insertLog("update info qa id:" + user.getId());
		int result = userMapper.update(user);
		if(result == 0) {
			log.error("update failed.id:" + user.getId());
		}
		return result;
	}

	private void insertLog(String content) {
		Log lg = new Log();
		lg.setContent(content);
		lg.setType(2);
		lg.setUserName("test");
		logService.insert(lg);
	}
    @Override
    public PageResponse loginlist(WebCondition condition) {
        PageResponse response = new PageResponse();
        int page = condition.getPage();
        int rows = condition.getRows();


        PageQuery pageQry = new PageQuery();

        pageQry.setOrderByClause("created desc");

        PageParameter pageParam = new PageParameter();
        pageParam.setCurrentPage(page);
        pageParam.setPageSize(rows);

        pageQry.setPage(pageParam);
        List<Logint> list = userMapper.getloginlistByPage(pageQry);
//		WebUtil.encodeImgUrl(list);
        response.setRows(list);
        response.setTotal(pageQry.getPage().getTotalCount());
        response.setPageCount(pageQry.getPage().getTotalPage());
        response.setCurrentPage(pageQry.getPage().getCurrentPage());
        response.setNextPage(pageQry.getPage().getNextPage());
        response.setPrePage(pageQry.getPage().getPrePage());
        response.setPageSize(rows);
        return response;
    }

    @Override
	public List<User> showworker(){
		Map map =new HashMap();
		UserCriteria userCriteria =new UserCriteria();
		UserCriteria.Criteria criteria1 = userCriteria.createCriteria();
		criteria1.andFlagEqualTo(2);
		List<User> list = null;
		try {
			list = userMapper.selectByExample(userCriteria);
			return list;
		}catch(Exception e){
			System.out.println(e.getMessage());
			return null;
		}

	}
}

package com.wine.web.controller;

import com.wine.constants.Constants;
import com.wine.model.User;
import com.wine.service.UserService;
import com.wine.utils.Base64Decoder;
import com.wine.utils.ThreeDes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/modifyPassword")
public class ModifyPasswordController {

    @Autowired
    private UserService userService;

    @RequestMapping("/toIndex")
    public String toIndex(){
        return "home/password";
    }


    @RequestMapping("/modify")
    @ResponseBody
    public Map<String, Object> modify(HttpServletRequest request, String oldPwd, String newPwd){

        Map<String, Object> map = new HashMap<String, Object>();
        String msg = "修改成功！";
        Boolean flag = true;

        User user = (User) request.getSession().getAttribute(Constants.CURRENT_USER_OBJECT);
        user = userService.findById(user.getId());
        String dbPwd = user.getPassword();

        if(!dbPwd.equals(oldPwd)){ // 旧密码错误
            msg = "旧密码错误, 修改失败！";
            flag = false;
        } else { // 旧密码正确， 才能修改密码
            try{
                userService.updateByOneField(user.getId(), "password", newPwd);
            } catch (Exception e){
                msg = "服务器异常, 修改失败！";
                flag = false;
            }
        }
        map.put("msg", msg);
        map.put("flag", flag);
        return map;
    }


}

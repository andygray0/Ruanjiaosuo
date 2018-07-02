package com.wine.web.controller;

import com.wine.model.Role;
import com.wine.model.User;
import com.wine.service.RoleService;
import com.wine.service.UserService;
import com.wine.utils.ThreeDes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
@RequestMapping("/user")
@OperateLogClassLevelAnnotation(module = "用户管理")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @RequestMapping("/toIndex")
    public String toIndex(Model model){
        List<Role> roleList = roleService.findAll();
        model.addAttribute("roleList", roleList);
        return "role22/user";
    }

    @RequestMapping("/getByPage")
    @ResponseBody
    public Map<String,Object> getByPage(Integer limit, Integer page, String loginName, Integer roleId){

        Map<String,Object> map = new HashMap<String, Object>();
        int total = userService.countTotal(loginName, roleId);

        List<User> userList = new ArrayList<User>();
        if(total > 0){
            userList = userService.findByPage(limit, page, "id", "ASC", loginName, roleId );
        }
        map.put("rows", userList);
        map.put("total", total);
        return map;
    }


    @RequestMapping("/deleteUsers")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "删除选中的用户")
    public String deleteUsers(String ids){
        roleService.deleteUserRoleRelationByUserIds(ids);
        userService.deleteBatchByIds(ids);
        return "ok";
    }

    @RequestMapping("/modifyPass")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "删除选中的用户")
    public String modifyPass(String ids){
        userService.modifyPassByIds(ids);
        return "ok";
    }

    @RequestMapping("/validUniqueField")
    @ResponseBody
    public Map<String,Object> validUniqueField(String field, String value){
        if("loginName".equals(field)){
            field = "login_name";
        }
        int count = userService.findCountUniqueField(field, value);
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("valid", count == 0);
        return map;
    }

    @RequestMapping("/saveUserWithRole")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "保存一个用户，同时设置角色")
    public String saveUserWithRole(User user){
        user.setPassword(ThreeDes.getInstance().encrypt("123456"));
        user.setCreated(new Date());
        user.setLastlogin(new Date());

        userService.insertOne(user);
        if(0 != user.getRoleId()){
            roleService.saveUserRoleRelation(user.getId(), user.getRoleId());
        }
        return "ok";
    }


    @RequestMapping("/updateByOneField")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "修改一个用户的一个字段值")
    public String updateByOneField(Integer id, String field, String value){
        if("loginName".equals(field)){
            field = "login_name";
        }
        userService.updateByOneField(id, field, value);
        return "ok";
    }

    @RequestMapping("/findCountByOneField")
    @ResponseBody
    public Integer findCountByOneField(Integer id, String field, String value){
        if("loginName".equals(field)){
            field = "login_name";
        }
        int count = userService.findCountByOneField(id, field, value);
        return count;
    }



}

package com.wine.model;

import java.io.Serializable;

/**
 * Created by acer on 2018/2/6.
 */
public class Role  implements Serializable {

    private Integer id;

    private String name;

    private Integer roleLevel;

    private String code;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getRoleLevel() {
        return roleLevel;
    }

    public void setRoleLevel(Integer roleLevel) {
        this.roleLevel = roleLevel;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", roleLevel=" + roleLevel +
                ", code=" + code +
                '}';
    }
}

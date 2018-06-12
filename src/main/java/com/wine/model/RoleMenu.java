package com.wine.model;

import java.io.Serializable;

/**
 * Created by acer on 2018/2/7.
 * 对应menu表
 */
public class RoleMenu  implements Serializable {

    private Integer id;
    private String name;
    private Integer pid;
    private Integer menuLevel;
    private String url;
    private Boolean leaf;
    private Integer order;

    private Boolean checked;

    public Integer getId() {
        return id;
    }

    public RoleMenu setId(Integer id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public RoleMenu setName(String name) {
        this.name = name;
        return this;
    }

    public Integer getPid() {
        return pid;
    }

    public RoleMenu setPid(Integer pid) {
        this.pid = pid;
        return this;
    }

    public Integer getMenuLevel() {
        return menuLevel;
    }

    public RoleMenu setMenuLevel(Integer menuLevel) {
        this.menuLevel = menuLevel;
        return this;
    }

    public String getUrl() {
        return url;
    }

    public RoleMenu setUrl(String url) {
        this.url = url;
        return this;
    }

    public Boolean getLeaf() {
        return leaf;
    }

    public RoleMenu setLeaf(Boolean leaf) {
        this.leaf = leaf;
        return this;
    }

    public Integer getOrder() {
        return order;
    }

    public RoleMenu setOrder(Integer order) {
        this.order = order;
        return this;
    }

    public Boolean getChecked() {
        return checked;
    }

    public RoleMenu setChecked(Boolean checked) {
        this.checked = checked;
        return this;
    }

    @Override
    public String toString() {
        return "RoleMenu{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", pid=" + pid +
                ", menuLevel=" + menuLevel +
                ", url='" + url + '\'' +
                ", leaf=" + leaf +
                ", order=" + order +
                ", checked=" + checked +
                '}';
    }
}

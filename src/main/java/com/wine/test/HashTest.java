package com.wine.test;

import com.wiscom.is.IdentityFactory;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Mr.Kong
 * Date: 2017-02-10.
 */
public class HashTest {
    public static void main(String[] args) {
        Map map =new HashMap();
        IdentityFactory tmp = (IdentityFactory)map.get("C:\\Users\\admin\\IdeaProjects\\bitc-library\\target\\classes\\client.properties");
        System.out.println(tmp);
    }
}

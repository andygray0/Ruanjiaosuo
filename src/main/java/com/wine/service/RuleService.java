package com.wine.service;

import com.wine.model.Rule;

import java.util.List;
import java.util.Map;

public interface RuleService {
    int insert(Rule rule);
    Map showlist(int page,int limit,String name);
    Boolean deleteByID(int id);
    Boolean ruleedit(Integer id,String name,String description);
    Rule getById(Integer id);
    Boolean changejar(Rule rule);
    List<Rule> showall();
    String getNamesByIds(String rule);
}

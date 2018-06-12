package com.wine.service;

import com.wine.model.Strategy;

import java.util.List;
import java.util.Map;

public interface StrategyService {
    Map showlist(int page,int limit,String name);
    Boolean insert(Strategy strategy);
    List showlist();
    Boolean deleteByID(int id);
    Boolean strategyedit(int id,String name,String description,String rules);
}

package com.wine.service;

import com.wine.model.WashTimer;

import java.util.Map;

public interface WashTimerService {
    Map showlist(int page, int limit,String name);
    Boolean insert(WashTimer washTimer);
    Boolean deleteByID(int id);
    WashTimer getById(int id);
    void updateTimer(WashTimer washTimer);
    void pauseAllTimer();
    void stopByID(int id);
    void startByID(int id);
}

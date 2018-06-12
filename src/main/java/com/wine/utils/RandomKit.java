package com.wine.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created by wzjer on 2018/4/17.
 */
public class RandomKit {

    @SuppressWarnings("all")
    public static List getRateList(List list, int rate){
        List resultList = new ArrayList();
        int realsize = list.size() * rate / 100;
        Random random = new Random();

        Object n = null;
        for(int i = 0; i < realsize; i++){
            if(list.size() > 0){
                n = random.nextInt(list.size());
                resultList.add(list.get((Integer)n));
                list.remove(n);
            }
        }
        return resultList;
    }

}

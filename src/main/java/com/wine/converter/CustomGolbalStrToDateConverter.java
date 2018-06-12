package com.wine.converter;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by admin on 2017/1/3.
 */
public class CustomGolbalStrToDateConverter implements Converter<String,Date>{

    public Date convert(String source) {
        try {
            Date date = new SimpleDateFormat("dd/MM/yyyy").parse(source);
            return date;
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }
}

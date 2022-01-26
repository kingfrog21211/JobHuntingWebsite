/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.formatter;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;
import java.util.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author Asus
 */
public class DateFormatter implements Formatter<Date>{

    @Override
    public String print(Date object, Locale locale) {
        return String.valueOf(object.getDate());
    }

    @Override
    public Date parse(String text, Locale locale) throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date d = new Date();
        d = simpleDateFormat.parse(text);
        return d;
    } 
    
}

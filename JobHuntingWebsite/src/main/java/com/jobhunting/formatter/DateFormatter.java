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
public class DateFormatter implements Formatter<Object>{

    @Override
    public String print(Object object, Locale locale) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object parse(String text, Locale locale) throws ParseException {
//        long miliseconds = System.currentTimeMillis();
        Date d = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
        d = simpleDateFormat.parse(text);
        return d;
    }
    
}

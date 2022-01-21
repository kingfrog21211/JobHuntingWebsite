/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.formatter;
import com.jobhunting.pojo.City;
import com.jobhunting.pojo.Profession;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Asus
 */
public class CityFormatter implements Formatter<City>{

    @Override
    public String print(City object, Locale locale) {
        return String.valueOf(object.getCityId());
    }

    @Override
    public City parse(String text, Locale locale) throws ParseException {
        City p = new City();
        p.setCityId(Integer.parseInt(text));
        return p;
    }
    
}

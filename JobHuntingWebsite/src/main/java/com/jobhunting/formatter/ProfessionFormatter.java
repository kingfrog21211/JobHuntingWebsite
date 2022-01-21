/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.formatter;
import org.springframework.format.Formatter;
import com.jobhunting.pojo.Profession;
import java.text.ParseException;
import java.util.Locale;

/**
 *
 * @author Asus
 */
public class ProfessionFormatter implements Formatter<Profession>{

    @Override
    public String print(Profession object, Locale locale) {
        return String.valueOf(object.getProfessionId());
    }

    @Override
    public Profession parse(String text, Locale locale) throws ParseException {
        Profession p = new Profession();
        p.setProfessionId(Integer.parseInt(text));
        return p;
    }
    
}

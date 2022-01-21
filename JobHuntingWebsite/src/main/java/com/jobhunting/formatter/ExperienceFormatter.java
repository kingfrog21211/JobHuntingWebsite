/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.formatter;
import com.jobhunting.pojo.Experience;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Asus
 */
public class ExperienceFormatter implements Formatter<Experience>{

    @Override
    public String print(Experience object, Locale locale) {
        return String.valueOf(object.getExperienceId());
    }

    @Override
    public Experience parse(String text, Locale locale) throws ParseException {
        Experience e = new Experience();
        e.setExperienceId(Integer.parseInt(text));
        return e;
    }
    
}

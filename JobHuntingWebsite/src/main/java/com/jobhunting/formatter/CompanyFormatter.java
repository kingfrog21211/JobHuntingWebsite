/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.formatter;
import com.jobhunting.pojo.Recruit;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Asus
 */
public class CompanyFormatter implements Formatter<Recruit>{

    @Override
    public String print(Recruit object, Locale locale) {
        return String.valueOf(object.getRecruitId());
    }

    @Override
    public Recruit parse(String text, Locale locale) throws ParseException {
        Recruit e = new Recruit();
        e.setRecruitId(Integer.parseInt(text));
        return e;
    }
    
}

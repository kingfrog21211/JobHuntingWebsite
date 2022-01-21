/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.formatter;
import com.jobhunting.pojo.WorkType;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Asus
 */
public class WorkTypeFormatter implements Formatter<WorkType>{

    @Override
    public String print(WorkType object, Locale locale) {
        return String.valueOf(object.getWorkTypeId());
    }

    @Override
    public WorkType parse(String text, Locale locale) throws ParseException {
        WorkType wt = new WorkType();
        wt.setWorkTypeId(Integer.parseInt(text));
        return wt;
    }
    
}

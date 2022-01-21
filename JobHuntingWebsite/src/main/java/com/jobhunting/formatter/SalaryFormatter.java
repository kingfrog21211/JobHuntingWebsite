/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.formatter;

import com.jobhunting.pojo.Salary;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Asus
 */
public class SalaryFormatter implements Formatter<Salary>{

    @Override
    public String print(Salary object, Locale locale) {
        return String.valueOf(object.getSalaryId());
    }

    @Override
    public Salary parse(String salaryId, Locale locale) throws ParseException {
        Salary s = new Salary();
        s.setSalaryId(Integer.parseInt(salaryId));
        return s;
    }
    
}

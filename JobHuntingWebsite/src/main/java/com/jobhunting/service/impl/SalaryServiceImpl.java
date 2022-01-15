/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.pojo.Salary;
import com.jobhunting.repository.SalaryRepository;
import com.jobhunting.service.SalaryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Asus
 */
@Service
public class SalaryServiceImpl implements SalaryService{
    @Autowired
    public SalaryRepository salaryRepository;

    @Override
    public List<Salary> getSalary() {
        return this.salaryRepository.getSalary();
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.pojo.Career;
import com.jobhunting.repository.CareerRepository;
import com.jobhunting.service.CareerService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Asus
 */
@Service
public class CareerServiceImpl implements CareerService{
    @Autowired
    public CareerRepository careerRepository; 
    
    @Override
    public List<Career> getCareers() {
        return this.careerRepository.getCareers();
    }

    @Override
    public Career getCareerById(Integer careerId) {
        return this.careerRepository.getCareerById(careerId);
    }
    
}

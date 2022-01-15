/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.pojo.City;
import com.jobhunting.repository.CityRepository;
import com.jobhunting.service.CityService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 *
 * @author Asus
 */
@Service
public class CityServiceImpl implements CityService{
    @Autowired
    public CityRepository cityRepository;
    
    @Override
    public List<City> getCity() {
        return this.cityRepository.getCity();
    }
    
}

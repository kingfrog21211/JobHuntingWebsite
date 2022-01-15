/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.pojo.WorkType;
import com.jobhunting.repository.WorkTypeRepository;
import com.jobhunting.service.WorkTypeService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Asus
 */
@Service
public class WorkTypeServiceImpl implements WorkTypeService{
    @Autowired
    public WorkTypeRepository workTypeRepository;

    @Override
    public List<WorkType> getWorkType() {
        return this.workTypeRepository.getWorkType();
    }
    
}

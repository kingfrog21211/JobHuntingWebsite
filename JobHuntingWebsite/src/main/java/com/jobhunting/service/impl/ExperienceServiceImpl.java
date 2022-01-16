/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.pojo.Experience;
import com.jobhunting.repository.ExperienceRepository;
import com.jobhunting.service.ExperienceService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 *
 * @author Asus
 */
@Service
public class ExperienceServiceImpl implements ExperienceService{
    @Autowired
    public ExperienceRepository experienceRepository;

    @Override
    public List<Experience> getExperiences() {
        return this.experienceRepository.getExperiences();
    }
    
}

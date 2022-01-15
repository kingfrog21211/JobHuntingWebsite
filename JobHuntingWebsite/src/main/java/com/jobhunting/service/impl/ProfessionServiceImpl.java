/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.pojo.Profession;
import com.jobhunting.repository.ProfessionRepository;
import com.jobhunting.service.ProfessionService;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Asus
 */
@Service
public class ProfessionServiceImpl implements ProfessionService{
    @Autowired
    public ProfessionRepository professionRepository;

    @Override
    public List<Profession> getProfessions() {
        return this.professionRepository.getProfessions();
    }

    @Override
    public List<Profession> getProfessionByCareerId(Integer careerId) {
        return this.professionRepository.getProfessionByCareerId(careerId);
    }
    
}

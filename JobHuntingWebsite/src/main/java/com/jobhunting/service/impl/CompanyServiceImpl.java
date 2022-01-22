/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.pojo.Recruit;
import com.jobhunting.repository.CompanyRepository;
import com.jobhunting.service.CompanyService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 *
 * @author Asus
 */
@Service
public class CompanyServiceImpl implements CompanyService{
    @Autowired
    public CompanyRepository companyRepository;
    
    @Override
    public List<Recruit> getCompany() {
        return this.companyRepository.getCompany();
    }

    @Override
    public Recruit getCompanyByRecruitId(Integer recruitId) {
        return this.companyRepository.getCompanyByRecruitId(recruitId);
    }
}

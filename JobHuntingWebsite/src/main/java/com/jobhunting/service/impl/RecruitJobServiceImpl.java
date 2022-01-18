/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.repository.RecruitJobRepository;
import com.jobhunting.service.RecruitJobService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Asus
 */
@Service
public class RecruitJobServiceImpl implements RecruitJobService{
    @Autowired
    public RecruitJobRepository recruitJobRepository;
    
    @Override
    public List<RecruitJob> getRecruitJob() {
        return this.recruitJobRepository.getRecruitJob();
    }

    @Override
    public List<RecruitJob> getRecruitJobBySearching(Integer cityId, Integer professionId, Integer workTypeId, Integer salaryId) {
        return this.recruitJobRepository.getRecruitJobBySearching(cityId, professionId, workTypeId, salaryId);
    }

    @Override
    public RecruitJob getRecruitJobById(Integer intgr) {
        return this.recruitJobRepository.getRecruitJobById(intgr);
    }

    @Override
    public Object getJobDetail(Integer intgr) {
        return this.recruitJobRepository.getJobDetail(intgr);
    }

    @Override
    public List<RecruitJob> getRecruitJobByRecruitId(Integer intgr) {
        return this.recruitJobRepository.getRecruitJobByRecruitId(intgr);
    }

    @Override
    public List<RecruitJob> getRecruitJobByKW(String string) {
        return this.recruitJobRepository.getRecruitJobByKW(string);
    }
    
}

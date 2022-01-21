/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.pojo.Recruit;
import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.repository.RecruitJobRepository;
import com.jobhunting.service.RecruitJobService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Date;

/**
 *
 * @author Asus
 */
@Service
public class RecruitJobServiceImpl implements RecruitJobService{
    @Autowired
    public RecruitJobRepository recruitJobRepository;
//    @Autowired
//    private Cloudinary cloudinary;
    
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

    @Override
    public boolean addOrUpdate(RecruitJob rj) {
        long miliseconds = System.currentTimeMillis();
        Date d = new Date(miliseconds);
        rj.setPostDate(d);
        rj.setStatus(true);
        Recruit r = new Recruit();
        r.setRecruitId(2);
        rj.setRecruitId(r);
        try {
//            Map r = this.cloudinary.uploader().upload(recruitJob.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
//            Product.setImage((String) r.get("secure_url"));
              return this.recruitJobRepository.addOrUpdate(rj);
        } catch (Exception ex) {
            System.err.println("==ADD RECRUIT JOB ERROR== "+ ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }
    
}

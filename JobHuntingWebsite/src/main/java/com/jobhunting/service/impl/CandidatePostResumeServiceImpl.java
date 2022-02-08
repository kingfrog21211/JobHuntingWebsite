/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.pojo.Candidate;
import com.jobhunting.pojo.CandidatePostResume;
import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.pojo.User;
import com.jobhunting.repository.CandidatePostResumeRepository;
import com.jobhunting.repository.CandidateRepository;
import com.jobhunting.repository.RecruitJobRepository;
import com.jobhunting.repository.UserRepository;
import com.jobhunting.service.CandidatePostResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import java.util.Date;

/**
 *
 * @author Asus
 */
@Service
public class CandidatePostResumeServiceImpl implements CandidatePostResumeService{
    @Autowired
    private CandidatePostResumeRepository candidatePostResumeRepository;
    @Autowired
    private RecruitJobRepository recruitJobRepository;
    @Autowired
    private CandidateRepository candidateRepository;
    @Autowired
    private UserRepository userRepository;

    @Override
    public boolean addCV(int id) {
        //GET USER BY USER NAME
        User u = this.userRepository.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());
        
        CandidatePostResume cv = new CandidatePostResume(); 
        Candidate c = this.candidateRepository.getCandidateByUserId(u.getUserId());
        RecruitJob r = this.recruitJobRepository.getRecruitJobById(id);
        Date d = new Date();
        
        cv.setCandidateId(c);
        cv.setRecruitJobId(r);
        cv.setStatus(true);
        cv.setPathFileCV(c.getPathCV());
        cv.setPostDate(d);
        
        return this.candidatePostResumeRepository.addCV(cv);
    }

    @Override
    public CandidatePostResume getCVById(int id) {
        return this.candidatePostResumeRepository.getCVById(id);
    }
    
}

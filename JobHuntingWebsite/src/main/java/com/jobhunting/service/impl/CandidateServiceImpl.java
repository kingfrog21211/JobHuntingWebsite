/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.pojo.Candidate;
import com.jobhunting.repository.CandidateRepository;
import com.jobhunting.service.CandidateService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Asus
 */
@Service
public class CandidateServiceImpl implements CandidateService{
    @Autowired
    private CandidateRepository candidateRepository;

    @Override
    public Candidate getCandidateByUserId(Integer id) {
        return this.candidateRepository.getCandidateByUserId(id);
    }

    
    @Override
    public List<Candidate> getCandidate() {
        return this.candidateRepository.getCandidate();
    }

    @Override
    public List<Candidate> getCandidateBySearching(Integer professionId, Integer experienceId, Integer cityId) {
        return this.candidateRepository.getCandidateBySearching(professionId, experienceId, cityId);
    }

    @Override
    public Candidate getCandidateById(Integer id) {
        return this.candidateRepository.getCandidateById(id);
    }

    @Override
    public Object getCandidateDetail(Integer id) {
        return this.candidateRepository.getCandidateDetail(id);
    }
    
}

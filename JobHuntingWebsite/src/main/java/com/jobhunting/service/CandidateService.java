/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service;

import com.jobhunting.pojo.Candidate;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface CandidateService {
    Candidate getCandidateByUserId(Integer id);
    
    List<Candidate> getCandidate();
    List<Candidate> getCandidateBySearching(Integer candidateId, Integer professionId, Integer userId);
    Candidate getCandidateById(Integer id);
    Object getCandidateDetail(Integer id);
    List<Candidate> getCandidateByKW(String kw);
}

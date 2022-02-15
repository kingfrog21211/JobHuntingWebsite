/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository;

import com.jobhunting.pojo.Candidate;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface CandidateRepository {
    Candidate getCandidateByUserId(Integer id);
    
    List<Candidate> getCandidate();
    List<Candidate> getCandidateBySearching(Integer professionId, Integer experienceId, Integer cityId);
    Candidate getCandidateById(Integer id);
    Object getCandidateDetail(Integer id);
}

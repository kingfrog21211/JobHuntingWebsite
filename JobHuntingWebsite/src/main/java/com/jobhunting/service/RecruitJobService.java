/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service;

import com.jobhunting.pojo.RecruitJob;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface RecruitJobService {
    List<RecruitJob> getRecruitJob();
    List<RecruitJob> getRecruitJobByProfessionId(Integer professionId);
    List<RecruitJob> getRecruitJobBySearching(String titles, Integer cityId, Integer professionId, Integer workTypeId, Integer salaryId);
}

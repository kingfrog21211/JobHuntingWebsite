/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository;

import com.jobhunting.pojo.Recruit;
import com.jobhunting.pojo.RecruitJob;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface RecruitJobRepository {
    List<RecruitJob> getRecruitJob();
    List<RecruitJob> getRecruitJobBySearching(Integer cityId, Integer professionId, Integer workTypeId, Integer salaryId);
    RecruitJob getRecruitJobById(Integer id);
    Object getJobDetail(Integer id);
    List<RecruitJob> getRecruitJobByRecruitId(Integer recruitId);
    List<RecruitJob> getRecruitJobByKW(String kw);
    boolean addOrUpdate(RecruitJob rj);
    boolean deleteRecruitJob(RecruitJob r);
    List<RecruitJob> getTop5RecruitJob();
}

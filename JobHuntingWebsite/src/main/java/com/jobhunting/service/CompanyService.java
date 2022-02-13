/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service;

import com.jobhunting.pojo.Recruit;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface CompanyService {
    List<Recruit> getCompany();
    Recruit getCompanyByRecruitId(Integer recruitId);
    Recruit getRecruitByUserId(Integer userId);
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository;

import java.util.List;
import com.jobhunting.pojo.Recruit;

/**
 *
 * @author Asus
 */
public interface CompanyRepository {
    List<Recruit> getCompany();
    Recruit getCompanyByRecruitId(Integer recruitId);
}

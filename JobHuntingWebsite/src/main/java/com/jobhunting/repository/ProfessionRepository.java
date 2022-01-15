/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository;

import com.jobhunting.pojo.Profession;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface ProfessionRepository {
    List<Profession> getProfessions();
    List<Profession> getProfessionByCareerId(Integer careerId);
}

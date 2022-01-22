/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.controllers;

import com.jobhunting.service.RecruitJobService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Asus
 */
@RestController
@RequestMapping("/api")
public class ApiRecruitJobController {
    @Autowired
    private RecruitJobService recruitJobService;
    
    @DeleteMapping("/delete-recruitJob/{id}")
    public void deleteRecruitJob(@ModelAttribute(value = "recruitJobId") Integer id, HttpSession session) {
        String msg;
        if (this.recruitJobService.deleteRecruitJob(id)) {
            msg = "Delete successful!";
        } else {
            msg = "Delete unsuccessful!";
        }

        session.setAttribute("msg", msg);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.controllers;

import com.jobhunting.service.CandidatePostResumeService;
import com.jobhunting.service.RecruitJobService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
    @Autowired
    private CandidatePostResumeService candidatePostResumeService;
    
    @DeleteMapping("/delete-recruitJob/{id}")
    public void deleteRecruitJob(@PathVariable(value = "recruitJobId") Integer id, HttpSession session) {
        String msg;
        if (this.recruitJobService.deleteRecruitJob(id)) {
            msg = "Delete successful!";
        } else {
            msg = "Delete unsuccessful!";
        }

        session.setAttribute("msg", msg);
    }
    
    @GetMapping(path = "/apply/{id}")
    public void addCV(@PathVariable(value = "id") int idRe, HttpSession session) {
        String msg;

        if (this.candidatePostResumeService.addCV(idRe)) {
            msg = "Apply CV successfull!";
        } else {
            msg = "Apply CV unsuccessfull!";
        }

        session.setAttribute("addCvMsg", msg);

    }
}

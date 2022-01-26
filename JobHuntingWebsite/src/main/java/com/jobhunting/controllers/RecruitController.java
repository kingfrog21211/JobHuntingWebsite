/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.service.CompanyService;
import com.jobhunting.service.RecruitJobService;
import java.io.IOException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author Asus
 */
@Controller
//@ControllerAdvice
public class RecruitController {
    @Autowired
    private RecruitJobService recruitJobService;
    @Autowired
    private CompanyService companyService;
    
//    @ModelAttribute
//    public void addAttribute(Model model, HttpSession session){
//        model.addAttribute("recruitJob", this.recruitJobService.getRecruitJob());
//        model.addAttribute("companies", this.companyService.getCompany());
//    }
    
    @GetMapping("/recruit-RecruitJob")  //chua loc theo RecruitId
    public String listJob(Model model){
        model.addAttribute("recruitJob", this.recruitJobService.getRecruitJob());
        model.addAttribute("companies", this.companyService.getCompany());
        return "recruit-RecruitJob";
    }
    
    @GetMapping("/recruit-addRecruitJob")
    public String list(Model model){
        model.addAttribute("recruitJob", new RecruitJob());
        return "recruit-addRecruitJob";
    }
    
    @PostMapping("/recruit-addRecruitJob")
    public String addOrUpdateRecruitJob(Model model, @ModelAttribute(value = "recruitJob") @Valid RecruitJob recruitJob, BindingResult result){
        if (!result.hasErrors()) {
            try {
                if (this.recruitJobService.addOrUpdate(recruitJob)==true)
                return "redirect:/recruit-RecruitJob";
            } catch (Exception e) {
                e.printStackTrace();
            }
//            if (this.recruitJobService.addOrUpdate(recruitJob)==true)
//                return "redirect:/recruit-RecruitJob";
//            else
//                model.addAttribute("errMsg", "System has something wrong!!!");
        }
        return "recruit-addRecruitJob";
    }
    
    @GetMapping("/recruit-RecruitInfo")
    public String recruitInfo(Model model){
        model.addAttribute("companies", this.companyService.getCompany());
        return "recruit-RecruitInfo";
    }
    
}

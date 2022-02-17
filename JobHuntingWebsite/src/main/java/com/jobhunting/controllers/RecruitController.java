/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.jobhunting.pojo.Recruit;
import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.pojo.User;
import com.jobhunting.service.CompanyService;
import com.jobhunting.service.ProfessionService;
import com.jobhunting.service.RecruitJobService;
import com.jobhunting.service.UserService;
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
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Asus
 */
@Controller
@RequestMapping("/recruit")
public class RecruitController {

    @Autowired
    private RecruitJobService recruitJobService;
    @Autowired
    private CompanyService companyService;
    @Autowired
    private ProfessionService professionService;
    @Autowired
    private UserService userDetailsService;

    @GetMapping("/recruit-RecruitJob")
    public String listJob(Model model) {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        User u = this.userDetailsService.getUserByUsername(SecurityContextHolder.getContext().getAuthentication().getName());
        Recruit r = this.companyService.getRecruitByUserId(u.getUserId());
//        if (r!=null) {ew2
        Integer recruitId = r.getRecruitId();
        model.addAttribute("recruitJob", this.recruitJobService.getRecruitJobByRecruitId(recruitId));
        model.addAttribute("companies", this.companyService.getCompanyByRecruitId(recruitId));
//        }
        return "recruit-RecruitJob";
    }

    @GetMapping("/recruit-addRecruitJob")
    public String list(Model model) {
        User u = this.userDetailsService.getUserByUsername(SecurityContextHolder.getContext().getAuthentication().getName());
        Recruit r = this.companyService.getRecruitByUserId(u.getUserId());
        model.addAttribute("recruitId", r.getRecruitId());
        model.addAttribute("recruitJob", new RecruitJob());
        return "recruit-addRecruitJob";
    }

    @PostMapping("/recruit-addRecruitJob")
    public String addRecruitJob(Model model, @ModelAttribute(value = "recruitJob") RecruitJob recruitJob, BindingResult result) {
//        if (!result.hasErrors()) {
            if (this.recruitJobService.addOrUpdate(recruitJob) == true) {
                return "redirect:/recruit/recruit-RecruitJob";
            } else {
                model.addAttribute("errMsg", "Cant add data!!!");
            }
//        } else {
//            model.addAttribute("errMsg", "Something wrong!!!");
//        }
        return "recruit-addRecruitJob";
    }

    @GetMapping("/recruit-updateRecruitJob")
    public String recruitJobInfo(Model model, @RequestParam(value = "recruitJobId") Integer id) {
        model.addAttribute("recruitJob", this.recruitJobService.getRecruitJobById(id));
        model.addAttribute("professions", this.professionService.getProfessions());

        return "recruit-updateRecruitJob";
    }

}

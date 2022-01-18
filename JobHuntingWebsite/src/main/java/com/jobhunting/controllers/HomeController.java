/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.controllers;

import com.jobhunting.service.CareerService;
import com.jobhunting.service.CityService;
import com.jobhunting.service.CompanyService;
import com.jobhunting.service.ExperienceService;
import com.jobhunting.service.ProfessionService;
import com.jobhunting.service.RecruitJobService;
import com.jobhunting.service.SalaryService;
import com.jobhunting.service.WorkTypeService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author Asus
 */
@Controller
@ControllerAdvice
public class HomeController {
    @Autowired
    private  CareerService careerService;
    @Autowired
    private  RecruitJobService recruitJobService;
    @Autowired
    private  CompanyService companyService;
    @Autowired
    private CityService cityService;
    @Autowired
    private ProfessionService professionService;
    @Autowired
    private WorkTypeService workTypeService;
    @Autowired
    private SalaryService salaryService;
    @Autowired
    private ExperienceService experienceService;
    
    @ModelAttribute
    public void addAttribute(Model model, HttpSession session){
        model.addAttribute("careers", this.careerService.getCareers());
        model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJob());
        model.addAttribute("cities", this.cityService.getCity());
        model.addAttribute("companies", this.companyService.getCompany());
        model.addAttribute("professions", this.professionService.getProfessions());
        model.addAttribute("workTypes", this.workTypeService.getWorkType());
        model.addAttribute("salary", this.salaryService.getSalary());
        model.addAttribute("experiences", this.experienceService.getExperiences());
    }
    
    @RequestMapping("/")
    public String index(Model model){
        return "index";
    }
    
    @RequestMapping("/job")
    public String job(Model model, @RequestParam(value = "titles", required = false) String titles,
                                    @RequestParam(value = "cityId", required = false) Integer cityId,
                                    @RequestParam(value = "professionId", required = false) Integer professionId,
                                    @RequestParam(value = "workTypeId", required = false) Integer workTypeId,
                                    @RequestParam(value = "salaryId", required = false) Integer salaryId){
        if (cityId!=null || professionId!=null || workTypeId!=null || salaryId!=null) {
            model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJobBySearching(cityId, professionId, workTypeId, salaryId));
        }
        else{
            model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJob());
        }
        return "job";
    }
    @RequestMapping("/jobDetail")
    public String jobDetail(Model model, @RequestParam(value = "recruitJobId") Integer recruitJobId){
        model.addAttribute("jobDetails", this.recruitJobService.getJobDetail(recruitJobId));
        return "jobDetail";
    }
    
    @RequestMapping("/company")
    public String company(Model model, @RequestParam(value = "recruitId", required = false) Integer recruitId ){
        if (recruitId!= null) {
            model.addAttribute("companies", this.companyService.getCompanyByRecruitId(recruitId));
        }
        else
            model.addAttribute("companies", this.companyService.getCompany());
        return "company";
    }
    
    @RequestMapping("/profession")
    public String profession(Model model, @RequestParam(value = "careerId", required = false) Integer careerId ){
        if (careerId!= null) {
            model.addAttribute("professions", this.professionService.getProfessionByCareerId(careerId));
        }
        else
            model.addAttribute("professions", this.professionService.getProfessions());
        return "profession";
    }
    
    @RequestMapping("/register")
    public String register(Model model){
        return "register";
    }
}

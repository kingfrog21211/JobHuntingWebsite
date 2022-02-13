/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.controllers;

import com.jobhunting.service.CandidateService;
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
import org.springframework.web.bind.annotation.RequestMethod;

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
    @Autowired
    private CandidateService candidateService;
    
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
        model.addAttribute("currentUser", session.getAttribute("currentUser"));
        model.addAttribute("candidates", this.candidateService.getCandidate());
    }
    
    @RequestMapping("/")
    public String index(Model model){
        model.addAttribute("top5RecruitJob", recruitJobService.getTop5RecruitJob());
        return "index";
    }
    
    @RequestMapping("/job")
    public String job(Model model, @RequestParam(value = "recruitId", required = false) Integer recruitId,
                                    @RequestParam(value = "cityId", required = false) Integer cityId,
                                    @RequestParam(value = "professionId", required = false) Integer professionId,
                                    @RequestParam(value = "workTypeId", required = false) Integer workTypeId,
                                    @RequestParam(value = "salaryId", required = false) Integer salaryId,
                                    @RequestParam(value = "kw", required = false)String kw){
        if (kw!=null&&!kw.isEmpty()) {
            model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJobByKW(kw));
        }else
        if (recruitId!=null) {
            model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJobByRecruitId(recruitId));
        } else
        if (cityId!=null || professionId!=null || workTypeId!=null || salaryId!=null) {
            model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJobBySearching(cityId, professionId, workTypeId, salaryId));
        }
        else{
            model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJob());
        }
        return "job";
    }
    @RequestMapping("/detail")
    public String jobDetail(Model model, @RequestParam(value = "recruitJobId") Integer recruitJobId){
        model.addAttribute("jobDetails", this.recruitJobService.getJobDetail(recruitJobId));
        return "detail";
    }
    
    @RequestMapping("/companyDetail")
    public String companyDetail(Model model, @RequestParam(value = "recruitId") Integer companyId){
        model.addAttribute("companyDetails", this.companyService.getCompanyByRecruitId(companyId));
        return "companyDetail";
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
    
    @RequestMapping("/result")
    public String result(Model model){
        return "searchResult";
    }
}

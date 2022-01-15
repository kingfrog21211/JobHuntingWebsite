/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.controllers;

import com.jobhunting.service.CareerService;
import com.jobhunting.service.CityService;
import com.jobhunting.service.CompanyService;
import com.jobhunting.service.ProfessionService;
import com.jobhunting.service.RecruitJobService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ControllerAdvice;

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
    
    @ModelAttribute
    public void addAttribute(Model model, HttpSession session){
        model.addAttribute("careers", this.careerService.getCareers());
        model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJob());
        model.addAttribute("cities", this.cityService.getCity());
        model.addAttribute("companies", this.companyService.getCompany());
        model.addAttribute("professions", this.professionService.getProfessions());
    }
    
    @RequestMapping("/")
    public String index(Model model){
        return "index";
    }
    
    @RequestMapping("/job")
    public String job(Model model, @RequestParam(value = "titles", required = false) String titles,
                                    @RequestParam(value = "cityId", required = false) Integer cityId,
                                    @RequestParam(value = "professionId", required = false) Integer professionId,
                                    @RequestParam(value = "workTypeId", required = false) Integer workTypeId){
        if ((titles!=null && !titles.isEmpty()) || cityId!=null || professionId!=null || workTypeId!=null) {
            model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJobByProfessionId(professionId));
        }
        else{
            model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJob());
        }
//        if (careerId != null){
//            model.addAttribute("JDs", this.jdService.getJdByNganhNgheId(careerId));
//        
//            if (viTriTuyenDungKW != null && !viTriTuyenDungKW.isEmpty())
//                model.addAttribute("JDs", this.jdService.getJdByViTriTuyenDung(viTriTuyenDungKW));
//
//            if (chucDanhId != null)
//                model.addAttribute("JDs", this.jdService.getJdByChucDanh(chucDanhId));
//
//            if (diaDiemId != null)
//                model.addAttribute("JDs", this.jdService.getJdByDiaDiem(diaDiemId));
//        }
//        else if (careerId == null //&& 
//                viTriTuyenDungKW == null &&
//                chucDanhId == null &&
//                diaDiemId == null)
//                )
//                model.addAttribute("JDs", this.jdService.getJdList());
        return "job";
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
}

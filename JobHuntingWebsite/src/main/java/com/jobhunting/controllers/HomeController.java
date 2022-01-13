/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.controllers;

import com.jobhunting.service.CareerService;
import com.jobhunting.service.RecruitJobService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Asus
 */
@Controller
public class HomeController {
    @Autowired
    private  CareerService careerService;
    @Autowired
    private  RecruitJobService recruitJobService;
    
    @ModelAttribute
    public void addAttribute(Model model, HttpSession session){
        model.addAttribute("careers", this.careerService.getCareers());
    }
    
    @RequestMapping("/")
    public String index(Model model){
        return "index";
    }
    
//    @RequestMapping("/job")
//    public String job(Model model, @RequestParam(value = "careerId", required = false) Integer careerId){
//        if (careerId != null) {
//            model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJobByCareerId(careerId));
//        }
//        else
//            model.addAttribute("recruitJobs", this.recruitJobService.getRecruitJob());
////        if (careerId != null){
////            model.addAttribute("JDs", this.jdService.getJdByNganhNgheId(careerId));
////        
////            if (viTriTuyenDungKW != null && !viTriTuyenDungKW.isEmpty())
////                model.addAttribute("JDs", this.jdService.getJdByViTriTuyenDung(viTriTuyenDungKW));
////
////            if (chucDanhId != null)
////                model.addAttribute("JDs", this.jdService.getJdByChucDanh(chucDanhId));
////
////            if (diaDiemId != null)
////                model.addAttribute("JDs", this.jdService.getJdByDiaDiem(diaDiemId));
////        }
////        else if (careerId == null //&& 
////                viTriTuyenDungKW == null &&
////                chucDanhId == null &&
////                diaDiemId == null)
////                )
////                model.addAttribute("JDs", this.jdService.getJdList());
//        return "job";
//    }
}

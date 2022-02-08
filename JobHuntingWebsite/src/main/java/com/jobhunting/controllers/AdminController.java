/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.controllers;

import com.jobhunting.service.CandidateService;
import com.jobhunting.service.StatsService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.security.access.prepost.PreAuthorize;

/**
 *
 * @author Asus
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private StatsService statsService;
    @Autowired
    private CandidateService candidateService;
     
//    @GetMapping(value="/admin-base")
//    public String adminBase(Model model) {
//        return "admin-base";
//    }
    
    @GetMapping("/stats")
    public String statsQuarter(){
        return "stats";
    }
    
    @RequestMapping("/stats-quarter")
    public String statsQuarter(Model model, @RequestParam(value = "q", required = false) String q){
        
        if (q.equals("q1")){
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date fd = new Date();
            try {
                fd = simpleDateFormat.parse("2022-01-01");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            Date td = new Date();
            try {
                td = simpleDateFormat.parse("2022-03-31");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            model.addAttribute("stats", this.statsService.statsQuarter(fd, td));
        } else
        if (q.equals("q2")){
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date fd = new Date();
            try {
                fd = simpleDateFormat.parse("2022-04-01");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            Date td = new Date();
            try {
                td = simpleDateFormat.parse("2022-06-30");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            model.addAttribute("stats", this.statsService.statsQuarter(fd, td));
        } else
        if (q.equals("q3")){
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date fd = new Date();
            try {
                fd = simpleDateFormat.parse("2022-07-01");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            Date td = new Date();
            try {
                td = simpleDateFormat.parse("2022-09-30");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            model.addAttribute("stats", this.statsService.statsQuarter(fd, td));
        } else
        if (q.equals("q4")){
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date fd = new Date();
            try {
                fd = simpleDateFormat.parse("2022-10-01");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            Date td = new Date();
            try {
                td = simpleDateFormat.parse("2022-12-31");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            model.addAttribute("stats", this.statsService.statsQuarter(fd, td));
        }
        return "stats-quarter";
    }
    
    @RequestMapping("/stats-year")
    public String statsYear(Model model, @RequestParam(value = "year", required = false) String year){
        if (year.equals("2019")){
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date fd = new Date();
            try {
                fd = simpleDateFormat.parse("2019-01-01");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            Date td = new Date();
            try {
                td = simpleDateFormat.parse("2019-12-31");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            model.addAttribute("stats", this.statsService.statsQuarter(fd, td));
        } else
        if (year.equals("2020")){
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date fd = new Date();
            try {
                fd = simpleDateFormat.parse("2020-01-01");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            Date td = new Date();
            try {
                td = simpleDateFormat.parse("2020-12-31");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            model.addAttribute("stats", this.statsService.statsQuarter(fd, td));
        } else
        if (year.equals("2021")){
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date fd = new Date();
            try {
                fd = simpleDateFormat.parse("2021-01-01");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            Date td = new Date();
            try {
                td = simpleDateFormat.parse("2021-12-31");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            model.addAttribute("stats", this.statsService.statsQuarter(fd, td));
        } else
        if (year.equals("2022")){
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date fd = new Date();
            try {
                fd = simpleDateFormat.parse("2022-10-01");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            Date td = new Date();
            try {
                td = simpleDateFormat.parse("2022-12-31");
            } catch (ParseException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            model.addAttribute("stats", this.statsService.statsQuarter(fd, td));
        }
        return "stats-year";
    }
}

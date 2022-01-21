/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.pojo.RecruitJob_;
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

/**
 *
 * @author Asus
 */
@Controller
public class RecruitController {
    @Autowired
    private RecruitJobService recruitJobService;
    
//    @InitBinder
//    public void initBinder(WebDataBinder binder){
//        binder.setValidator(productNameValidator);
//    }
    
    @GetMapping("/recruit-addRecruitJob")
    public String list(Model model){
        model.addAttribute("recruitJob", new RecruitJob());
        return "recruit-addRecruitJob";
    }
    
    @PostMapping("/recruit-addRecruitJob")
    public String add(Model model, @ModelAttribute(value = "recruitJob") @Valid RecruitJob recruitJob, BindingResult result){
        
        if (!result.hasErrors()){
            if (this.recruitJobService.addOrUpdate(recruitJob)==true)
                return "redirect:/job";
            else
                model.addAttribute("errMsg", "System has something wrong!!!");
        }
        return "recruit-addRecruitJob";
    }
}

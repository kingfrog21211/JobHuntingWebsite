/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.controllers;

import com.jobhunting.pojo.User;
import com.jobhunting.service.UserService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Asus
 */
@Controller
public class UserController {
    @Autowired
    private UserService userDetailsService;
    
    @GetMapping("/login")
    public String login(){
        return "login";
    }
    
    @GetMapping("/register")
    public String register(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }
    
    @PostMapping("/register")
    public String addUser(Model model, @ModelAttribute(value = "user") User user) {
        if (user.getPassword().isEmpty() || !user.getPassword().equals(user.getConfirmPassword())) 
            model.addAttribute("errMsg", "Mat khau KHONG khop!!!");
        else {
            if (this.userDetailsService.addUser(user) == true) {
                return "redirect:/login";
            }
            
            model.addAttribute("errMsg", "He thong dang co loi, vui long quay lai sau!!!");
        }
        
        return "register";
    }
    
    @RequestMapping(value = { "/userProfile" }, method = RequestMethod.GET)
    public String userProfile(Model model ) {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User u = this.userDetailsService.getUserByUsername(SecurityContextHolder.getContext().getAuthentication().getName());
        System.out.println(userDetails.getPassword());
        System.out.println(userDetails.getUsername());
        System.out.println(userDetails.isEnabled());
        model.addAttribute("user", this.userDetailsService.getUserByUsername(u.getUsername()));
        model.addAttribute("userDetails", userDetails);
        return "userProfile";
    }
    
}

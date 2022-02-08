/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.jobhunting.handlers.LoginHandler;
import com.jobhunting.handlers.LogoutHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 *
 * @author Asus
 */
@Configuration
@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.jobhunting.repository",
    "com.jobhunting.service",
    "com.jobhunting.handlers"
})
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private LoginHandler loginHandler;
    @Autowired
    private LogoutHandler logoutHandler;
    
    @Bean
    public BCryptPasswordEncoder passwordEncoder(){     //bam mat khau
        return new BCryptPasswordEncoder();
    }
    
    @Bean
    public Cloudinary cloudinary() {
        Cloudinary c = new Cloudinary(ObjectUtils.asMap(    //ObjectUtils de parse thanh dang bam
                "cloud_name", "tcme212", 
                "api_key", "353316144828625", 
                "api_secret", "FIm3qyJNV1GUmfYsJgG4xd1w4-s", 
                "secure",true
        ));
        return c;
    }
    
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {  //chung thuc
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {  //phan quyen
        http.formLogin().loginPage("/login").usernameParameter("username").passwordParameter("password");
        
        http.formLogin().successHandler(this.loginHandler).failureUrl("/login?error");
        
        http.logout().logoutSuccessHandler(this.logoutHandler);
        
        http.authorizeRequests().antMatchers("/").permitAll()
                                .antMatchers("/recruit/**").access("hasRole('ROLE_RECRUIT')");  //phân quyền
        
        http.csrf().disable();
    }
  
}

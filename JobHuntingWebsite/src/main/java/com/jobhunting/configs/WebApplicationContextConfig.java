/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.configs;

import com.cloudinary.utils.ObjectUtils;
import com.jobhunting.formatter.CityFormatter;
import com.jobhunting.formatter.CompanyFormatter;
import com.jobhunting.formatter.DateFormatter;
import com.jobhunting.formatter.ExperienceFormatter;
import com.jobhunting.formatter.ProfessionFormatter;
import com.jobhunting.formatter.SalaryFormatter;
import com.jobhunting.formatter.WorkTypeFormatter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.context.MessageSource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.format.FormatterRegistry;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.multipart.MultipartResolver;

/**
 *
 * @author Asus
 */
@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.jobhunting.controllers",
    "com.jobhunting.repository",
    "com.jobhunting.service"
})
public class WebApplicationContextConfig implements WebMvcConfigurer{
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }
    
    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver(){
        InternalResourceViewResolver resource =  new InternalResourceViewResolver();
        
        resource.setViewClass(JstlView.class);
        resource.setPrefix("/WEB-INF/pages/");
        resource.setSuffix(".jsp");
        
        return resource;
    }
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        registry.addResourceHandler("/images/**").addResourceLocations("/resources/images/");
        registry.addResourceHandler("/css/**").addResourceLocations("/resources/css/");
        registry.addResourceHandler("/fonts/**").addResourceLocations("/resources/fonts/");
        registry.addResourceHandler("/js/**").addResourceLocations("/resources/js/");
    }
    
    @Bean
    public CommonsMultipartResolver multipartResolver(){
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        resolver.setDefaultEncoding("UTF-8");
        return resolver;
    }
    
    @Bean
    public MessageSource messageSource(){
        ResourceBundleMessageSource source = new ResourceBundleMessageSource();
        source.setBasename("messages");
        return source;
    }

    @Override
    public Validator getValidator() {
        return validator();
    }
    
    @Bean
    public LocalValidatorFactoryBean validator(){
        LocalValidatorFactoryBean v = new LocalValidatorFactoryBean();
        v.setValidationMessageSource(messageSource());
        return v;
    }

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addFormatter(new SalaryFormatter());
        registry.addFormatter(new ExperienceFormatter());
        registry.addFormatter(new WorkTypeFormatter());
        registry.addFormatter(new ProfessionFormatter());
        registry.addFormatter(new CityFormatter());
//        registry.addFormatter(new DateFormatter());
        registry.addFormatter(new CompanyFormatter());
    }
    
    @Bean(name = "multipartResolver")
    public MultipartResolver getMultipartResolver() {
        CommonsMultipartResolver resover = new CommonsMultipartResolver();
        // 1MB
        resover.setMaxUploadSize(1 * 1024 * 1024);

        return resover;
    }
}

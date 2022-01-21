/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository.impl;

import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.pojo.Salary;
import com.jobhunting.pojo.Experience;
import com.jobhunting.pojo.Recruit;
import com.jobhunting.pojo.City;
import com.jobhunting.pojo.WorkType;
import com.jobhunting.pojo.Profession;
import com.jobhunting.repository.RecruitJobRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Asus
 */
@Repository
@Transactional
public class RecruitJobRepositoryImpl implements RecruitJobRepository{
    @Autowired
    public LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<RecruitJob> getRecruitJob() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object> query = builder.createQuery(Object.class);
        Root root = query.from(RecruitJob.class);
        
        Root rootSalary = query.from(Salary.class);
        Root rootCity = query.from(City.class);
        Root rootRecruit = query.from(Recruit.class);
        Root rootExp = query.from(Experience.class);
        Root rootWorkType = query.from(WorkType.class);
        Root rootProfession = query.from(Profession.class);
        
        Predicate preSalary = builder.equal(rootSalary.get("salaryId"), root.get("salaryId"));
        Predicate preCity = builder.equal(rootCity.get("cityId"), root.get("cityId"));
        Predicate preRecruit = builder.equal(rootRecruit.get("recruitId"), root.get("recruitId"));
        Predicate preExp = builder.equal(rootExp.get("experienceId"), root.get("experienceId"));
        Predicate preWorkType = builder.equal(rootWorkType.get("workTypeId"), root.get("workTypeId"));
        Predicate preProfession = builder.equal(rootProfession.get("professionId"), root.get("professionId"));
        
        query.multiselect(rootRecruit.get("logo"), 
                            rootRecruit.get("companyName"), 
                            rootSalary.get("salaryValue"), 
                            rootCity.get("cityName"),
                            rootWorkType.get("workTypeName"),
                            rootProfession.get("professionId"),
                            root.get("recruitJobId"), root.get("title"),root.get("position"), root.get("amount"), root.get("require"), root.get("description"), root.get("workPlace"), root.get("benefit"), root.get("postDate"), root.get("expirationDate"), root.get("emailContact"), root.get("nameContact"), root.get("phoneContact"), root.get("status"),
                            rootRecruit.get("recruitId"), rootExp.get("experienceId"));
        query = query.where(builder.and(preCity,preRecruit,preSalary, preExp,preWorkType,preProfession));
        query.orderBy(builder.desc(root.get("recruitJobId")));
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public List<RecruitJob> getRecruitJobBySearching(Integer cityId, Integer professionId, Integer workTypeId, Integer salaryId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object> query = builder.createQuery(Object.class);
        Root root = query.from(RecruitJob.class);
        
        Root rootSalary = query.from(Salary.class);
        Root rootCity = query.from(City.class);
        Root rootRecruit = query.from(Recruit.class);
        Root rootExp = query.from(Experience.class);
        Root rootWorkType = query.from(WorkType.class);
        Root rootProfession = query.from(Profession.class);

        Predicate preSalary = builder.equal(rootSalary.get("salaryId"), root.get("salaryId"));
        Predicate preCity = builder.equal(rootCity.get("cityId"), root.get("cityId"));
        Predicate preRecruit = builder.equal(rootRecruit.get("recruitId"), root.get("recruitId"));
        Predicate preExp = builder.equal(rootExp.get("experienceId"), root.get("experienceId"));
        Predicate preWorkType = builder.equal(rootWorkType.get("workTypeId"), root.get("workTypeId"));
        Predicate preProfession = builder.equal(rootProfession.get("professionId"), root.get("professionId"));
        
        query.multiselect(rootRecruit.get("logo"), 
                            rootRecruit.get("companyName"), 
                            rootSalary.get("salaryValue"), 
                            rootCity.get("cityName"),
                            rootWorkType.get("workTypeName"),
                            rootProfession.get("professionId"),
                            root.get("recruitJobId"), root.get("title"),root.get("position"), root.get("amount"), root.get("require"), root.get("description"), root.get("workPlace"), root.get("benefit"), root.get("postDate"), root.get("expirationDate"), root.get("emailContact"), root.get("nameContact"), root.get("phoneContact"), root.get("status"),
                            rootRecruit.get("recruitId"), rootExp.get("experienceId"));
        
        if (cityId!=null && professionId==null && workTypeId==null && salaryId==null) {
            Predicate p2 = builder.equal(root.get("cityId"), cityId);
            query.where(builder.and(p2,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId==null && professionId!=null && workTypeId==null && salaryId==null) {
            Predicate p3 = builder.equal(root.get("professionId"),professionId);
            query.where(builder.and(p3,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId==null && professionId==null && workTypeId!=null && salaryId==null) {
            Predicate p4 = builder.equal(root.get("workTypeId"), workTypeId);
            query.where(builder.and(p4,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }  
        else if (cityId==null && professionId==null && workTypeId==null && salaryId!=null) {
            Predicate p5 = builder.equal(root.get("salaryId"),salaryId);
            query.where(builder.and(p5,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId!=null && professionId!=null && workTypeId==null && salaryId==null) {
            Predicate p2 = builder.equal(root.get("cityId"), cityId);
            Predicate p3 = builder.equal(root.get("professionId"),professionId);
            query.where(builder.and(p2,p3,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId!=null && professionId==null && workTypeId!=null && salaryId==null) {
            Predicate p2 = builder.equal(root.get("cityId"), cityId);
            Predicate p4 = builder.equal(root.get("workTypeId"), workTypeId);
            query.where(builder.and(p2,p4,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId!=null && professionId==null && workTypeId==null && salaryId!=null) {
            Predicate p2 = builder.equal(root.get("cityId"), cityId);
            Predicate p5 = builder.equal(root.get("salaryId"),salaryId);
            query.where(builder.and(p2,p5,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId==null && professionId!=null && workTypeId!=null && salaryId==null) {
            Predicate p3 = builder.equal(root.get("professionId"),professionId);
            Predicate p4 = builder.equal(root.get("workTypeId"), workTypeId);
            query.where(builder.and(p3,p4,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId==null && professionId==null && workTypeId!=null && salaryId!=null) {
            Predicate p4 = builder.equal(root.get("workTypeId"), workTypeId);
            Predicate p5 = builder.equal(root.get("salaryId"),salaryId);
            query.where(builder.and(p4,p5,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId!=null && professionId!=null && workTypeId!=null && salaryId==null) {
            Predicate p2 = builder.equal(root.get("cityId"), cityId);
            Predicate p3 = builder.equal(root.get("professionId"),professionId);
            Predicate p4 = builder.equal(root.get("workTypeId"), workTypeId);
            query.where(builder.and(p2,p3,p4,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId!=null && professionId!=null && workTypeId==null && salaryId!=null) {
            Predicate p2 = builder.equal(root.get("cityId"), cityId);
            Predicate p3 = builder.equal(root.get("professionId"),professionId);
            Predicate p5 = builder.equal(root.get("salaryId"),salaryId);
            query.where(builder.and(p2,p3,p5,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId!=null && professionId==null && workTypeId!=null && salaryId!=null) {
            Predicate p2 = builder.equal(root.get("cityId"), cityId);
            Predicate p4 = builder.equal(root.get("workTypeId"), workTypeId);
            Predicate p5 = builder.equal(root.get("salaryId"),salaryId);
            query.where(builder.and(p2,p4,p5,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId==null && professionId!=null && workTypeId!=null && salaryId!=null) {
            Predicate p3 = builder.equal(root.get("professionId"),professionId);
            Predicate p4 = builder.equal(root.get("workTypeId"), workTypeId);
            Predicate p5 = builder.equal(root.get("salaryId"),salaryId);
            query.where(builder.and(p3,p4,p5,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        else if (cityId!=null && professionId!=null && workTypeId!=null && salaryId!=null){
            Predicate p2 = builder.equal(root.get("cityId"),cityId);
            Predicate p3 = builder.equal(root.get("professionId"), professionId);
            Predicate p4 = builder.equal(root.get("workTypeId"), workTypeId);
            Predicate p5 = builder.equal(root.get("salaryId"), salaryId);
            query.where(builder.and(p2,p3,p4,p5,preSalary, preCity, preRecruit,preExp,preWorkType,preProfession));
        }
        query.orderBy(builder.desc(root.get("recruitJobId")));
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public RecruitJob getRecruitJobById(Integer id) {
        return this.sessionFactory.getObject().getCurrentSession().get(RecruitJob.class, id);
    }
    
    @Override
    public Object getJobDetail(Integer id){
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object> query = builder.createQuery(Object.class);
        Root root = query.from(RecruitJob.class);
        
        Root rootSalary = query.from(Salary.class);
        Root rootCity = query.from(City.class);
        Root rootRecruit = query.from(Recruit.class);
        Root rootExp = query.from(Experience.class);
        Root rootWorkType = query.from(WorkType.class);
        Root rootProfession = query.from(Profession.class);
        
        Predicate preSalary = builder.equal(rootSalary.get("salaryId"), root.get("salaryId"));
        Predicate preCity = builder.equal(rootCity.get("cityId"), root.get("cityId"));
        Predicate preRecruit = builder.equal(rootRecruit.get("recruitId"), root.get("recruitId"));
        Predicate preExp = builder.equal(rootExp.get("experienceId"), root.get("experienceId"));
        Predicate preWorkType = builder.equal(rootWorkType.get("workTypeId"), root.get("workTypeId"));
        Predicate preProfession = builder.equal(rootProfession.get("professionId"), root.get("professionId"));
        Predicate pre = builder.equal(root.get("recruitJobId"), id);
        
        query.multiselect(rootRecruit.get("logo"), 
                            rootRecruit.get("companyName"), 
                            rootSalary.get("salaryValue"), 
                            rootCity.get("cityName"),
                            rootWorkType.get("workTypeName"),
                            rootProfession.get("professionId"),
                            root.get("recruitJobId"), root.get("title"),root.get("position"), root.get("amount"), root.get("require"), root.get("description"), root.get("workPlace"), root.get("benefit"), root.get("postDate"), root.get("expirationDate"), root.get("emailContact"), root.get("nameContact"), root.get("phoneContact"), root.get("status"),
                            rootRecruit.get("recruitId"), rootExp.get("experienceId"));
        query = query.where(builder.and(pre, preCity,preRecruit,preSalary, preExp,preWorkType,preProfession));
        
        Object o = session.createQuery(query).uniqueResult();
        return o;
    }

    @Override
    public List<RecruitJob> getRecruitJobByRecruitId(Integer recruitId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object> query = builder.createQuery(Object.class);
        Root root = query.from(RecruitJob.class);
        
        Root rootSalary = query.from(Salary.class);
        Root rootCity = query.from(City.class);
        Root rootRecruit = query.from(Recruit.class);
        Root rootExp = query.from(Experience.class);
        Root rootWorkType = query.from(WorkType.class);
        Root rootProfession = query.from(Profession.class);
        
        Predicate preSalary = builder.equal(rootSalary.get("salaryId"), root.get("salaryId"));
        Predicate preCity = builder.equal(rootCity.get("cityId"), root.get("cityId"));
        Predicate preRecruit = builder.equal(rootRecruit.get("recruitId"), root.get("recruitId"));
        Predicate preExp = builder.equal(rootExp.get("experienceId"), root.get("experienceId"));
        Predicate preWorkType = builder.equal(rootWorkType.get("workTypeId"), root.get("workTypeId"));
        Predicate preProfession = builder.equal(rootProfession.get("professionId"), root.get("professionId"));
        Predicate p = builder.equal(root.get("recruitId"), recruitId);
        
        query.multiselect(rootRecruit.get("logo"), 
                            rootRecruit.get("companyName"), 
                            rootSalary.get("salaryValue"), 
                            rootCity.get("cityName"),
                            rootWorkType.get("workTypeName"),
                            rootProfession.get("professionId"),
                            root.get("recruitJobId"), root.get("title"),root.get("position"), root.get("amount"), root.get("require"), root.get("description"), root.get("workPlace"), root.get("benefit"), root.get("postDate"), root.get("expirationDate"), root.get("emailContact"), root.get("nameContact"), root.get("phoneContact"), root.get("status"),
                            rootRecruit.get("recruitId"), rootExp.get("experienceId"));
        query = query.where(builder.and(p,preCity,preRecruit,preSalary, preExp,preWorkType,preProfession));
        query.orderBy(builder.desc(root.get("recruitJobId")));
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public List<RecruitJob> getRecruitJobByKW(String kw) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object> query = builder.createQuery(Object.class);
        Root root = query.from(RecruitJob.class);
        
        Root rootSalary = query.from(Salary.class);
        Root rootCity = query.from(City.class);
        Root rootRecruit = query.from(Recruit.class);
        Root rootExp = query.from(Experience.class);
        Root rootWorkType = query.from(WorkType.class);
        Root rootProfession = query.from(Profession.class);
        
        Predicate preSalary = builder.equal(rootSalary.get("salaryId"), root.get("salaryId"));
        Predicate preCity = builder.equal(rootCity.get("cityId"), root.get("cityId"));
        Predicate preRecruit = builder.equal(rootRecruit.get("recruitId"), root.get("recruitId"));
        Predicate preExp = builder.equal(rootExp.get("experienceId"), root.get("experienceId"));
        Predicate preWorkType = builder.equal(rootWorkType.get("workTypeId"), root.get("workTypeId"));
        Predicate preProfession = builder.equal(rootProfession.get("professionId"), root.get("professionId"));
        Predicate p = builder.like(root.get("title").as(String.class), String.format("%%%s%%", kw));
        
        query.multiselect(rootRecruit.get("logo"), 
                            rootRecruit.get("companyName"), 
                            rootSalary.get("salaryValue"), 
                            rootCity.get("cityName"),
                            rootWorkType.get("workTypeName"),
                            rootProfession.get("professionId"),
                            root.get("recruitJobId"), root.get("title"),root.get("position"), root.get("amount"), root.get("require"), root.get("description"), root.get("workPlace"), root.get("benefit"), root.get("postDate"), root.get("expirationDate"), root.get("emailContact"), root.get("nameContact"), root.get("phoneContact"), root.get("status"),
                            rootRecruit.get("recruitId"), rootExp.get("experienceId"));
        query = query.where(builder.and(p,preCity,preRecruit,preSalary, preExp,preWorkType,preProfession));
        query.orderBy(builder.desc(root.get("recruitJobId")));
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public boolean addOrUpdate(RecruitJob rj) {
        Session session =  this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(rj);
            return true;
        }catch(Exception ex){
            System.err.println("==ADD PRODUCT ERROR== "+ ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }
    
}

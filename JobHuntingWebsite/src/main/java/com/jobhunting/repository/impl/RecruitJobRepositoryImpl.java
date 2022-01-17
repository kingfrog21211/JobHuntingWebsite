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
        Predicate preSalary = builder.equal(rootSalary.get("salaryId"), root.get("salaryId"));
        Predicate preCity = builder.equal(rootCity.get("cityId"), root.get("cityId"));
        Predicate preRecruit = builder.equal(rootRecruit.get("recruitId"), root.get("recruitId"));
        query.multiselect(root.get("recruitJobId"), root.get("title"), root.get("postDate"), root.get("expirationDate"), 
                            rootRecruit.get("logo"), 
                            rootRecruit.get("companyName"), 
                            rootSalary.get("salaryValue"), 
                            rootCity.get("cityName"));
        query = query.where(builder.and(preCity,preRecruit,preSalary));
        query.orderBy(builder.desc(root.get("recruitJobId")));
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public List<RecruitJob> getRecruitJobByProfessionId(Integer professionId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<RecruitJob> query = builder.createQuery(RecruitJob.class);
        Root root = query.from(RecruitJob.class);
        query = query.select(root);
        
//        Root rootSalary = query.from(Salary.class);
//        Root rootCity = query.from(City.class);
//        Root rootRecruit = query.from(Recruit.class);
//        query.multiselect(root.get("recruitJobId"), 
//                            rootRecruit.get("logo"), 
//                            rootRecruit.get("companyName"), 
//                            root.get("title"),
//                            rootSalary.get("salaryValue"), 
//                            rootCity.get("cityName"));
        
        query = query.where(builder.equal(root.get("professionId"), professionId));
        
        query = query.orderBy(builder.desc(root.get("recruitJobId")));
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public List<RecruitJob> getRecruitJobBySearching(String titles, Integer cityId, Integer professionId, Integer workTypeId, Integer salaryId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<RecruitJob> query = builder.createQuery(RecruitJob.class);
        Root root = query.from(RecruitJob.class);
        
        Root rootSalary = query.from(Salary.class);
        Root rootCity = query.from(City.class);
        Root rootWorkType = query.from(WorkType.class);
        Root rootProfession = query.from(Profession.class);
        Root rootRecruit = query.from(Recruit.class);

        Predicate preSalary = builder.equal(rootSalary.get("salaryId"), root.get("salaryId"));
        Predicate preCity = builder.equal(rootCity.get("cityId"), root.get("cityId"));
        Predicate preProfession = builder.equal(rootProfession.get("professionId"), root.get("professionId"));
        Predicate preWorkType = builder.equal(rootWorkType.get("workTypeId"), root.get("workTypeId"));

        //hien thi tren page Jobs
        query.multiselect(root.get("recruitJobId"), 
                            rootRecruit.get("logo"), 
                            rootRecruit.get("companyName"), 
                            root.get("title"),
                            rootSalary.get("salaryValue"), 
                            rootCity.get("cityName"));
        if (titles!=null && !titles.isEmpty()) {
            Predicate p1 = builder.like(root.get("title").as(String.class), String.format("%%%s%%", titles));
            Predicate p2 = builder.like(root.get("cityId").as(String.class), String.format("%%%s%%", cityId));
            Predicate p3 = builder.like(root.get("professionId").as(String.class), String.format("%%%s%%", professionId));
            Predicate p4 = builder.like(root.get("workTypeId").as(String.class), String.format("%%%s%%", workTypeId));
            Predicate p5 = builder.like(root.get("salaryId").as(String.class), String.format("%%%s%%", salaryId));
            query.where(builder.and(p1,p2,p3,p4,p5));
        }
        query.orderBy(builder.desc(root.get("recruitJobId")));
        Query q = session.createQuery(query);
        return q.getResultList();
    }
    
}

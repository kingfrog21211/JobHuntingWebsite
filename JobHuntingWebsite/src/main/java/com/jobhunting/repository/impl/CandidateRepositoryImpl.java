/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository.impl;

import com.jobhunting.pojo.Candidate;
import com.jobhunting.pojo.City;
import com.jobhunting.pojo.Experience;
import com.jobhunting.pojo.Profession;
import com.jobhunting.pojo.Recruit;
import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.pojo.Salary;
import com.jobhunting.pojo.User;
import com.jobhunting.pojo.WorkType;
import com.jobhunting.repository.CandidateRepository;
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
public class CandidateRepositoryImpl implements CandidateRepository{
    @Autowired
    public LocalSessionFactoryBean sessionFactory;

    @Override
    public Candidate getCandidateByUserId(Integer id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Candidate> query = builder.createQuery(Candidate.class);
        Root root = query.from(Candidate.class);
        query = query.select(root);
        
        query = query.where(builder.equal(root.get("userId"), id));
        
        Candidate c = session.createQuery(query).uniqueResult();
        return c;
    }

    
    @Override
    public List<Candidate> getCandidate() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Candidate> query = builder.createQuery(Candidate.class);
        Root root = query.from(Candidate.class);
        query = query.select(root);
        
        Root rootProfession = query.from(Profession.class);
        Root rootUser = query.from(User.class);
        Root rootCity = query.from(City.class);
        
        Predicate preProfession = builder.equal(rootProfession.get("professionId"), root.get("professionId"));
        Predicate preCity = builder.equal(rootCity.get("cityId"), root.get("cityId"));
        Predicate preUser = builder.equal(rootUser.get("userId"), root.get("userId"));
        query.multiselect(rootUser.get("username"), 
                            rootCity.get("cityName"),
                            rootProfession.get("professionId"),
                            root.get("candidateId"), root.get("fullName"),root.get("cityId"), root.get("email"), root.get("gender"), root.get("address"), root.get("status"), root.get("phone"), root.get("dateOfBirth"), root.get("description"), root.get("experience"), root.get("pathCV"), root.get("describeCV"),
                            rootUser.get("userId"), rootCity.get("cityId"));
        query = query.where(builder.and(preCity,preUser,preProfession));
        query.orderBy(builder.desc(root.get("candidateId")));
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }

    @Override
    public List<Candidate> getCandidateBySearching(Integer candidateId, Integer professionId, Integer userId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object> query = builder.createQuery(Object.class);
        Root root = query.from(Candidate.class);
        
        Root rootProfession = query.from(Profession.class);
        Root rootUser = query.from(User.class);
        Root rootCity = query.from(City.class);

        Predicate preProfession = builder.equal(rootProfession.get("professionId"), root.get("professionId"));
        Predicate preUser = builder.equal(rootUser.get("userId"), root.get("userId"));
        
        query.multiselect(rootUser.get("username"), 
                            rootProfession.get("professionId"),
                            root.get("candidateId"), root.get("fullName"),root.get("cityId"), root.get("email"), root.get("gender"), root.get("address"), root.get("status"), root.get("phone"), root.get("dateOfBirth"), root.get("description"), root.get("experience"), root.get("pathCV"), root.get("describeCV"),
                            rootUser.get("userId"), rootCity.get("cityId"));
        
        if (professionId!=null && userId==null) {
            Predicate p2 = builder.equal(root.get("profession"), professionId);
            query.where(builder.and(p2,preUser,preProfession));
        }
        else if (professionId==null && userId!=null) {
            Predicate p3 = builder.equal(root.get("userId"),userId);
            query.where(builder.and(p3,preUser,preProfession));
        }
        query.orderBy(builder.desc(root.get("candidateId")));
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public Candidate getCandidateById(Integer id) {
        return this.sessionFactory.getObject().getCurrentSession().get(Candidate.class, id);
    }

    @Override
    public Object getCandidateDetail(Integer id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object> query = builder.createQuery(Object.class);
        Root root = query.from(Candidate.class);
        
        Root rootUser = query.from(User.class);
        Root rootProfession = query.from(Profession.class);
        Root rootCity = query.from(City.class);
        
        Predicate preCity = builder.equal(rootCity.get("cityId"), root.get("cityId"));
        Predicate preUser = builder.equal(rootUser.get("userId"), root.get("userId"));
        Predicate preProfession = builder.equal(rootProfession.get("professionId"), root.get("professionId"));
        Predicate pre = builder.equal(root.get("candidateId"), id);
        
        query.multiselect(  rootCity.get("cityName"),
                            rootProfession.get("professionId"),
                            root.get("candidateId"), root.get("fullname"),root.get("email"), root.get("phone"), root.get("status"), root.get("description"), root.get("pathCV"), root.get("dateOfBirth"), root.get("experience"), root.get("gender"), root.get("describeCV"), root.get("address"),
                            rootUser.get("userId"));
        query = query.where(builder.and(pre, preCity, preUser, preProfession));
        
        Object o = session.createQuery(query).uniqueResult();
        return o;
    }

    @Override
    public List<Candidate> getCandidateByKW(String kw) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object> query = builder.createQuery(Object.class);
        Root root = query.from(Candidate.class);
        
        Root rootUser = query.from(User.class);
        Root rootProfession = query.from(Profession.class);
        Root rootCity = query.from(City.class);
        
        Predicate preCity = builder.equal(rootCity.get("cityId"), root.get("cityId"));
        Predicate preUser = builder.equal(rootUser.get("userId"), root.get("userId"));
        Predicate preProfession = builder.equal(rootProfession.get("professionId"), root.get("professionId"));
        
        Predicate p = builder.like(root.get("title").as(String.class), String.format("%%%s%%", kw));
        
        query.multiselect(  rootCity.get("cityName"),
                            rootProfession.get("professionId"),
                            root.get("candidateId"), root.get("fullname"),root.get("email"), root.get("phone"), root.get("status"), root.get("description"), root.get("pathCV"), root.get("dateOfBirth"), root.get("experience"), root.get("gender"), root.get("describeCV"), root.get("address"),
                            rootUser.get("userId"));
        query = query.where(builder.and(p, preCity, preUser, preProfession));
        query.orderBy(builder.desc(root.get("candidateId")));
        Query q = session.createQuery(query);
        return q.getResultList();
    }
    
}

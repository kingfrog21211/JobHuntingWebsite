/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository.impl;

import com.jobhunting.pojo.City;
import com.jobhunting.pojo.Experience;
import com.jobhunting.pojo.Profession;
import com.jobhunting.pojo.Recruit;
import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.pojo.Salary;
import com.jobhunting.pojo.WorkType;
import com.jobhunting.repository.CompanyRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
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
public class CompanyRepositoryImpl implements CompanyRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Recruit> getCompany() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("FROM Recruit");
        
        return q.getResultList();
    }

    @Override
    public Recruit getCompanyByRecruitId(Integer recruitId) {
        return this.sessionFactory.getObject().getCurrentSession().get(Recruit.class, recruitId);
    }

    @Override
    public Recruit getRecruitByUserId(Integer userId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Recruit> query = builder.createQuery(Recruit.class);
        Root root = query.from(Recruit.class);
        query = query.where(builder.equal(root.get("userId"), userId));
        query.orderBy(builder.desc(root.get("recruitId")));
        Query q = session.createQuery(query);
        return (Recruit) q.getSingleResult();
    }
}

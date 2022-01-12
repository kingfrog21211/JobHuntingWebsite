package com.jobhunting.repository.impl;


import com.jobhunting.pojo.Career;
import com.jobhunting.repository.CareerRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Asus
 */
@Repository
@Transactional
public class CareerRepositoryImpl implements CareerRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Career> getCareers() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("FROM Career");
        
        return q.getResultList();
    }

    @Override
    public Career getCareerById(Integer careerId) {
        return this.sessionFactory.getObject().getCurrentSession().get(Career.class, careerId);
    }
    
}

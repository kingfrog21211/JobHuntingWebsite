/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository.impl;

import com.jobhunting.pojo.CandidatePostResume;
import com.jobhunting.repository.CandidatePostResumeRepository;
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
public class CandidatePostResumeRepositoryImpl implements CandidatePostResumeRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addCV(CandidatePostResume cv) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        try {
            session.save(cv);
            
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }
        
        return false;
    }

    @Override
    public CandidatePostResume getCVById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        return session.get(CandidatePostResume.class, id); 
    }
    
}

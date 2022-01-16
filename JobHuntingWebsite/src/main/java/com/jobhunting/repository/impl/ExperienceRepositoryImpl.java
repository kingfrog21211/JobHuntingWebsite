/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository.impl;

import com.jobhunting.pojo.Experience;
import com.jobhunting.repository.ExperienceRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
/**
 *
 * @author Asus
 */
@Repository
@Transactional
public class ExperienceRepositoryImpl implements ExperienceRepository{
    @Autowired
    public LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Experience> getExperiences() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("FROM Experience");
        
        return q.getResultList();
    }
    
}

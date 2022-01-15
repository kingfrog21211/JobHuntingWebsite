/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository.impl;

import com.jobhunting.pojo.Profession;
import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.repository.ProfessionRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
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
public class ProfessionRepositoryImpl implements ProfessionRepository{
    @Autowired
    public LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Profession> getProfessions() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("FROM Profession");
        
        return q.getResultList();
    }

    @Override
    public List<Profession> getProfessionByCareerId(Integer careerId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Profession> query = builder.createQuery(Profession.class);
        Root root = query.from(Profession.class);
        query = query.select(root);
        
        query = query.where(builder.equal(root.get("careerId"), careerId));
        
        query = query.orderBy(builder.desc(root.get("professionId")));
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }
    
}

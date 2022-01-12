/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository.impl;

import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.repository.RecruitJobRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Asus
 */
@Repository
public class RecruitJobRepositoryImpl implements RecruitJobRepository{
    @Autowired
    public LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<RecruitJob> getRecruitJob() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("FROM RecruitJob");
        
        return q.getResultList();
    }

    @Override
    public List<RecruitJob> getRecruitJobByCareerId(Integer careerId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<RecruitJob> query = builder.createQuery(RecruitJob.class);
        Root root = query.from(RecruitJob.class);
        query = query.select(root);
        
        query = query.where(builder.equal(root.get("careerId"), careerId));
        
        query = query.orderBy(builder.desc(root.get("recruitJobId")));
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }
    
}

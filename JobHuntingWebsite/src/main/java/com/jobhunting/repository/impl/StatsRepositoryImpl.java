/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository.impl;

import com.jobhunting.pojo.Candidate;
import com.jobhunting.pojo.CandidatePostResume;
import com.jobhunting.pojo.Profession;
import com.jobhunting.pojo.RecruitJob;
import com.jobhunting.repository.StatsRepository;
import java.util.Date;
import java.util.Calendar;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import org.hibernate.Session;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import javax.persistence.criteria.Root;
import org.hibernate.query.Query;

/**
 *
 * @author Asus
 */
@Repository
@Transactional
public class StatsRepositoryImpl implements StatsRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Object[]> statsQuarter(Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        Root rootC = query.from(CandidatePostResume.class);
        Root rootR = query.from(RecruitJob.class);
        Root rootP = query.from(Profession.class);
        
        Predicate cr = builder.equal(rootC.get("recruitJobId"), rootR.get("recruitJobId"));
        Predicate rp = builder.equal(rootR.get("professionId"), rootP.get("professionId"));

        query.multiselect(rootP.get("professionId"), rootP.get("professionName"),
                 builder.count(rootC.get("candidatePostResumeId")), rootC.get("postDate"));
                
        Predicate from = builder.greaterThanOrEqualTo(rootC.get("postDate"), fromDate);
        Predicate to = builder.lessThanOrEqualTo(rootC.get("postDate"), toDate);

        query = query.where(builder.and(cr, rp, from, to));
        query = query.groupBy(rootP.get("professionId"));
        
        Query q = session.createQuery(query);
        
        return q.getResultList();
        
    }

    public long countTotalCandidate() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        String countQ = "Select count (c.candidateId) from Candidate c";
        Query countQuery = session.createQuery(countQ);
        return (Long) countQuery.uniqueResult();
    }

    @Override
    public List<Object[]> professionStats() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        
        Root rootCandidate = query.from(Candidate.class);
        Root rootProfession = query.from(Profession.class);
        
        query.where(builder.equal(rootProfession.get("professionId"), rootCandidate.get("professionId")));
        query.multiselect(rootProfession.get("professionId"), rootProfession.get("professionName"),
                builder.count(rootCandidate.get("candidateId"))
        );
        query.groupBy(rootProfession.get("professionId"));
        
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }
    
}

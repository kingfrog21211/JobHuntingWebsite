/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Asus
 */
@Entity
@Table(name = "save_job")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SaveJob.findAll", query = "SELECT s FROM SaveJob s"),
    @NamedQuery(name = "SaveJob.findBySaveJobId", query = "SELECT s FROM SaveJob s WHERE s.saveJobId = :saveJobId")})
public class SaveJob implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "saveJobId")
    private Integer saveJobId;
    @JoinColumn(name = "candidateId", referencedColumnName = "candidateId")
    @ManyToOne(optional = false)
    private Candidate candidateId;
    @JoinColumn(name = "recruitJobId", referencedColumnName = "recruitJobId")
    @ManyToOne(optional = false)
    private RecruitJob recruitJobId;

    public SaveJob() {
    }

    public SaveJob(Integer saveJobId) {
        this.saveJobId = saveJobId;
    }

    public Integer getSaveJobId() {
        return saveJobId;
    }

    public void setSaveJobId(Integer saveJobId) {
        this.saveJobId = saveJobId;
    }

    public Candidate getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(Candidate candidateId) {
        this.candidateId = candidateId;
    }

    public RecruitJob getRecruitJobId() {
        return recruitJobId;
    }

    public void setRecruitJobId(RecruitJob recruitJobId) {
        this.recruitJobId = recruitJobId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (saveJobId != null ? saveJobId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SaveJob)) {
            return false;
        }
        SaveJob other = (SaveJob) object;
        if ((this.saveJobId == null && other.saveJobId != null) || (this.saveJobId != null && !this.saveJobId.equals(other.saveJobId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobhunting.pojo.SaveJob[ saveJobId=" + saveJobId + " ]";
    }
    
}

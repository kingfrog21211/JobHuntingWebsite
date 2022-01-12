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
@Table(name = "save_candidate")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SaveCandidate.findAll", query = "SELECT s FROM SaveCandidate s"),
    @NamedQuery(name = "SaveCandidate.findBySaveCandidateId", query = "SELECT s FROM SaveCandidate s WHERE s.saveCandidateId = :saveCandidateId")})
public class SaveCandidate implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "saveCandidateId")
    private Integer saveCandidateId;
    @JoinColumn(name = "candidateId", referencedColumnName = "candidateId")
    @ManyToOne(optional = false)
    private Candidate candidateId;
    @JoinColumn(name = "recruitId", referencedColumnName = "recruitId")
    @ManyToOne(optional = false)
    private Recruit recruitId;

    public SaveCandidate() {
    }

    public SaveCandidate(Integer saveCandidateId) {
        this.saveCandidateId = saveCandidateId;
    }

    public Integer getSaveCandidateId() {
        return saveCandidateId;
    }

    public void setSaveCandidateId(Integer saveCandidateId) {
        this.saveCandidateId = saveCandidateId;
    }

    public Candidate getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(Candidate candidateId) {
        this.candidateId = candidateId;
    }

    public Recruit getRecruitId() {
        return recruitId;
    }

    public void setRecruitId(Recruit recruitId) {
        this.recruitId = recruitId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (saveCandidateId != null ? saveCandidateId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SaveCandidate)) {
            return false;
        }
        SaveCandidate other = (SaveCandidate) object;
        if ((this.saveCandidateId == null && other.saveCandidateId != null) || (this.saveCandidateId != null && !this.saveCandidateId.equals(other.saveCandidateId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobhunting.pojo.SaveCandidate[ saveCandidateId=" + saveCandidateId + " ]";
    }
    
}

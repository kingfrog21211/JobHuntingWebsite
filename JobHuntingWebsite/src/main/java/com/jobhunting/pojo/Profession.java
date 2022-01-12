/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.pojo;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Asus
 */
@Entity
@Table(name = "profession")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Profession.findAll", query = "SELECT p FROM Profession p"),
    @NamedQuery(name = "Profession.findByProfessionId", query = "SELECT p FROM Profession p WHERE p.professionId = :professionId"),
    @NamedQuery(name = "Profession.findByProfessionName", query = "SELECT p FROM Profession p WHERE p.professionName = :professionName")})
public class Profession implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "professionId")
    private Integer professionId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "professionName")
    private String professionName;
    @JoinColumn(name = "careerId", referencedColumnName = "careerId")
    @ManyToOne(optional = false)
    private Career careerId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "professionId")
    private Set<Candidate> candidateSet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "professionId")
    private Set<RecruitJob> recruitJobSet;

    public Profession() {
    }

    public Profession(Integer professionId) {
        this.professionId = professionId;
    }

    public Profession(Integer professionId, String professionName) {
        this.professionId = professionId;
        this.professionName = professionName;
    }

    public Integer getProfessionId() {
        return professionId;
    }

    public void setProfessionId(Integer professionId) {
        this.professionId = professionId;
    }

    public String getProfessionName() {
        return professionName;
    }

    public void setProfessionName(String professionName) {
        this.professionName = professionName;
    }

    public Career getCareerId() {
        return careerId;
    }

    public void setCareerId(Career careerId) {
        this.careerId = careerId;
    }

    @XmlTransient
    public Set<Candidate> getCandidateSet() {
        return candidateSet;
    }

    public void setCandidateSet(Set<Candidate> candidateSet) {
        this.candidateSet = candidateSet;
    }

    @XmlTransient
    public Set<RecruitJob> getRecruitJobSet() {
        return recruitJobSet;
    }

    public void setRecruitJobSet(Set<RecruitJob> recruitJobSet) {
        this.recruitJobSet = recruitJobSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (professionId != null ? professionId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Profession)) {
            return false;
        }
        Profession other = (Profession) object;
        if ((this.professionId == null && other.professionId != null) || (this.professionId != null && !this.professionId.equals(other.professionId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobhunting.pojo.Profession[ professionId=" + professionId + " ]";
    }
    
}

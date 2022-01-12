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
@Table(name = "experience")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Experience.findAll", query = "SELECT e FROM Experience e"),
    @NamedQuery(name = "Experience.findByExperienceId", query = "SELECT e FROM Experience e WHERE e.experienceId = :experienceId"),
    @NamedQuery(name = "Experience.findByExperienceValue", query = "SELECT e FROM Experience e WHERE e.experienceValue = :experienceValue")})
public class Experience implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "experienceId")
    private Integer experienceId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "experienceValue")
    private String experienceValue;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "experienceId")
    private Set<RecruitJob> recruitJobSet;

    public Experience() {
    }

    public Experience(Integer experienceId) {
        this.experienceId = experienceId;
    }

    public Experience(Integer experienceId, String experienceValue) {
        this.experienceId = experienceId;
        this.experienceValue = experienceValue;
    }

    public Integer getExperienceId() {
        return experienceId;
    }

    public void setExperienceId(Integer experienceId) {
        this.experienceId = experienceId;
    }

    public String getExperienceValue() {
        return experienceValue;
    }

    public void setExperienceValue(String experienceValue) {
        this.experienceValue = experienceValue;
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
        hash += (experienceId != null ? experienceId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Experience)) {
            return false;
        }
        Experience other = (Experience) object;
        if ((this.experienceId == null && other.experienceId != null) || (this.experienceId != null && !this.experienceId.equals(other.experienceId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobhunting.pojo.Experience[ experienceId=" + experienceId + " ]";
    }
    
}

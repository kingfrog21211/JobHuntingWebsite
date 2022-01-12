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
@Table(name = "work_type")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "WorkType.findAll", query = "SELECT w FROM WorkType w"),
    @NamedQuery(name = "WorkType.findByWorkTypeId", query = "SELECT w FROM WorkType w WHERE w.workTypeId = :workTypeId"),
    @NamedQuery(name = "WorkType.findByWorkTypeName", query = "SELECT w FROM WorkType w WHERE w.workTypeName = :workTypeName")})
public class WorkType implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "workTypeId")
    private Integer workTypeId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "workTypeName")
    private String workTypeName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "workTypeId")
    private Set<RecruitJob> recruitJobSet;

    public WorkType() {
    }

    public WorkType(Integer workTypeId) {
        this.workTypeId = workTypeId;
    }

    public WorkType(Integer workTypeId, String workTypeName) {
        this.workTypeId = workTypeId;
        this.workTypeName = workTypeName;
    }

    public Integer getWorkTypeId() {
        return workTypeId;
    }

    public void setWorkTypeId(Integer workTypeId) {
        this.workTypeId = workTypeId;
    }

    public String getWorkTypeName() {
        return workTypeName;
    }

    public void setWorkTypeName(String workTypeName) {
        this.workTypeName = workTypeName;
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
        hash += (workTypeId != null ? workTypeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof WorkType)) {
            return false;
        }
        WorkType other = (WorkType) object;
        if ((this.workTypeId == null && other.workTypeId != null) || (this.workTypeId != null && !this.workTypeId.equals(other.workTypeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobhunting.pojo.WorkType[ workTypeId=" + workTypeId + " ]";
    }
    
}

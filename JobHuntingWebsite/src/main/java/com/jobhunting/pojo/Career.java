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
@Table(name = "career")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Career.findAll", query = "SELECT c FROM Career c"),
    @NamedQuery(name = "Career.findByCareerId", query = "SELECT c FROM Career c WHERE c.careerId = :careerId"),
    @NamedQuery(name = "Career.findByCareerName", query = "SELECT c FROM Career c WHERE c.careerName = :careerName")})
public class Career implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "careerId")
    private Integer careerId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "careerName")
    private String careerName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "careerId")
    private Set<Profession> professionSet;

    public Career() {
    }

    public Career(Integer careerId) {
        this.careerId = careerId;
    }

    public Career(Integer careerId, String careerName) {
        this.careerId = careerId;
        this.careerName = careerName;
    }

    public Integer getCareerId() {
        return careerId;
    }

    public void setCareerId(Integer careerId) {
        this.careerId = careerId;
    }

    public String getCareerName() {
        return careerName;
    }

    public void setCareerName(String careerName) {
        this.careerName = careerName;
    }

    @XmlTransient
    public Set<Profession> getProfessionSet() {
        return professionSet;
    }

    public void setProfessionSet(Set<Profession> professionSet) {
        this.professionSet = professionSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (careerId != null ? careerId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Career)) {
            return false;
        }
        Career other = (Career) object;
        if ((this.careerId == null && other.careerId != null) || (this.careerId != null && !this.careerId.equals(other.careerId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobhunting.pojo.Career[ careerId=" + careerId + " ]";
    }
    
}

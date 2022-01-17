/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Asus
 */
@Entity
@Table(name = "recruit")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Recruit.findAll", query = "SELECT r FROM Recruit r"),
    @NamedQuery(name = "Recruit.findByRecruitId", query = "SELECT r FROM Recruit r WHERE r.recruitId = :recruitId"),
    @NamedQuery(name = "Recruit.findByAddress", query = "SELECT r FROM Recruit r WHERE r.address = :address"),
    @NamedQuery(name = "Recruit.findByEmail", query = "SELECT r FROM Recruit r WHERE r.email = :email"),
    @NamedQuery(name = "Recruit.findByCompanyName", query = "SELECT r FROM Recruit r WHERE r.companyName = :companyName"),
    @NamedQuery(name = "Recruit.findByLogo", query = "SELECT r FROM Recruit r WHERE r.logo = :logo"),
    @NamedQuery(name = "Recruit.findByCoverImg", query = "SELECT r FROM Recruit r WHERE r.coverImg = :coverImg"),
    @NamedQuery(name = "Recruit.findByActive", query = "SELECT r FROM Recruit r WHERE r.active = :active"),
    @NamedQuery(name = "Recruit.findByFoundedYear", query = "SELECT r FROM Recruit r WHERE r.foundedYear = :foundedYear")})
public class Recruit implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "recruitId")
    private Integer recruitId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "address")
    private String address;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 500)
    @Column(name = "CompanyName")
    private String companyName;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "About")
    private String about;
    @Size(max = 100)
    @Column(name = "logo")
    private String logo;
    @Size(max = 100)
    @Column(name = "CoverImg")
    private String coverImg;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "website")
    private String website;
    @Basic(optional = false)
    @NotNull
    @Column(name = "active")
    private boolean active;
    @Column(name = "foundedYear")
    @Temporal(TemporalType.DATE)
    private Date foundedYear;
    @JoinColumn(name = "cityId", referencedColumnName = "cityId")
    @ManyToOne(optional = false)
    private City cityId;
    @JoinColumn(name = "userId", referencedColumnName = "userId")
    @ManyToOne(optional = false)
    private User userId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "recruitId")
    private Set<SaveCandidate> saveCandidateSet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "recruitId")
    private Set<RecruitJob> recruitJobSet;

    @Transient
    private MultipartFile file;
    
    public Recruit() {
    }

    public Recruit(Integer recruitId) {
        this.recruitId = recruitId;
    }

    public Recruit(Integer recruitId, String address, String email, String companyName, String about, String website, boolean active) {
        this.recruitId = recruitId;
        this.address = address;
        this.email = email;
        this.companyName = companyName;
        this.about = about;
        this.website = website;
        this.active = active;
    }

    public Integer getRecruitId() {
        return recruitId;
    }

    public void setRecruitId(Integer recruitId) {
        this.recruitId = recruitId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getCoverImg() {
        return coverImg;
    }

    public void setCoverImg(String coverImg) {
        this.coverImg = coverImg;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public boolean getActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Date getFoundedYear() {
        return foundedYear;
    }

    public void setFoundedYear(Date foundedYear) {
        this.foundedYear = foundedYear;
    }

    public City getCityId() {
        return cityId;
    }

    public void setCityId(City cityId) {
        this.cityId = cityId;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    @XmlTransient
    public Set<SaveCandidate> getSaveCandidateSet() {
        return saveCandidateSet;
    }

    public void setSaveCandidateSet(Set<SaveCandidate> saveCandidateSet) {
        this.saveCandidateSet = saveCandidateSet;
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
        hash += (recruitId != null ? recruitId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Recruit)) {
            return false;
        }
        Recruit other = (Recruit) object;
        if ((this.recruitId == null && other.recruitId != null) || (this.recruitId != null && !this.recruitId.equals(other.recruitId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobhunting.pojo.Recruit[ recruitId=" + recruitId + " ]";
    }

    /**
     * @return the file
     */
    public MultipartFile getFile() {
        return file;
    }

    /**
     * @param file the file to set
     */
    public void setFile(MultipartFile file) {
        this.file = file;
    }
    
}

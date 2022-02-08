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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Asus
 */
@Entity
@Table(name = "candidate")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Candidate.findAll", query = "SELECT c FROM Candidate c"),
    @NamedQuery(name = "Candidate.findByCandidateId", query = "SELECT c FROM Candidate c WHERE c.candidateId = :candidateId"),
    @NamedQuery(name = "Candidate.findByAvatar", query = "SELECT c FROM Candidate c WHERE c.avatar = :avatar"),
    @NamedQuery(name = "Candidate.findByFullName", query = "SELECT c FROM Candidate c WHERE c.fullName = :fullName"),
    @NamedQuery(name = "Candidate.findByGender", query = "SELECT c FROM Candidate c WHERE c.gender = :gender"),
    @NamedQuery(name = "Candidate.findByAddress", query = "SELECT c FROM Candidate c WHERE c.address = :address"),
    @NamedQuery(name = "Candidate.findByPhone", query = "SELECT c FROM Candidate c WHERE c.phone = :phone"),
    @NamedQuery(name = "Candidate.findByEmail", query = "SELECT c FROM Candidate c WHERE c.email = :email"),
    @NamedQuery(name = "Candidate.findByDateOfBirth", query = "SELECT c FROM Candidate c WHERE c.dateOfBirth = :dateOfBirth")})
public class Candidate implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "candidateId")
    private Integer candidateId;
    @Size(max = 100)
    @Column(name = "avatar")
    private String avatar;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "fullName")
    private String fullName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 6)
    @Column(name = "gender")
    private String gender;
    @Lob
    @Size(max = 65535)
    @Column(name = "description")
    private String description;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "address")
    private String address;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "phone")
    private String phone;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dateOfBirth")
    @Temporal(TemporalType.DATE)
    private Date dateOfBirth;
    @Lob
    @Size(max = 65535)
    @Column(name = "pathCV")
    private String pathCV;
    @Lob
    @Size(max = 65535)
    @Column(name = "describeCV")
    private String describeCV;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "candidateId")
    private Set<SaveJob> saveJobSet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "candidateId")
    private Set<CandidatePostResume> candidatePostResumeSet;
    @JoinColumn(name = "cityId", referencedColumnName = "cityId")
    @ManyToOne(optional = false)
    private City cityId;
    @JoinColumn(name = "experienceId", referencedColumnName = "experienceId")
    @ManyToOne(optional = false)
    private Experience experienceId;
    @JoinColumn(name = "professionId", referencedColumnName = "professionId")
    @ManyToOne(optional = false)
    private Profession professionId;
    @JoinColumn(name = "userId", referencedColumnName = "userId")
    @ManyToOne(optional = false)
    private User userId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "candidateId")
    private Set<SaveCandidate> saveCandidateSet;

    public Candidate() {
    }

    public Candidate(Integer candidateId) {
        this.candidateId = candidateId;
    }

    public Candidate(Integer candidateId, String fullName, String gender, String address, String phone, String email, Date dateOfBirth) {
        this.candidateId = candidateId;
        this.fullName = fullName;
        this.gender = gender;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.dateOfBirth = dateOfBirth;
    }

    public Integer getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(Integer candidateId) {
        this.candidateId = candidateId;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getPathCV() {
        return pathCV;
    }

    public void setPathCV(String pathCV) {
        this.pathCV = pathCV;
    }

    public String getDescribeCV() {
        return describeCV;
    }

    public void setDescribeCV(String describeCV) {
        this.describeCV = describeCV;
    }

    @XmlTransient
    public Set<SaveJob> getSaveJobSet() {
        return saveJobSet;
    }

    public void setSaveJobSet(Set<SaveJob> saveJobSet) {
        this.saveJobSet = saveJobSet;
    }

    @XmlTransient
    public Set<CandidatePostResume> getCandidatePostResumeSet() {
        return candidatePostResumeSet;
    }

    public void setCandidatePostResumeSet(Set<CandidatePostResume> candidatePostResumeSet) {
        this.candidatePostResumeSet = candidatePostResumeSet;
    }

    public City getCityId() {
        return cityId;
    }

    public void setCityId(City cityId) {
        this.cityId = cityId;
    }

    public Experience getExperienceId() {
        return experienceId;
    }

    public void setExperienceId(Experience experienceId) {
        this.experienceId = experienceId;
    }

    public Profession getProfessionId() {
        return professionId;
    }

    public void setProfessionId(Profession professionId) {
        this.professionId = professionId;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (candidateId != null ? candidateId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Candidate)) {
            return false;
        }
        Candidate other = (Candidate) object;
        if ((this.candidateId == null && other.candidateId != null) || (this.candidateId != null && !this.candidateId.equals(other.candidateId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobhunting.pojo.Candidate[ candidateId=" + candidateId + " ]";
    }
    
}

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
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Asus
 */
@Entity
@Table(name = "recruit_job")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "RecruitJob.findAll", query = "SELECT r FROM RecruitJob r"),
    @NamedQuery(name = "RecruitJob.findByRecruitJobId", query = "SELECT r FROM RecruitJob r WHERE r.recruitJobId = :recruitJobId"),
    @NamedQuery(name = "RecruitJob.findByTitle", query = "SELECT r FROM RecruitJob r WHERE r.title = :title"),
    @NamedQuery(name = "RecruitJob.findByPosition", query = "SELECT r FROM RecruitJob r WHERE r.position = :position"),
    @NamedQuery(name = "RecruitJob.findByAmount", query = "SELECT r FROM RecruitJob r WHERE r.amount = :amount"),
    @NamedQuery(name = "RecruitJob.findByWorkPlace", query = "SELECT r FROM RecruitJob r WHERE r.workPlace = :workPlace"),
    @NamedQuery(name = "RecruitJob.findByPostDate", query = "SELECT r FROM RecruitJob r WHERE r.postDate = :postDate"),
    @NamedQuery(name = "RecruitJob.findByExpirationDate", query = "SELECT r FROM RecruitJob r WHERE r.expirationDate = :expirationDate"),
    @NamedQuery(name = "RecruitJob.findByEmailContact", query = "SELECT r FROM RecruitJob r WHERE r.emailContact = :emailContact"),
    @NamedQuery(name = "RecruitJob.findByNameContact", query = "SELECT r FROM RecruitJob r WHERE r.nameContact = :nameContact"),
    @NamedQuery(name = "RecruitJob.findByPhoneContact", query = "SELECT r FROM RecruitJob r WHERE r.phoneContact = :phoneContact"),
    @NamedQuery(name = "RecruitJob.findByStatus", query = "SELECT r FROM RecruitJob r WHERE r.status = :status")})
public class RecruitJob implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "recruitJobId")
    private Integer recruitJobId;
    @Basic(optional = false)
    @NotNull(message = "{recruitJob.nullErr}")
    @Size(min = 1, max = 45, message = "{recruitJob.title.lengthErr}")
    @Column(name = "title")
    private String title;
    @Basic(optional = false)
    @NotNull(message = "{recruitJob.nullErr}")
    @Size(min = 1, max = 45, message = "{recruitJob.position.lengthErr}")
    @Column(name = "position")
    private String position;
    @Basic(optional = false)
    @NotNull(message = "{recruitJob.nullErr}")
    @Column(name = "amount")
    @Min(value = 1, message = "{recruitJob.amount.minErr}")
    private int amount;
    @Basic(optional = false)
    @NotNull(message = "{recruitJob.nullErr}")
    @Lob
    @Size(min = 1, max = 2147483647)
    @Column(name = "require")
    private String require;
    @Basic(optional = false)
    @NotNull(message = "{recruitJob.nullErr}")
    @Lob
    @Size(min = 1, max = 2147483647)
    @Column(name = "description")
    private String description;
    @Basic(optional = false)
    @NotNull(message = "{recruitJob.nullErr}")
    @Size(min = 1, max = 255)
    @Column(name = "workPlace")
    private String workPlace;
    @Lob
    @Size(max = 65535)
    @Column(name = "benefit")
    private String benefit;
    @Basic(optional = false)
    @NotNull
    @Column(name = "postDate")
    @Temporal(TemporalType.DATE)
    private Date postDate;
    @Basic(optional = false)
    @NotNull(message = "{recruitJob.nullErr}")
    @Column(name = "expirationDate")
    @Temporal(TemporalType.DATE)
    private Date expirationDate;
    @Basic(optional = false)
    @NotNull(message = "{recruitJob.nullErr}")
    @Size(min = 1, max = 50, message = "{recruitJob.emailErr}")
    @Column(name = "emailContact")
    private String emailContact;
    @Size(max = 45)
    @Column(name = "nameContact")
    private String nameContact;
    @Basic(optional = false)
    @NotNull(message = "{recruitJob.phoneContact.digitsErr}")
    @Size(min = 1, max = 15)
    @Column(name = "phoneContact")
    private String phoneContact;
    @Column(name = "status")
    private Boolean status;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "recruitJobId")
    private Set<SaveJob> saveJobSet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "recruitJobId")
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
    @JoinColumn(name = "recruitId", referencedColumnName = "recruitId")
    @ManyToOne(optional = false)
    private Recruit recruitId;
    @JoinColumn(name = "salaryId", referencedColumnName = "salaryId")
    @ManyToOne(optional = false)
    private Salary salaryId;
    @JoinColumn(name = "workTypeId", referencedColumnName = "workTypeId")
    @ManyToOne(optional = false)
    private WorkType workTypeId;

    public RecruitJob() {
    }

    public RecruitJob(Integer recruitJobId) {
        this.recruitJobId = recruitJobId;
    }

    public RecruitJob(Integer recruitJobId, String title, String position, int amount, String require, String description, String workPlace, Date postDate, Date expirationDate, String emailContact, String phoneContact) {
        this.recruitJobId = recruitJobId;
        this.title = title;
        this.position = position;
        this.amount = amount;
        this.require = require;
        this.description = description;
        this.workPlace = workPlace;
        this.postDate = postDate;
        this.expirationDate = expirationDate;
        this.emailContact = emailContact;
        this.phoneContact = phoneContact;
    }

    public Integer getRecruitJobId() {
        return recruitJobId;
    }

    public void setRecruitJobId(Integer recruitJobId) {
        this.recruitJobId = recruitJobId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getRequire() {
        return require;
    }

    public void setRequire(String require) {
        this.require = require;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getWorkPlace() {
        return workPlace;
    }

    public void setWorkPlace(String workPlace) {
        this.workPlace = workPlace;
    }

    public String getBenefit() {
        return benefit;
    }

    public void setBenefit(String benefit) {
        this.benefit = benefit;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }

    public String getEmailContact() {
        return emailContact;
    }

    public void setEmailContact(String emailContact) {
        this.emailContact = emailContact;
    }

    public String getNameContact() {
        return nameContact;
    }

    public void setNameContact(String nameContact) {
        this.nameContact = nameContact;
    }

    public String getPhoneContact() {
        return phoneContact;
    }

    public void setPhoneContact(String phoneContact) {
        this.phoneContact = phoneContact;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
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

    public Recruit getRecruitId() {
        return recruitId;
    }

    public void setRecruitId(Recruit recruitId) {
        this.recruitId = recruitId;
    }

    public Salary getSalaryId() {
        return salaryId;
    }

    public void setSalaryId(Salary salaryId) {
        this.salaryId = salaryId;
    }

    public WorkType getWorkTypeId() {
        return workTypeId;
    }

    public void setWorkTypeId(WorkType workTypeId) {
        this.workTypeId = workTypeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (recruitJobId != null ? recruitJobId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RecruitJob)) {
            return false;
        }
        RecruitJob other = (RecruitJob) object;
        if ((this.recruitJobId == null && other.recruitJobId != null) || (this.recruitJobId != null && !this.recruitJobId.equals(other.recruitJobId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobhunting.pojo.RecruitJob[ recruitJobId=" + recruitJobId + " ]";
    }
    
}

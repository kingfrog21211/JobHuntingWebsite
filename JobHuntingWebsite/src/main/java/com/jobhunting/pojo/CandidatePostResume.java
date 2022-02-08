/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Asus
 */
@Entity
@Table(name = "candidate_post_resume")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CandidatePostResume.findAll", query = "SELECT c FROM CandidatePostResume c"),
    @NamedQuery(name = "CandidatePostResume.findByCandidatePostResumeId", query = "SELECT c FROM CandidatePostResume c WHERE c.candidatePostResumeId = :candidatePostResumeId"),
    @NamedQuery(name = "CandidatePostResume.findByPostDate", query = "SELECT c FROM CandidatePostResume c WHERE c.postDate = :postDate"),
    @NamedQuery(name = "CandidatePostResume.findByStatus", query = "SELECT c FROM CandidatePostResume c WHERE c.status = :status")})
public class CandidatePostResume implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "candidatePostResumeId")
    private Integer candidatePostResumeId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "postDate")
    @Temporal(TemporalType.DATE)
    private Date postDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "status")
    private boolean status;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "pathFileCV")
    private String pathFileCV;
    @JoinColumn(name = "candidateId", referencedColumnName = "candidateId")
    @ManyToOne(optional = false)
    private Candidate candidateId;
    @JoinColumn(name = "recruitJobId", referencedColumnName = "recruitJobId")
    @ManyToOne(optional = false)
    private RecruitJob recruitJobId;

    public CandidatePostResume() {
    }

    public CandidatePostResume(Integer candidatePostResumeId) {
        this.candidatePostResumeId = candidatePostResumeId;
    }

    public CandidatePostResume(Integer candidatePostResumeId, Date postDate, boolean status, String pathFileCV) {
        this.candidatePostResumeId = candidatePostResumeId;
        this.postDate = postDate;
        this.status = status;
        this.pathFileCV = pathFileCV;
    }

    public Integer getCandidatePostResumeId() {
        return candidatePostResumeId;
    }

    public void setCandidatePostResumeId(Integer candidatePostResumeId) {
        this.candidatePostResumeId = candidatePostResumeId;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getPathFileCV() {
        return pathFileCV;
    }

    public void setPathFileCV(String pathFileCV) {
        this.pathFileCV = pathFileCV;
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
        hash += (candidatePostResumeId != null ? candidatePostResumeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CandidatePostResume)) {
            return false;
        }
        CandidatePostResume other = (CandidatePostResume) object;
        if ((this.candidatePostResumeId == null && other.candidatePostResumeId != null) || (this.candidatePostResumeId != null && !this.candidatePostResumeId.equals(other.candidatePostResumeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobhunting.pojo.CandidatePostResume[ candidatePostResumeId=" + candidatePostResumeId + " ]";
    }
    
}

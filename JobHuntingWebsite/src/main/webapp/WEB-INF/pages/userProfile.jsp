<%-- 
    Document   : candidate
    Created on : Jan 25, 2022, 4:49:59 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<security:authorize access="isAuthenticated()">
    Authenticated as <security:authentication property="principal.username" /> 

    <section style="background-color: #eee;">
      <div class="container py-5">
        <div class="row">
          <div class="col-lg-4">
            <div class="card mb-4">
              <div class="card-body text-center">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar" class="rounded-circle img-fluid" style="width: 150px;">
                <form method="post" action="doUpload" enctype="multipart/form-data" style="
                        align-items: center;
                        text-align: center;
                        display: grid;
                        justify-content: space-around;">
                    <input type="file" name="fileUpload" size="150" />
                </form>
                <h5 class="my-3">${pageContext.request.userPrincipal.name}</h5>
                <p class="text-muted mb-1">Full Stack Developer</p>
                <p class="text-muted mb-4">Bay Area, San Francisco, CA</p>
              </div>
            </div>
            <div class="card mb-4 mb-lg-0">
              <div class="card-body p-0">
                <ul class="list-group list-group-flush rounded-3">
                    <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                        <a>
                            <i class="fas fa-building"></i>
                            <p class="mb-0">Ho So Cong Ty</p>
                        </a>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                        <a>
                            <i class="fas fa-suitcase"></i>
                            <p class="mb-0">Quan Ly Cong Viec</p>
                        </a>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                      <a>
                            <i class="fas fa-lock"></i>
                            <p class="mb-0">Doi Mat Khau</p>
                      </a>
                    
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                      <a>
                            <i class="fas fa-sign-out-alt"></i>
                            <p class="mb-0">Dang Xuat</p>
                      </a>
                    
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-lg-8">
            <div class="card mb-4">
              <div class="card-body">
                <div class="row">
                    <div class="col-sm-3">
                        <p class="mb-0">Full Name</p>
                    </div>
                    <div class="col-sm-9">
                        <strong>	
                            <span>${user.firstName}</span>&nbsp;
                            <span>${user.lastName}</span>
                        </strong>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                        <p class="mb-0">Role</p>
                    </div>
                    <div class="col-sm-9">
                            <p class="text-muted mb-0">${user.userRole}</p>
                    </div>
                </div>
                <hr>
                <div class="row">
                  <div class="col-sm-3">
                    <p class="mb-0">Email</p>
                  </div>
                  <div class="col-sm-9">
                    <p class="text-muted mb-0">${user.email}</p>
                  </div>
                </div>
                <hr>
                <div class="row">
                  <div class="col-sm-3">
                    <p class="mb-0">Phone</p>
                  </div>
                  <div class="col-sm-9">
                    <p class="text-muted mb-0">0000000</p>
                  </div>
                </div>
                <hr>
                <div class="row">
                  <div class="col-sm-3">
                    <p class="mb-0">Mobile</p>
                  </div>
                  <div class="col-sm-9">
                    <p class="text-muted mb-0">(098) 765-4321</p>
                  </div>
                </div>
                <hr>
                <div class="row">
                  <div class="col-sm-3">
                    <p class="mb-0">Address</p>
                  </div>
                  <div class="col-sm-9">
                    <p class="text-muted mb-0">Bay Area, San Francisco, CA</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
</security:authorize>
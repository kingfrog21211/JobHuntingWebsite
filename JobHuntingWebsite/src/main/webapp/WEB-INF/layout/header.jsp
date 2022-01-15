<%-- 
    Document   : header
    Created on : Dec 18, 2021, 9:51:35 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="hero_area">
<!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
            <a class="navbar-brand" href="<c:url value="/"/>">
            <span>Job Hunting</span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              
                <ul class="navbar-nav  ">
                    <li class="nav-item active">
                        <a class="nav-link" href="<c:url value="/"/>"> Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/job"/>"> Jobs </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/profession"/>"> Professions </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/company"/>"/> Companies </a>
                    </li>
                </ul>
                
                <ul class="user_option navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="" data-toggle="modal" data-target="#loginModal"> 
                        <img src="images/login.png" alt=""> 
                        <span>Login</span> </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#" data-toggle="modal" data-target="#registerModal"> 
                        <img src="images/register.png" alt="">
                      <span>Register</span></a>
                  </li>
                </ul>
                    
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
    
    <!-- slider section -->
    <section class=" slider_section ">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="indicator_box">
          <div>
            <span>01/</span>
          </div>
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">01</li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1">02</li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2">03</li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3">04</li>
          </ol>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-4 offset-md-1">
                  <div class="detail-box">
                    <h1>
                      Find a <br>
                      Perfect job <br>
                      for you
                    </h1>
                    <div>
                      <a href="<c:url value="/job"/>">FIND JOB</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 ">
                  <div class="img-box">
                    <img src="images/slider-img.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-4 offset-md-1">
                  <div class="detail-box">
                    <h1>
                      Find a <br>
                      Perfect company <br>
                      for you
                    </h1>
                    <div>
                      <a href="<c:url value="/company"/>">FIND COMPANY</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 ">
                  <div class="img-box">
                    <img src="images/slider-img-1.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-4 offset-md-1">
                  <div class="detail-box">
                    <h1>
                      Find a <br>
                      Perfect job <br>
                      for you
                    </h1>
                    <div>
                      <a href="<c:url value="/job"/>">Read More</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 ">
                  <div class="img-box">
                    <img src="images/slider-img-2.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-4 offset-md-1">
                  <div class="detail-box">
                    <h1>
                      Find a <br>
                      Perfect job <br>
                      for you
                    </h1>
                    <div>
                      <a href="<c:url value="/job"/>">Read More</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 ">
                  <div class="img-box">
                    <img src="images/slider-img-3.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="sr-only">Next</span>
        </a>
      </div>
    </section>
    <!-- end slider section -->
    
    <!-- find section -->
    <section class="find_section">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-8 offset-lg-1 col-md-9 offset-md-1">
            <form action="">
              <div class="form_container">
                <div class="box b-1">
                    <input name="titles" type="text" class="form-control" placeholder="Job title" required="off">
                    <c:url value="/job" var="action">
                        <c:param name="titles" value="titles"/>
                    </c:url>
                </div>
                <div class="box b-3">
                    <select name="professionId" path="professionId" class="form-control" required="false">
                        <option hidden="true" selected="">Profession</option>
                        <c:forEach items="${professions}" var="c">
                            <option value="${c.professionId}">${c.professionName}</option>
                            <c:url value="/job" var="action">
                                <c:param name="professionId" value="${c.professionId}"/>
                            </c:url>
                        </c:forEach>
                    </select>
                </div>
                <div class="box b-3">
                    <select name="workTypeId" path="workTypeId" class="form-control" required="false">
                        <option hidden="true" selected="">Work type</option>
                        <c:forEach items="${workTypes}" var="c">
                            <option value="${c.workTypeId}">${c.workTypeName}</option>
                            <c:url value="/job" var="action">
                                <c:param name="workTypeId" value="${c.workTypeId}"/>
                            </c:url>
                        </c:forEach>
                    </select>
                </div>
                <div class="box b-2">
                    <select name="cityId" path="cityId" class="form-control" required="false">
                        <option hidden="true" selected="">City</option>
                        <c:forEach items="${cities}" var="c">
                            <option value="${c.cityId}">${c.cityName}</option>
                            <c:url value="/job" var="action">
                                <c:param name="cityId" value="${c.cityId}"/>
                            </c:url>
                        </c:forEach>
                    </select>
                </div>
                <div class="btn-box">
                    <button onclick="location.href='<c:url value="/job"/>'" type="submit">Search</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <!-- end find section -->
</div>
                
<!-- login form -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" nav-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header border-bottom-0">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="form-title text-center">
                <h4>Login</h4>
              </div>
              <div class="d-flex flex-column text-center">
                <form>
                  <div class="form-group">
                    <input type="email" class="form-control" id="email1"placeholder="Your email address...">
                  </div>
                  <div class="form-group">
                    <input type="password" class="form-control" id="password1" placeholder="Your password...">
                  </div>
                  <button type="button" class="btn btn-dark btn-block btn-round">Login</button>
                </form>
                <div class="text-center text-muted delimiter">or use a social network</div>
                <div class="d-flex justify-content-center social-buttons">
                  <button type="button" class="btn btn-secondary btn-round" data-toggle="tooltip" data-placement="top" title="Twitter">
                    <i class="fab fa-twitter"></i>
                  </button>
                  <button type="button" class="btn btn-secondary btn-round" data-toggle="tooltip" data-placement="top" title="Facebook">
                    <i class="fab fa-facebook"></i>
                  </button>
                  <button type="button" class="btn btn-secondary btn-round" data-toggle="tooltip" data-placement="top" title="Linkedin">
                    <i class="fab fa-linkedin"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    <!-- end login form -->
    
    <!-- register form -->
    <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header border-bottom-0">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="form-title text-center">
                <h4>Register</h4>
              </div>
              <div class="d-flex flex-column text-center">
                <form>
                  <div class="form-group">
                      <label class="text-muted">Full name</label>
                    <input type="fullname" class="form-control" id="fullname"placeholder="Your full name...">
                  </div>
                  <div class="form-group">
                      <label>Username</label>
                    <input type="username" class="form-control" id="password" placeholder="Your username...">
                  </div>
                  <div class="form-group">
                      <label>Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Your password">
                  </div>
                  <div class="form-group">
                      <label>Confirm password</label>
                    <input type="confirmPassword" class="form-control" id="confirmPassword" placeholder="Confirm">
                  </div>
                  <button type="button" class="btn btn-dark btn-block btn-round">Register</button>
                </form>
                <div class="text-center text-muted delimiter">or use a social network</div>
                <div class="d-flex justify-content-center social-buttons">
                  <button type="button" class="btn btn-secondary btn-round" data-toggle="tooltip" data-placement="top" title="Twitter">
                    <i class="fab fa-twitter"></i>
                  </button>
                  <button type="button" class="btn btn-secondary btn-round" data-toggle="tooltip" data-placement="top" title="Facebook">
                    <i class="fab fa-facebook"></i>
                  </button>
                  <button type="button" class="btn btn-secondary btn-round" data-toggle="tooltip" data-placement="top" title="Linkedin">
                    <i class="fab fa-linkedin"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    <!-- end register form -->
    
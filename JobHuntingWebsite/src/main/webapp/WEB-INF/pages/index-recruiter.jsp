<%-- 
    Document   : index-recruitFindCandidate
    Created on : Jan 28, 2022, 12:31:42 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500" rel="stylesheet" />
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<link rel="stylesheet" href="css/search-bar.css">
<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />
<title>Job Hunting</title>
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=xuj9Mh1702DL5f-BY178nr9MZLjknqBcohwQJ6EYXOnGzD3HSbERzpX0FLvo4LsLS4fU5hs9Lz9sfLXC7xOzMg" charset="UTF-8"></script><style>
html,body {
  height:100%;
}
body{
	margin:0;
	padding:0;
  background:#FFF;
  -webkit-font-smoothing: antialiased;
}
a:hover{text-decoration: none;}


/* Globals type styling */

h1,h2,h3,h4,h5,h6,p,label,.btn,a{
	font-family:"Open Sans", sans-serif;
  color: #333;
} 

/* NavBar */

#nav-bloc {
  margin-top: 30px;
}

.navbar{
	margin-bottom: 0;
}
.navbar-brand{
	font-size: 25px;
	font-weight: bold;
	font-family: "Open Sans", Helvetica, Arial, sans-serif;
	font-weight: 600;
}
.navbar-brand img{
	width: auto;
	max-height: 40px;
	margin: -12px 5px 0 0;
}
.navbar-brand{
	padding: 15px 15px;
}
.navbar .nav{
	padding-top: 2px;
	margin-right: -16px;
	float:right;
}
.nav > li{
	float: left;
	margin-top: 4px;
	font-size: 16px;
}
.nav > li a:hover{
	background:transparent;
}
.navbar-toggle{
	margin: 12px;
	border: 0px;
}
.navbar-toggle:hover{
	background:transparent!important;
}
.navbar-toggle .icon-bar{
	background-color: rgba(0,0,0,.5);
	width: 26px;
}
.navbar-collapse.in {
overflow-y: visible;
float: left;
width: 100%;
}
.navbar-1 {
  float: right;
}
.site-navigation:first-child {
  float: left;
}
.site-navigation:nth-child(2) {
  float: right;
}
.site-navigation:nth-child(2) a {
  color: #ccc;
  font-size: 85%;
  padding-right: 0px;
}

.site-navigation .nav > .active{
  color: #333;
}

/* Carousel */

.container {
    margin-top: 20px;
}

/* Carousel Styles */
.carousel-indicators .active {
    background-color: #fff;
}

.carousel-inner img {
    width: 100%;
    max-height: 460px
}

.carousel-control {
    width: 0;
}

.carousel-control.left,
.carousel-control.right {
  opacity: 1;
  filter: alpha(opacity=100);
  background-image: none;
  background-repeat: no-repeat;
  text-shadow: none;
}

.carousel-control.left span {
  margin-left: 15px;
}

.carousel-control.right span {
  margin-right: 15px;
}

.carousel-control .glyphicon-chevron-left, 
.carousel-control .glyphicon-chevron-right, 
.carousel-control .icon-prev, 
.carousel-control .icon-next {
  position: absolute;
  top: 45%;
  z-index: 5;
  display: inline-block;
}

.carousel-control .glyphicon-chevron-left,
.carousel-control .icon-prev {
  left: 0;
}

.carousel-control .glyphicon-chevron-right,
.carousel-control .icon-next {
  right: 0;
}

.carousel-control.left span,
.carousel-control.right span {
  
}

.carousel-control.left span:hover,
.carousel-control.right span:hover {
  opacity: .7;
  filter: alpha(opacity=70);
}

/* Carousel Header Styles */
.header-text {
    position: absolute;
    top: 30%;
    left: 1.8%;
    right: auto;
    width: 96.66666666666666%;
    color: #fff;
}

.header-text h2 {
    font-size: 40px;
    font-weight: bold;
}

.header-text h2 span {
    padding: 10px;
    color: #fff;
}

.btn-min-block {
    min-width: 170px;
    line-height: 26px;
}

.btn-theme {
    color: #fff;
    background-color: transparent;
    border-color: #fff;
    margin-right: 15px;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
}

.btn-theme:hover {
    color: #fff;
    background-color: transparent;
    border-color: #fff;
}
/* Posts */
.post {
  background-color: #FFF;
  overflow: hidden;
}
.post .content {
}

.post .post-img-content img {
  position: relative;
}

.post .post-date  {
  background-color: rgba(51, 51, 51, 0.58);
  position: absolute;
  bottom: 0px;
  width: 50%;
  color: #FFF;
  padding: 10px 15px;
}
.news .post-img-content {
  width: 350px;
  height: 180px;
  position: relative;
}

.work .post-img-content {
  width: 450px;
  height: 230px;
  position: relative;
}
.feed .post-img-content {
  width: 260px;
  height: 130px;
  position: relative;
}

/* Mobile adjustments */

@media (max-width: 768px)
{
    .bloc{
        text-align: center;
        -webkit-background-size: auto 200%;
        -moz-background-size: auto 200%;
        -o-background-size: auto 200%;
        background-size: auto 200%;
    }
    .navbar .nav{
        padding-top: 0;
        border-top:1px solid rgba(0,0,0,.2);
        float:none!important;
    }
    .nav > li{
        margin-top: 0;
        border-bottom:1px solid rgba(0,0,0,.1);
        background:rgba(0,0,0,.05);
        text-align: left;
        width:100%;
    }
    .nav > li:hover{
        background:rgba(0,0,0,.08);
    }
    .navbar-collapse{
        -webkit-box-shadow: none;
        box-shadow: none;
    }
    .btn.pull-left, .btn.pull-right{
       float:none!important; 
    }
    .bloc-xl,.bloc-lg{
        padding: 40px 0;
    }
    .a-block{
        text-align: center;
    }
}
iframe:focus {
        outline: none;
    }
    iframe[seamless] {
        display: block;
    }
</style>

    <script>
        window.console = window.console || function(t) {};
    </script>
    <!-- Carousel -->
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
          <div class="item active">
            <img src="https://unsplash.s3.amazonaws.com/batch%209/barcelona-boardwalk.jpg" alt="First slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                              <span>The Easiest Way to Get Your New Job</span>
                            </h2>
                            <br>
                            <div class="">
                                <a class="btn btn-theme btn-sm btn-min-block" href="<c:url value="/job"/>">Read More</a></div>
                        </div>
                    </div><!-- /header-text -->
          </div>
          <div class="item">
            <img src="https://unsplash.s3.amazonaws.com/batch%209/barcelona-boardwalk.jpg" alt="Second slide">
            <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                                <span>OUR VISION</span>
                            </h2>
                            <br>
                            <div class="">
                                <a class="btn btn-theme btn-sm btn-min-block" href="#">Read More</a></div>
                        </div>
                    </div><!-- /header-text -->
          </div>
      </div>
      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
    </div><!-- Carousel END -->
<div class="s002">
        <form>
            <div class="inner-form">
                <div class="input-field first-wrap">
                    <div class="icon-wrap">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"></path>
                        </svg>
                    </div>
                    <input id="search" type="text" placeholder="What are you looking for?" />
                </div>
              <div class="input-field fouth-wrap">
                <div class="icon-wrap">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                        <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"></path>
                    </svg>
                </div>
                <select data-trigger="" name="professionId" path="professionId">
                    <option placeholder="">Profession</option>
                    <c:forEach items="${professions}" var="c">
                        <option value="${c.professionId}">${c.professionName}</option>
                    </c:forEach>
                </select>
              </div>
              <div class="input-field fouth-wrap">
                <div class="icon-wrap">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                    <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"></path>
                  </svg>
                </div>
                <select data-trigger="" name="cityId" path="cityId">
                    <option value="">City</option>
                    <c:forEach items="${cities}" var="c">
                        <option value="${c.cityId}">${c.cityName}</option>
                    </c:forEach>
                </select>
              </div>

                <div class="input-field fouth-wrap">
                    <div class="icon-wrap">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                          <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"></path>
                        </svg>
                    </div>
                    <select data-trigger="" name="experienceId" path="experienceId">
                        <option value="">Experience</option>
                        <c:forEach items="${experiences}" var="c">
                            <option value="${c.experienceId}">${c.experienceValue}</option>
                        </c:forEach>
                    </select>
                </div>
                
                <div class="btn-box">
                    <c:url value="/recruit/recruiter" var="action">
                        <c:param name="professionId" value="professionId"/>
                        <c:param name="cityId" value="cityId"/>
                        <c:param name="experienceId" value="experienceId"/>
                    </c:url>
                    <button formaction="${action}" type="submit">Find candidate</button>
                </div>
            </div>
        </form>
    </div>

<section class="job_section layout_padding">
    <div class="container">
        <!--available candidate amount-->
        <div class="heading_container">
            <h2>Recommended candidate <br>
                <c:if test="${candidates.size()==1}"><span>1 Candidate is available now</span></c:if>
                <c:if test="${candidates.size()>1}"><span>${candidates.size()} Candidates are available now</span></c:if>
                <c:if test="${candidates.size()==0}"><span>0 Candidate Available now</span></c:if>
            </h2>
        </div>
        <c:if test="${candidates.size()==0}">
            <div class="text text-center text-danger">
                We can't find any suitable candidates for you!!!
            </div>
        </c:if>
        
        <noscript>
            <iframe height='0' src='//www.googletagmanager.com/ns.html?id=GTM-5DSLL8' style='display:none;visibility:hidden' width='0'></iframe>
        </noscript>
        
        <div style="margin: 20px auto 0; display: grid; grid-template-columns: 500px 1fr" id="search-results">
            <!--preview-->
            <div class="tab-content" id="myTabContent" style="border-right: 1px; overflow: scroll; position: sticky; top: 60px; height: calc(100vh - 60px);">
                <div class="job_board tab-pane fade show active"  id="jb-1" role="tabpanel" aria-labelledby="jb-1-tab">
                    <c:forEach items="${candidates}" var="c">
                        <div class="job job--selected" style="background-color: #252525;" >
                            <div class="job_content" style="position: relative">
                                <!--icon heart-->
                                    <span style="font-size: 25px;color:#ffffff;position: absolute;top: 20px;right: 20px;cursor: pointer; z-index: 2;">
                                        <i class='bx bx-heart' id="heart"></i>
                                    </span>
                                    <%--<c:if test="${likebyE == null}">--%>
    <!--                                    <div id="like-section" class="like" onclick="addReLike()">
                                            <i class="fa fa-heart" aria-hidden="true"></i>&nbsp;LIKE
                                        </div>-->
                                    <%--</c:if>--%>
                                    <%--<c:if test="${likebyE != null}">--%>
    <!--                                    <div id="like-section" style="background-color: #87817f; color: #000" class="like">
                                            <i class="fa fa-heart" aria-hidden="true"></i>&nbsp;LIKE
                                        </div>-->
                                    <%--</c:if>--%>
                                <!--end icon heart-->
                                
                                <!-- avatar -->
                                    <div class="logo">
                                        <div class="logo-wrapper" data-controller="tooltip">
                                            <c:url value="/candidateDetail" var="action">
                                                <c:param name="candidateId" value="${c[0]}"/>
                                            </c:url>
                                            <c:if test="${c[3].startsWith('https')}">
                                                <img src="${c[3]}" alt="${c[4]}" data-controller="lazyload" class=" ls-is-cached lazyloaded" title="${c[4]}" style="height: 65px; width: 65px"/>
                                            </c:if>
                                            <c:if test="${c[3] == null || !c[3].startsWith('https')}">
                                                <c:if test="${!c[5].startsWith('fe')}">
                                                    <img src="https://res.cloudinary.com/tcme212/image/upload/v1643375117/img_avatar_ibm8zt.png" alt="${c[4]}" data-controller="lazyload" class=" ls-is-cached lazyloaded" title="${c[4]}" style="height: 65px; width: 65px"/>
                                                </c:if>
                                                <c:if test="${c[5].startsWith('fe')}">
                                                    <img src="https://res.cloudinary.com/tcme212/image/upload/v1643375117/img_avatar2_egfjqi.png" alt="${c[4]}" data-controller="lazyload" class=" ls-is-cached lazyloaded" title="${c[4]}" style="height: 65px; width: 65px"/>
                                                </c:if>
                                            </c:if>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                <!--end avatar-->
                                    
                                <!--candidate preview-->
                                    <div class="job__description">
                                        <div class="job__body">
                                            <div class="details">
                                                <!--full name-->
                                                    <h3 class="title">
                                                        <c:url value="/candidateDetail" var="action">
                                                            <c:param name="candidateId" value="${c[0]}"/>
                                                        </c:url>
                                                        <a style="color: #ff9f01" href="${action}" target="iframe_detail">
                                                            <strong >${c[4]}</strong>
                                                        </a>
                                                    </h3>
                                                <!--end full name-->
                                                
                                                <!--gender-->
                                                    <div class="city" style="color: #fff">${c[3]}</div>
                                                <!--end gender-->
                                                
                                                <!--city-->
                                                <div class="city" style="color: #fff">${c[7]}</div>
                                                <!--end city-->
                                            </div>
                                        </div>
                                    </div>
                                <!--end candidate preview-->
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <!--detail-->
            <div style="position: relative; background-color: transparent">
                <div style="padding: 0 30px;">
                    <div style="word-break: break-word;">
                        <iframe name="iframe_detail" src="" title="description" style="width: 600px; height: 700px;"> </iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
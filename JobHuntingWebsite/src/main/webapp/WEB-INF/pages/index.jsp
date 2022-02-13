<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
  

<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=xuj9Mh1702DL5f-BY178nr9MZLjknqBcohwQJ6EYXOnGzD3HSbERzpX0FLvo4LsLS4fU5hs9Lz9sfLXC7xOzMg" charset="UTF-8"></script>
<style>
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
    
<security:authorize access="!hasRole('ROLE_RECRUIT')">
    <!--search-->
    <div class="s002">
        <form>
            <div class="inner-form">                
                <div class="input-field fouth-wrap" style="width: 100%">
                    <div class="icon-wrap">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"></path>
                        </svg>
                    </div>
                    <select data-trigger="" name="professionId" path="professionId">
                        <option value="">Profession</option>
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
                      <select data-trigger="" name="workTypeId" path="workTypeId">
                        <option value="">Work type</option>
                        <c:forEach items="${workTypes}" var="c">
                            <option value="${c.workTypeId}">${c.workTypeName}</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="input-field fouth-wrap">
                    <div class="icon-wrap">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                          <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"></path>
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
                        <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"></path>
                      </svg>
                    </div>
                      <select data-trigger="" name="salaryId" path="salaryId">
                        <option value="">Salary</option>
                        <c:forEach items="${salary}" var="c">
                            <option value="${c.salaryId}">${c.salaryValue}</option>
                        </c:forEach>
                    </select>
                </div>
                
              <div class="input-field fifth-wrap">
                    <c:url value="/job" var="action">
                        <c:param name="professionId" value="professionId"/>
                        <c:param name="workTypeId" value="workTypeId"/>
                        <c:param name="cityId" value="cityId"/>
                        <c:param name="salaryId" value="salaryId"/>
                    </c:url>
                <button class="btn-search" formaction="${action}" type="submit">SEARCH</button>
              </div>
            </div>
        </form>
    </div>

  <!-- job section -->
  <section class="job_section layout_padding-bottom">
    <div class="container">
        <br><br>
        <div class="heading_container">
                <h2>Recently added Jobs</h2>
        </div>

        <div id="search-results">
                    <div class="list-job">
                        <div class="job-body row" style="text-align: -webkit-center;">
                            <div class="lists">
                                <c:forEach items="${top5RecruitJob}" var="rj">
                                    <div class="job-item  job-ta result-job-hover" data-job-id="595575" data-job-position="1" data-box="BoxSearchResult">
                                        <div class="avatar">
                                            <a target="_blank" href="https://www.topcv.vn/viec-lam/thuc-tap-sinh-kinh-doanh/595575.html?ta_source=JobSearchList" class="company-logo" rel="nooppener noreferrer">
                                                <img src="https://cdn.topcv.vn/80/company_logos/bt4aHjAUuUaPFunAcyJ3S9YtWgeoxHmw_1643255468____6e5c15c6d4ef07464482cfdc75fe2865.jpeg" class="w-100" alt="CÔNG TY TNHH CHUBB LIFE Việt Nam" title="Thực Tập Sinh Kinh Doanh">
                                            </a>
                                        </div>
                                        <div class="body">
                                            <div class="content">
                                                <div class="ml-auto" style="">
                                                    <h3 class="title">
                                                        <c:url value="/detail" var="action">
                                                            <c:param name="recruitJobId" value="${rj[6]}"/>
                                                        </c:url>
                                                        <a class="underline-box-job"  href="${action}">
                                                            <span class="bold transform-job-title" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="${rj[7]}">${rj[7]}</span>
                                                        </a>
                                                    </h3>
                                                    <p class="company underline-box-job">
                                                        <c:url value="/companyDetail" var="action">
                                                            <c:param name="recruitId" value="${rj[20]}"/>
                                                        </c:url>
                                                        <a href="${action}" data-toggle="tooltip" data-placement="top" data-container="body" rel="nooppener noreferrer" data-original-title="${rj[1]}">${rj[1]}</a>
                                                    </p>
                                                </div>
                                                <div class="d-flex">
                                                    <div class="label-content ml-auto" >
                                                        <a class="badge badge-info">${rj[2]}</a>
                                                        <a data-original-title="${rj[3]}" class="badge badge-info">${rj[3]}</a>
                                                        <a class="badge badge-info">${rj[14]}</a>
                                                        <a class="badge badge-info">${rj[15]}</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
            </div>
    </div>
  </section>
  <!-- end job section -->
  </security:authorize>
  
  <!--role-recruit-->    
<security:authorize access="hasRole('ROLE_RECRUIT')">
        <div class="s002">
        <form>
            <div class="inner-form">
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
                
                <div class="input-field fifth-wrap">
                    <c:url value="/" var="action">
                        <c:param name="professionId" value="professionId"/>
                        <c:param name="cityId" value="cityId"/>
                        <c:param name="experienceId" value="experienceId"/>
                    </c:url>
                    <button class="btn-search" formaction="${action}" type="submit">Find candidate</button>
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
        
            <!--preview-->
<div id="search-results">
    <div class="list-job">
        <div class="job-body row" style="display: block">
                <div class="lists" style="text-align: -webkit-center;">
                    <c:forEach items="${candidates}" var="c">
                        <div class="job job--selected" style="background-color: #252525; width: 70%" >
                            <div class="job_content" style="position: relative">
                                <!--icon heart-->
                                
                                <!-- avatar -->
                                <div class="job-item  job-ta result-job-hover" data-job-id="595575" data-job-position="1" data-box="BoxSearchResult" style="width: 90%; border: solid">
                                        <div class="avatar">
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
                                <!--end avatar-->
                                    
                                <!--candidate preview-->                                
                                <div class="body">
                                    <div class="content">
                                        <div class="ml-auto">
                                            <h3 class="title">
                                                <c:url value="/candidateDetail" var="action">
                                                    <c:param name="candidateId" value="${c[0]}"/>
                                                </c:url>
                                                <a style="color: #ff9f01" href="${action}">
                                                    <strong >${c[4]}</strong>
                                                </a>
                                            </h3>
                                            <p class="company underline-box-job">${c[16]}</p>
                                            <div class="ml-auto" style="align-items: center">
                                                <a class="badge badge-info">DoB: ${c[12]}</a><br>
                                                <a class="badge badge-info">Gender: ${c[5]}</a><br>
                                                <a class="badge badge-info">Profession: ${c[15]}</a><br>
                                                <a class="badge badge-info">Experience: ${c[17]}</a>
                                            </div>
                                        </div>
                                        <div style="display: block">
                                            <p><strong>Description: </strong>${c[6]}</p><br>
                                            <p><strong>Address: </strong>${c[8]}</p><br>
                                            <p><strong>Phone: </strong>${c[10]}</p><br>
                                            <p><strong>Email: </strong>${c[11]}</p><br>
                                            <a class="badge badge-info">CV</a>
                                        </div>
                                            <div class=" d-md-table-row" style="margin-left: 25px">
                                                <button style=" background-color: #00b14f; align-content: center; font-weight: 700;">
                                                    Save</button>
                                            </div>
                                    </div>
                                </div>
                                <!--end candidate preview-->
                            </div>
                        </div>                                    
                        </div>
                    </c:forEach>
                </div>
        </div>
    </div></div>
</section>
</security:authorize>
  
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js'></script>
<script src="https://colorlib.com/etc/searchf/colorlib-search-2/js/extention/choices.js"></script>

<script src="https://colorlib.com/etc/searchf/colorlib-search-2/js/extention/flatpickr.js"></script>
<script>
      const choices = new Choices('[data-trigger]',
      {
        searchEnabled: false,
        itemSelectText: '',
      });

</script>
<script src="js/choices.js"></script>
<script src="js/flatpickr.js"></script>

<script id="rendered-js" >
// Startup Scripts
$(document).ready(function ()
{
  $('.hero').css('height', $(window).height() - $('header').outerHeight() + 'px'); // Set hero to fill page height

  $('#scroll-hero').click(function ()
  {
    $('html,body').animate({ scrollTop: $("#hero-bloc").height() }, 'slow');
  });
});


// Window resize 
$(window).resize(function ()
{
  $('.hero').css('height', $(window).height() - $('header').outerHeight() + 'px'); // Refresh hero height  	
});
//# sourceURL=pen.js
    </script>


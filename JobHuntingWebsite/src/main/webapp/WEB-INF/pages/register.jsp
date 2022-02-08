<%-- 
    Document   : register
    Created on : Jan 13, 2022, 12:12:15 AM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/register"  var="action" />
<c:if test="${errMsg != null}">
    <div class="alert alert-danger">
        ${errMsg}
    </div>
</c:if>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sign Up Form by JOBHUNTING</title>

        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/login.css"/>
        <link rel="stylesheet" href="https://colorlib.com/etc/regform/colorlib-regform-7/css/style.css">
        <meta name="robots" content="noindex, follow">
        <script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=HbRxOK9oxOzkHQaLrHW17AiiF5bsGgN1MqOQwW6mdpIbst-9KRE-yQnI4A_jbu3IO4sS_u2z-N98fSs53PfJFiUgGHgJWA-IzDnyy4Ny_2Y" charset="UTF-8"></script><script>(function(w,d){!function(a,e,t,r,z){a.zarazData=a.zarazData||{},a.zarazData.executed=[],a.zarazData.tracks=[],a.zaraz={deferred:[]};var s=e.getElementsByTagName("title")[0];a.zarazData.c=e.cookie,s&&(a.zarazData.t=e.getElementsByTagName("title")[0].text),a.zarazData.w=a.screen.width,a.zarazData.h=a.screen.height,a.zarazData.j=a.innerHeight,a.zarazData.e=a.innerWidth,a.zarazData.l=a.location.href,a.zarazData.r=e.referrer,a.zarazData.k=a.screen.colorDepth,a.zarazData.n=e.characterSet,a.zarazData.o=(new Date).getTimezoneOffset(),//
        a.dataLayer=a.dataLayer||[],a.zaraz.track=(e,t)=>{for(key in a.zarazData.tracks.push(e),t)a.zarazData["z_"+key]=t[key]},a.zaraz._preSet=[],a.zaraz.set=(e,t,r)=>{a.zarazData["z_"+e]=t,a.zaraz._preSet.push([e,t,r])},a.dataLayer.push({"zaraz.start":(new Date).getTime()}),a.addEventListener("DOMContentLoaded",(()=>{var t=e.getElementsByTagName(r)[0],z=e.createElement(r);z.defer=!0,z.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a.zarazData))),t.parentNode.insertBefore(z,t)}))}(w,d,0,"script");})(window,document);</script>
    </head>
    <body>
        <div class="main">

            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                    <div class="signup-form">
                    <h2 class="form-title">Sign up</h2>
                        <form:form method="post" class="register-form" id="register-form" action="${action}" 
                                   enctype="multipart/form-data" modelAttribute="user">
                            <div class="form-group">
                                <label for="firstname"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <form:input type="text" id="firstname" path="firstName" placeholder="Firstname" />
                            </div>
                           
                            <div class="form-group">
                                <label for="lastname"><i class="zmdi zmdi-email"></i></label>
                                <form:input type="text" path="lastName" id="lastName" placeholder="Lastname" />
                            </div>
                            <div class="form-group">
                                <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <form:input type="text" path="username" id="username" placeholder="Username" />
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <form:input type="text" path="email" id="email" placeholder="Email" />
                            </div>
                            <div class="form-group">
                                <label for="password"><i class="zmdi zmdi-lock"></i></label>
                                <form:input  type="password" path="password" id="password" placeholder="Password" />
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <form:input  type="password" id="confirm-password" path="confirmPassword" placeholder="Confirm password" />
                            </div>
                            <div class="form-group">
                                Choose User Role: 
                                <form:radiobutton path="userRole" value="role_candidate"/>Candidate   
                                <form:radiobutton path="userRole" value="role_recruit"/>Recruiter
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit"  class="form-submit" value="Register" />
                            </div>
                        </form:form>
                    </div>
                    <div class="signup-image">
                    <figure><img src="https://colorlib.com/etc/regform/colorlib-regform-7/images/signup-image.jpg" alt="sing up image"></figure>
                    <a href="login" class="signup-image-link">I am already member</a>
                    </div>
                    </div>
                    </div>
            </section>
    </div>

        <script src="https://colorlib.com/etc/regform/colorlib-regform-7/vendor/jquery/jquery.min.js"></script>

        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());

          gtag('config', 'UA-23581568-13');
        </script>
        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194" integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==" data-cf-beacon='{"rayId":"6d055a3e4ae74840","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.12.0","si":100}' crossorigin="anonymous"></script>
    </body>
</html>
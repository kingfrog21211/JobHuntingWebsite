<%-- 
    Document   : register
    Created on : Jan 17, 2022, 8:48:33 PM
    Author     : Asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register Form - JOB HUNTING</title>
	<style>
            .bootstrapiso .tooltip {
              font-size: 14px;
            }
            .bootstrapiso .tooltip-inner {
              max-width: 200px;
            }
            *{
                -webkit-locale: "en";
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            body {
                background: linear-gradient( #eee, #252525, #ff9f01);
                height: 100vh;
                overflow: hidden;
            }
            .container {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                width: 400px;
                background: white;
                border-radius: 10px;
                box-shadow: 0px 0px 15px rgb(0 0 0 / 5%);
            }
            .container h1 {
                text-align: center;
                padding-top: 20px;
            }
            h1 {
                display: block;
                font-size: 2em;
                margin-block-start: 0.67em;
                margin-block-end: 0.67em;
                margin-inline-start: 0px;
                margin-inline-end: 0px;
                font-weight: bold;
            }
            .container form {
                padding: 0 40px;
            }
            form {
                display: block;
                margin-top: 0em;
            }
            form .form-control {
                position: relative;
                border-bottom: 2px solid #adadad;
                margin: 40px 0;
            }
            .form-control input {
                width: 100%;
                height: 40px;
                font-size: 16px;
                border: none;
                background: none;
                outline: none;
            }
            input {
                -webkit-writing-mode: horizontal-tb !important;
                text-rendering: auto;
                color: -internal-light-dark(black, white);
                letter-spacing: normal;
                word-spacing: normal;
                line-height: normal;
                text-transform: none;
                text-indent: 0px;
                text-shadow: none;
                display: inline-block;
                text-align: start;
                appearance: auto;
                -webkit-rtl-ordering: logical;
                cursor: text;
                background-color: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
                margin: 0em;
                padding: 1px 2px;
                border-width: 2px;
                border-style: inset;
                border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
                border-image: initial;
            }
            .form-control span::before {
                content: '';
                position: absolute;
                top: 40px;
                left: 0;
                width: 0%;
                height: 2px;
                background: #2691d9;
                transition: 0.3s;
            }
            small {
                position: absolute;
                left: 0;
                top: 100%;
                margin-top: 3px;
                color: #e74c3c;
            }
            input[type='submit'] {
                margin-top: 20px;
                width: 100%;
                height: 50px;
                border: 1px solid;
                background: #2691d9;
                border-radius: 25px;
                font-size: 18px;
                color: #e9f4fb;
                font-weight: 700;
                cursor: pointer;
                outline: none;
                transition: 0.5s;
            }
            .signup_link {
                margin: 25px 0;
                text-align: center;
                font-size: 16px;
                color: #666666;
            }
            .signup_link a {
                color: #2691d9;
                text-decoration: none;
            }
            a:-webkit-any-link {
                color: -webkit-link;
                cursor: pointer;
                text-decoration: underline;
            }
        </style>
    <body>
        <div class="container">
            <h1>Register</h1>
            <form>
                <div class="form-control">
                    <input type="text" id="username" placeholder="Username">
                    <span></span>
                    <small></small>
                </div>
                <div class="form-control">
                    <input type="email" id="email" placeholder="Email">
                    <span></span>
                    <small></small>
                </div>
                <div class="form-control">
                    <input type="password" id="password" placeholder="Password">
                    <span></span>
                    <small></small>
                </div>
                <div class="form-control">
                    <input type="password" id="password2" placeholder="Confirm password">
                    <span></span>
                    <small></small>
                </div>
                <input style=" text-align:center " type="submit" value="Login">
                <div class="signup_link">Already a member? <a href="<c:url value="/"/>"> Go back to Login</a></div>
            </form>
        </div>
        <script src="app.js"></script>
        <div id="mttContainer" class="bootstrapiso" style="left: 0px; top: 0px; position: fixed; z-index: 100000200; width: 500px; margin-left: -250px; background-color: rgba(0, 0, 0, 0); pointer-events: none;" data-original-title="" title=""></div>
    </body>
</html>

<%-- 
    Document   : footer
    Created on : Dec 18, 2021, 9:59:03 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- info section -->
  <section class="info_section layout_padding2-bottom layout_padding-top">
    <div class="container info_content">
      <div>
        <div class="row">
          <div class="col-md-3 about_links">
            <div class="d-flex">
              <h5>About Us</h5>
            </div>
            <div class="d-flex ">
              <ul>
                <li>
                  <a href="">About Us</a>
                </li>
                <li>
                  <a href="">About services</a>
                </li>
                <li>
                  <a href="">About</a>
                </li>
                <li>
                  <a href="">Services</a>
                </li>
                <li>
                  <a href="">Contact Us</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-3">
            <div class="d-flex">
              <h5>Jobs</h5>
            </div>
            <div class="d-flex ">
              <ul>
                <li>
                  <a href="">established fact that a</a>
                </li>
                <li>
                  <a href="">reader will be</a>
                </li>
                <li>
                  <a href="">distracted by the</a>
                </li>
                <li>
                  <a href="">readable content of a</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-3">
            <div class="d-flex">
              <h5>Services</h5>
            </div>
            <div class="d-flex ">
              <ul>
                <li>
                  <a href="">established fact that a</a>
                </li>
                <li>
                  <a href="">reader will be</a>
                </li>
                <li>
                  <a href="">distracted by the</a>
                </li>
                <li>
                  <a href="">readable content of a</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-3">
            <div class="d-flex">
              <h5>Useful Link</h5>
            </div>
            <div class="d-flex ">
              <ul>
                <li>
                  <a href="">established fact that a</a>
                </li>
                <li>
                  <a href="">reader will be</a>
                </li>
                <li>
                  <a href="">distracted by the</a>
                </li>
                <li>
                  <a href="">readable content of a</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="row align-items-center">
        <div class="col-lg-3  mt-2">
          <div class="social-box">
            <a href="">
              <img src="images/fb.png" alt="" />
            </a>
            <a href="">
              <img src="images/twitter.png" alt="" />
            </a>
            <a href="">
              <img src="images/linkedin.png" alt="" />
            </a>
            <a href="">
              <img src="images/insta.png" alt="" />
            </a>
          </div>
        </div>
          
          <!-- subcribe email -->
        <div class="col-lg-9">
          <div class="form_container mt-2">
            <form action="">
              <label for="subscribeMail">Newsletter</label>
              <input type="email" name="email" placeholder="Enter Your email" id="subscribeMail" />
              <button type="submit">Subscribe</button>
            </form>
          </div>
        </div>
          <!-- end subcribe email -->
          
      </div>
    </div>
  </section>
  <!-- end info_section -->
  
  <!-- footer section -->
  <footer class="container-fluid footer_section">
    <p>&copy; 2022 All Rights Reserved By
        <a href="<c:url value="/"/>">JOB HUNTING</a>
    </p>
  </footer>
  <!-- footer section -->
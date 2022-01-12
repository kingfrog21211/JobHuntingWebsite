<%-- 
    Document   : index
    Created on : Dec 19, 2021, 6:39:19 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <!-- job section -->
  <section class="job_section layout_padding-bottom">
    <div class="container">
        <br><br>
        <div class="heading_container">
            <h2>Recommended jobs <br>
                <span>15000+ Job Available For you</span>
            </h2>
        </div>

        <div class="tab-content" id="myTabContent">
            <div class="job_board tab-pane fade show active" id="jb-1" role="tabpanel" aria-labelledby="jb-1-tab">
                <div class="content-box">
                    <div class="content layout_padding2-top">
                        <!-- career -->
                        <c:forEach items="${careers}" var="c">
                            <c:url value="/job" var="action">
                                <c:param name="careerId" value="${c.careerId}"/>
                            </c:url>
                            <div class="box">
                                <h3>${c.careerName}</h3>
                                <a href="${action}">See more</a>
                            </div>
                        </c:forEach>
                        <!-- career -->
                    </div>
                </div>
            </div>
        </div>
    </div>
  </section>
  <!-- end job section -->

  <!-- feature section -->
  <section class="feature_section">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-5 offset-md-1">
          <div class="detail-box">
            <h2>Featured job</h2>
            <p>
              It is a long established fact that a reader will be distracted by the readable content of a page when
              looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of
              letters, as opposed to using Content here, content here', making it look
            </p>
            <a href="">Read More</a>
          </div>
        </div>
        <div class="col-md-6 px-0">
          <div class="img-box">
            <img src="images/feature-img.jpg" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end feature section -->
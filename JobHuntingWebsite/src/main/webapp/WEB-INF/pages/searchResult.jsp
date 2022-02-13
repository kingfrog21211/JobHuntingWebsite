<%-- 
    Document   : searchResult
    Created on : Feb 2, 2022, 3:41:48 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/result.css">
    </head>
    <body>
        <div class="container">
            <div class="list-job">
                <div class="job-header">
                    <span>Tìm thấy <b class="text-highlight">
                            <c:if test="${recruitJobs.size()==1}"><span>1 Job Available For you</span></c:if>
                            <c:if test="${recruitJobs.size()>1}"><span>${recruitJobs.size()} Jobs Available For you</span></c:if>
                            <c:if test="${recruitJobs.size()==0}"><span>0 Job Available now</span></c:if></b>.
                    </span>
                </div>

                <div class="job-body row">
                    <div class="col-md-9">
                        <div class="lists">
                            <div class="job-item  job-ta result-job-hover" data-job-id="595575" data-job-position="1" data-box="BoxSearchResult">
                                <div class="avatar">
                                    <a target="_blank" href="https://www.topcv.vn/viec-lam/thuc-tap-sinh-kinh-doanh/595575.html?ta_source=JobSearchList" class="company-logo" rel="nooppener noreferrer">
                                    <img src="https://cdn.topcv.vn/80/company_logos/bt4aHjAUuUaPFunAcyJ3S9YtWgeoxHmw_1643255468____6e5c15c6d4ef07464482cfdc75fe2865.jpeg" class="w-100" alt="CÔNG TY TNHH CHUBB LIFE Việt Nam" title="Thực Tập Sinh Kinh Doanh">
                                    </a>
                                </div>
                                <div class="body">
                                    <div class="content">
                                        <div class="ml-auto">
                                            <h3 class="title">
                                            <a target="_blank" class="underline-box-job" href="https://www.topcv.vn/viec-lam/thuc-tap-sinh-kinh-doanh/595575.html?ta_source=JobSearchList" rel="nooppener noreferrer">
                                                <span class="bold transform-job-title" data-toggle="tooltip" title="" data-placement="top" data-container="body" data-original-title="Thực Tập Sinh Kinh Doanh">Thực Tập Sinh Kinh Doanh</span>
                                            </a>
                                            </h3>
                                            <p class="company underline-box-job">
                                                <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-chubb-life-viet-nam/86959.html" data-toggle="tooltip" title="" data-placement="top" data-container="body" target="_blank" rel="nooppener noreferrer" data-original-title="CÔNG TY TNHH CHUBB LIFE Việt Nam">CÔNG TY TNHH CHUBB LIFE Việt Nam</a>
                                            </p>
                                        </div>
                                        <div class="mr-auto text-right">
                                            <p class="deadline">
                                            Còn <strong>23</strong> ngày để ứng tuyển
                                            </p>
                                        </div>
                                    </div>
                                    <div class="d-flex">
                                        <div class="label-content ml-auto">
                                            <label class="salary">Thoả thuận</label>
                                            <label class="address" data-toggle="tooltip" title="" data-placement="top" data-container="body" data-original-title="Hồ Chí Minh">Hồ Chí Minh</label>
                                            <label class="time">Cập nhật 4 ngày trước</label>
                                        </div>
                                        <div class="icon mr-auto">
                                            <div id="box-save-job-595575" class="box-save-job  box-save-job-hover   job-notsave " style="width: 23px">
                                                <a href="javascript:void(0)" class="btn-save save" data-id="595575" data-title="Thực Tập Sinh Kinh Doanh">
                                                    <span id="save-job-loading" style="display: none;">
                                                        <img src="https://www.topcv.vn/v3/images/ap-loading.gif" style="width: 20px">
                                                    </span>
                                                    <i class="fa-light fa-heart"></i>
                                                </a>
                                                <a href="javascript:void(0)" class="btn-unsave unsave text-highlight" data-toggle="tooltip" title="" data-id="595575" data-title="Thực Tập Sinh Kinh Doanh" data-placement="top" data-container="body" data-original-title="Bỏ lưu">
                                                    <span id="unsave-job-loading" style="display: none;">
                                                        <img src="https://www.topcv.vn/v3/images/ap-loading.gif" style="width: 20px">
                                                    </span>
                                                    <i class="fa-solid fa-heart"></i>
                                                </a>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="job-item  job-ta result-job-hover" data-job-id="595575" data-job-position="1" data-box="BoxSearchResult">
                                <div class="avatar">
                                    <a target="_blank" href="https://www.topcv.vn/viec-lam/thuc-tap-sinh-kinh-doanh/595575.html?ta_source=JobSearchList" class="company-logo" rel="nooppener noreferrer">
                                    <img src="https://cdn.topcv.vn/80/company_logos/bt4aHjAUuUaPFunAcyJ3S9YtWgeoxHmw_1643255468____6e5c15c6d4ef07464482cfdc75fe2865.jpeg" class="w-100" alt="CÔNG TY TNHH CHUBB LIFE Việt Nam" title="Thực Tập Sinh Kinh Doanh">
                                    </a>
                                </div>
                                <div class="body">
                                    <div class="content">
                                        <div class="ml-auto">
                                            <h3 class="title">
                                            <a target="_blank" class="underline-box-job" href="https://www.topcv.vn/viec-lam/thuc-tap-sinh-kinh-doanh/595575.html?ta_source=JobSearchList" rel="nooppener noreferrer">
                                                <span class="bold transform-job-title" data-toggle="tooltip" title="" data-placement="top" data-container="body" data-original-title="Thực Tập Sinh Kinh Doanh">Thực Tập Sinh Kinh Doanh</span>
                                            </a>
                                            </h3>
                                            <p class="company underline-box-job">
                                                <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-chubb-life-viet-nam/86959.html" data-toggle="tooltip" title="" data-placement="top" data-container="body" target="_blank" rel="nooppener noreferrer" data-original-title="CÔNG TY TNHH CHUBB LIFE Việt Nam">CÔNG TY TNHH CHUBB LIFE Việt Nam</a>
                                            </p>
                                        </div>
                                        <div class="mr-auto text-right">
                                            <p class="deadline">
                                            Còn <strong>23</strong> ngày để ứng tuyển
                                            </p>
                                        </div>
                                    </div>
                                    <div class="d-flex">
                                        <div class="label-content ml-auto">
                                            <label class="salary">Thoả thuận</label>
                                            <label class="address" data-toggle="tooltip" title="" data-placement="top" data-container="body" data-original-title="Hồ Chí Minh">Hồ Chí Minh</label>
                                            <label class="time">Cập nhật 4 ngày trước</label>
                                        </div>
                                        <div class="icon mr-auto">
                                            <div id="box-save-job-595575" class="box-save-job  box-save-job-hover   job-notsave " style="width: 23px">
                                                <a href="javascript:void(0)" class="btn-save save" data-id="595575" data-title="Thực Tập Sinh Kinh Doanh">
                                                    <span id="save-job-loading" style="display: none;">
                                                        <img src="https://www.topcv.vn/v3/images/ap-loading.gif" style="width: 20px">
                                                    </span>
                                                    <i class="fa-light fa-heart"></i>
                                                </a>
                                                <a href="javascript:void(0)" class="btn-unsave unsave text-highlight" data-toggle="tooltip" title="" data-id="595575" data-title="Thực Tập Sinh Kinh Doanh" data-placement="top" data-container="body" data-original-title="Bỏ lưu">
                                                    <span id="unsave-job-loading" style="display: none;">
                                                        <img src="https://www.topcv.vn/v3/images/ap-loading.gif" style="width: 20px">
                                                    </span>
                                                    <i class="fa-solid fa-heart"></i>
                                                </a>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="job-item  job-ta result-job-hover" data-job-id="595575" data-job-position="1" data-box="BoxSearchResult">
                                <div class="avatar">
                                    <a target="_blank" href="https://www.topcv.vn/viec-lam/thuc-tap-sinh-kinh-doanh/595575.html?ta_source=JobSearchList" class="company-logo" rel="nooppener noreferrer">
                                    <img src="https://cdn.topcv.vn/80/company_logos/bt4aHjAUuUaPFunAcyJ3S9YtWgeoxHmw_1643255468____6e5c15c6d4ef07464482cfdc75fe2865.jpeg" class="w-100" alt="CÔNG TY TNHH CHUBB LIFE Việt Nam" title="Thực Tập Sinh Kinh Doanh">
                                    </a>
                                </div>
                                <div class="body">
                                    <div class="content">
                                        <div class="ml-auto">
                                            <h3 class="title">
                                            <a target="_blank" class="underline-box-job" href="https://www.topcv.vn/viec-lam/thuc-tap-sinh-kinh-doanh/595575.html?ta_source=JobSearchList" rel="nooppener noreferrer">
                                                <span class="bold transform-job-title" data-toggle="tooltip" title="" data-placement="top" data-container="body" data-original-title="Thực Tập Sinh Kinh Doanh">Thực Tập Sinh Kinh Doanh</span>
                                            </a>
                                            </h3>
                                            <p class="company underline-box-job">
                                                <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-chubb-life-viet-nam/86959.html" data-toggle="tooltip" title="" data-placement="top" data-container="body" target="_blank" rel="nooppener noreferrer" data-original-title="CÔNG TY TNHH CHUBB LIFE Việt Nam">CÔNG TY TNHH CHUBB LIFE Việt Nam</a>
                                            </p>
                                        </div>
                                        <div class="mr-auto text-right">
                                            <p class="deadline">
                                            Còn <strong>23</strong> ngày để ứng tuyển
                                            </p>
                                        </div>
                                    </div>
                                    <div class="d-flex">
                                        <div class="label-content ml-auto">
                                            <label class="salary">Thoả thuận</label>
                                            <label class="address" data-toggle="tooltip" title="" data-placement="top" data-container="body" data-original-title="Hồ Chí Minh">Hồ Chí Minh</label>
                                            <label class="time">Cập nhật 4 ngày trước</label>
                                        </div>
                                        <div class="icon mr-auto">
                                            <div id="box-save-job-595575" class="box-save-job  box-save-job-hover   job-notsave " style="width: 23px">
                                                <a href="javascript:void(0)" class="btn-save save" data-id="595575" data-title="Thực Tập Sinh Kinh Doanh">
                                                    <span id="save-job-loading" style="display: none;">
                                                        <img src="https://www.topcv.vn/v3/images/ap-loading.gif" style="width: 20px">
                                                    </span>
                                                    <i class="fa-light fa-heart"></i>
                                                </a>
                                                <a href="javascript:void(0)" class="btn-unsave unsave text-highlight" data-toggle="tooltip" title="" data-id="595575" data-title="Thực Tập Sinh Kinh Doanh" data-placement="top" data-container="body" data-original-title="Bỏ lưu">
                                                    <span id="unsave-job-loading" style="display: none;">
                                                        <img src="https://www.topcv.vn/v3/images/ap-loading.gif" style="width: 20px">
                                                    </span>
                                                    <i class="fa-solid fa-heart"></i>
                                                </a>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>

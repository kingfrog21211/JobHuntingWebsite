<%-- 
    Document   : admin
    Created on : Jan 29, 2022, 1:41:39 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<main class="content">
    <div class="container-fluid p-0">
        <h1 class="h3 mb-3"><strong>Analytics</strong> Dashboard</h1>
        <div class="row">
            <div class="col-xl-6 col-xxl-5 d-flex">
                <div class="w-100">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="card">
                                <div class="card-body">
                                    <h1 class="mt-1 mb-3">${candidates.size()} </h1>
                                    <div class="row">
                                        <div class="col mt-0">
                                            <h5 class="card-title">Candidates</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <h1 class="mt-1 mb-3">${companies.size()}</h1>
                                    <div class="row">
                                        <div class="col mt-0">
                                            <h5 class="card-title">Companies</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="card">
                                <div class="card-body">
                                    <h1 class="mt-1 mb-3">${recruitJobs.size()}</h1>
                                    <div class="row">
                                        <div class="col mt-0">
                                            <h5 class="card-title">Jobs</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <h1 class="mt-1 mb-3">${careers.size()}</h1>
                                    <div class="row">
                                        <div class="col mt-0">
                                            <h5 class="card-title">Careers</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-6 col-xxl-7">
                    <div class="card flex-fill w-100">
                            <div class="card-header">

                                    <h5 class="card-title mb-0">Recent Movement</h5>
                            </div>
                            <div class="card-body py-3">
                                    <div class="chart chart-sm">
                                            <canvas id="chartjs-dashboard-line"></canvas>
                                    </div>
                            </div>
                    </div>
            </div>
        </div>
    </div>
</main>
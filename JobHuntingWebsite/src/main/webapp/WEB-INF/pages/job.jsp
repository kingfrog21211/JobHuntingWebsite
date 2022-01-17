<%-- 
    Document   : job
    Created on : Dec 20, 2021, 1:09:45 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>

    <!-- job section -->
    <section class="job_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <h2>Recommended jobs <br>
                    <c:if test="${recruitJobs.size()==1}"><span>1 Job Available For you</span></c:if>
                    <c:if test="${recruitJobs.size()>1}"><span>${recruitJobs.size()} Jobs Available For you</span></c:if>
                    <c:if test="${recruitJobs.size()==0}"><span>0 Job Available now</span></c:if>
                </h2>
            </div>

            <c:if test="${recruitJobs.size()==0}">
                <div class="text text-center text-danger">
                    There are not any job that you want now, please come back later!!!
                </div>
            </c:if>
                
            <noscript>
                <iframe height='0' src='//www.googletagmanager.com/ns.html?id=GTM-5DSLL8' style='display:none;visibility:hidden' width='0'></iframe>
            </noscript>
            <script>
                (function(w,d,s,l,i){
                    w[l]=w[l]||[];
                    w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});
                    var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
                    j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                }
                )
                (window,document,'script','dataLayer','GTM-5DSLL8');
            </script>

            <div style="margin: 20px auto 0; display: grid; grid-template-columns: 500px 1fr" id="search-results">
                
                <div class="tab-content" id="myTabContent" style="border-right: 1px; overflow: scroll; position: sticky; top: 60px; height: calc(100vh - 60px);">
                    <div class="job_board tab-pane fade show active"  id="jb-1" role="tabpanel" aria-labelledby="jb-1-tab">
                    <c:forEach items="${recruitJobs}" var="rj">
                        <div class="job job--selected" style="background-color: #252525;" data-action="click->search--job-selection#select" data-controller="search--job-selection" data-search--job-selection-auto-select-value="1" data-search--job-selection-job-url-value="/it-jobs/senior-up-devops-engineer-nashtech-4930/content">
                            <div class="job_content" style="position: relative">
                                <span style="font-size: 25px;color:#ffffff;position: absolute;top: 20px;right: 20px;cursor: pointer; z-index: 2;">
                                    <i class='bx bx-heart' id="heart"></i>
                                </span>
                                <!-- logo -->
                                <div class="logo">
                                    <div class="logo-wrapper" data-controller="tooltip" title="" data-bs-original-title="">
                                        
                                        <c:if test="${rj[4]!=null}">
                                            <a target="_blank" href="<c:url value="/company/${rj[0]}"/>">
                                                <param name="recruitId" value="${rj[0]}"/>
                                                <img src="${rj[4]}" alt="${rj[5]}" data-controller="lazyload" class=" ls-is-cached lazyloaded" title="${rj[5]}" style="height: 65px; width: 65px"/>
                                            </a>
                                        </c:if>
                                        <c:if test="${rj[4] == null}">
                                            <a target="_blank" href="<c:url value="/company/${rj[0]}"/>">
                                                <param name="recruitId" value="${rj[0]}"/>
                                                <img src="https://res.cloudinary.com/tcme212/image/upload/v1642397265/icon_eif3gg.png" alt="${rj[5]}" data-controller="lazyload" class=" ls-is-cached lazyloaded" title="${rj[5]}" style="height: 65px; width: 65px"/>
                                            </a>
                                        </c:if>
                                        
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- logo -->

                                <!-- job description -->
                                <div class="job__description">
                                    <!-- job title -->
                                    <div class="job__body">
                                        <div class="details">
                                            <!-- job -->
                                            <h3 class="title">
                                                
                                                    <a href="${action}">
<!--                                                        <param name="recruitJobId" value="">-->
                                                        <strong style="color: #ff9f01">${rj[1]}</strong>
                                                    </a>
                                            </h3>
                                            <!-- company -->
                                            <h4>
                                                <a href="<c:url value="/company/${rj[0]}"/>" style="color: #fff"> ${rj[5]} </a>
                                            </h4>
                                            <!-- salary -->
                                            <div class="svg-icon svg-icon--rounded">
                                                <box-icon name='dollar-circle' color='#6bf400' ></box-icon>
                                                <div class="svg-icon__text" style="color: #6bf400">${rj[6]}</div>        
                                            </div>
                                            <!-- city -->
                                            <div class="">
                                                <div class="city" style="color: #fff">${rj[7]}</div>
                                            </div>
                                        </div>
                                    </div>
                                            
                                    <!-- update time -->
                                    <div class="job-bottom">
                                        <div class="tag-list" style="color: #fff">
                                            <span>Post date: ${rj[2]}</span> &emsp;
                                            <span>Expiration Date: ${rj[3]}</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- job description -->
                            </div>
                        </div>
                        <br>
                    </c:forEach>
                </div>
            </div>
               
                <div style="position: relative; background-color: #fff">
                    <div style="padding: 0 30px;">
                        <div class="job-details job-details--show-employer" style="word-break: break-word;">
                            <div class="job-details__header">
                                <h1 class="job-details__title">Senior up DevOps Engineer</h1>
                                    <div class="job-details__sub-title">
                                    NashTech
                                    </div>
                                <div class="job-details__apply">
                                    <div class="job-details__apply-box">
                                        <a class="job-details__apply-btn button-red btn-block flex-grow-1" rel="nofollow" data-controller="utm-tracking" target="_blank" href="/job/senior-up-devops-engineer-nashtech-4930/job_applications/new?source=preview_job">Apply Now</a>
                                        <div class="job-details__save-job hidden-xs d-none d-sm-block" id="e8e9ce40-5ab2-4288-9948-538281b44b58">
                                            <div class="saved-body">
                                                <a href="/sign_in">
                                                    <div class="saved saved-default">
                                                        <svg class="heart-icon">
                                                            <use xlink:href="#heart_icon"></use>
                                                        </svg>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="job-details__overview">
                            <div class="job-details__tag-list">
                                <a class="big ilabel mkt-track" data-controller="utm-tracking" href="/it-jobs/devops/ha-noi">
                                    <span>
                                    DevOps
                                    </span>
                                </a>
                                <a class="big ilabel mkt-track" data-controller="utm-tracking" href="/it-jobs/aws/ha-noi">
                                    <span>
                                    AWS
                                    </span>
                                </a>
                                <a class="big ilabel mkt-track" data-controller="utm-tracking" href="/it-jobs/cloud/ha-noi">
                                    <span>
                                    Cloud
                                    </span>
                                </a>
                            </div>
                            <div class="svg-icon svg-icon--rounded svg-icon--grey svg-icon--bold">
                                <svg class="svg-icon__icon">
                                    <use xlink:href="#usd_icon"></use>
                                </svg>
                                <div class="svg-icon__text">
                                    <a class="ilink ilink--grey ilink--dotted ilink--direction" rel="nofollow" href="/sign_in">Sign in to view
                                    </a>
                                </div>
                            </div>
                            <div class="svg-icon">
                                <svg class="svg-icon__icon">
                                    <use xlink:href="#location_icon"></use>
                                </svg>
                                <div class="svg-icon__text">
                                    <span>364 Cong Hoa, Tan Binh, Ho Chi Minh</span>
                                    <a target="_blank" class="job-details__address-map hidden-xs d-none d-sm-inline-block" href="https://www.google.com/maps?q=364+Cong+Hoa%2C+Tan+Binh%2C+Ho+Chi+Minh"><div class="job-details__address-text">See map</div>
                                        <div class="job-details__address-arrow"></div>
                                    </a></div>
                            </div>
                            <div class="svg-icon">
                                <svg class="svg-icon__icon">
                                    <use xlink:href="#location_icon"></use>
                                </svg>
                                <div class="svg-icon__text">
                                    <span>239 Xuan Thuy, Hanoi, Vietnam, Cau Giay, Ha Noi</span>
                                    <a target="_blank" class="job-details__address-map hidden-xs d-none d-sm-inline-block" href="https://www.google.com/maps?q=239+Xuan+Thuy%2C+Hanoi%2C+Vietnam%2C+Cau+Giay%2C+Ha+Noi"><div class="job-details__address-text">See map</div>
                                        <div class="job-details__address-arrow"></div>
                                    </a></div>
                            </div>
                            <div class="svg-icon">
                                <svg class="svg-icon__icon">
                                    <use xlink:href="#calendar_icon"></use>
                                </svg>
                                <div class="svg-icon__text">1 day ago</div>
                            </div>
                            </div>
                            <div class="job-details__divider"></div>
                            <h2 class="job-details__second-title">Top 3 Reasons To Join Us</h2>
                            <div class="job-details__top-reason-to-join-us">
                            <ul>
                            <li>13th Salary + Yearly Performance Bonus</li>
                            <li>Premium Health Insurance Package</li>
                            <li>Intensive Training Program</li>
                            </ul>
                            </div>
                            <h2 class="job-details__second-title">Job Description</h2>
                            <div class="job-details__paragraph">
                                <p>The Senior DevOps Engineer is responsible to design, build and maintain the CI/CD solutions for dedicated/ hybrid cloud environments. The Senior DevOps Engineer works with software developers and other production IT staff to oversee code releases.</p>
                                <ul>
                                    <li>Working together with engineers to get things done faster in an automated and repeatable way;</li>
                                    <li>Work closely with the development team to analyze and implement branching strategies and subsequently implement Build and Deploy automation;</li>
                                    <li>Contribute to design; developing, configuring, administrating, and maintaining CI (Continuous Integration) and CD (Continuous Delivery) tools/utilities for monolithic/modular systems (development, staging, production);</li>
                                    <li>Implement, configure and administrate system logging management if needed;</li>
                                    <li>Work closely with development and testing project teams in setting up a dev environment and necessary components for automation testing and performance testing, to help them in deploying and operating different system environments;</li>
                                    <li>Support development team to troubleshot and resolve system problems;</li>
                                    <li>Administer, deploy, monitor, health check system, ensure high availability and backup;</li>
                                    <li>Developing the features to enhance CI/CD environment and writing scripts for automation using at least one scripting language such as Perl/Python/Groovy/Java/Bash;</li>
                                    <li>Infrastructure as Code: provisioning, versioning, rollback the environment by scripts (Vagrant, Ansible, docker-compose, docker registry);</li>
                                    <li>Configure and manage data sources like MySQL, Mongo, Elasticsearch, Redis, Cassandra, Hadoop, etc.;</li>
                                    <li>Research new system techniques/tools to improve the productivity of DevOps team;</li>
                                    <li>Train, Coach and mentor the new junior DevOps project members;</li>
                                    <li>To obtain professional certificates if being requested;</li>
                                    <li>To implement strictly all the customer’s processes if being requested, the company’s processes and systems complied with CMMI standards.</li>
                                </ul>
                            </div>
                            <h2 class="job-details__second-title">Your Skills and Experience</h2>
                            <div class="job-details__paragraph">
                                <ul>
                                    <li>Good knowledge and experience of computer networking;</li>
                                    <li>Good knowledge of Windows/Linux/Mac-based systems;</li>
                                    <li>Good knowledge of system scripting languages such as PowerShell on Windows, Linux Shell, Python;</li>
                                    <li>Basic knowledge of designing and set up Continuous Integration and Continuous Delivery solutions with Jenkins / TeamCity / VSTS, Ansible / Puppet / Chef / Octopus / Terraform;</li>
                                    <li>Can configure product deployment staging;</li>
                                    <li>Has experienced with Logging management tools such as ELK/EFK;</li>
                                    <li>Has experienced with Monitoring systems such as Azure AppInsights / Grafana / Prometheus / Zabbix / Cacti;</li>
                                    <li>Has experienced with Cloud base systems (AWS / Azure / GCP);</li>
                                    <li>Strong knowledge of Docker/container technologies;</li>
                                    <li>Strong knowledge of performance, security, load balancing, and system troubleshooting;</li>
                                    <li>Good knowledge of performance optimization of network latency, storage I/O on Windows Server, Linux;</li>
                                    <li>Good knowledge of common services of Azure, AWS such as networking, instances, load balancing, storage, dynamic domain, CLI;</li>
                                    <li>Good experience with SQL and MySQL (NoSQL experience is a plus);</li>
                                    <li>Be proficient in company/project process;</li>
                                    <li>Able to read &amp; well understand English materials;</li>
                                    <li>Able to transfer information from visual to text in English;</li>
                                    <li>Able to handle normal English verbal conversation in both life and work-related;</li>
                                    <li>Accountable and proactive.</li>
                                </ul>
                            </div>
                            <h2 class="job-details__second-title">Why You'll Love Working Here</h2>
                            <div class="job-details__paragraph">
                                <ul>
                                    <li>13 month salary per year</li>
                                    <li>Performance bonus (up to 2-month salary)</li>
                                    <li>Flexible option bonus for good performers &amp; retention bonus for outstanding performers</li>
                                    <li>Social – Health – Insurance paid fully</li>
                                    <li>Healthcare: Annual health check-up, Premium Health Insurance (plus 1 slot for your dependent)</li>
                                    <li>Annual leaves: 14 ~ 18 days</li>
                                    <li>Clubs program: Football, Badminton, Swimming, Tennis, Rock, Yoga…</li>
                                    <li>Training courses: Technical skills – Soft skills – English</li>
                                </ul><p>People are extremely important to us and that’s why we have a clear vision: to make NashTech a great place to work in its sector. We pride ourselves on:</p><ul>
                                    <li>Professional and Flexible Working Environment</li>
                                    <li>Great Teamwork</li>
                                    <li>International Assignments</li>
                                    <li>WeCare - WeShare - WeDare - WeInnovate Engagement Program</li>
                                </ul>
                            </div>
                            </div>
                    </div>
                </div>
            </div>
                
        </div>
    </section>
  <!-- end job section -->
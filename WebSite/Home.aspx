<%@ Page Title="" Language="C#" MasterPageFile="~/tutor.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--=========== BEGIN SLIDER SECTION ================-->
    <section id="slider">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="slider_area">
                    <!-- Start super slider -->
                    <div id="slides">
                        <ul class="slides-container">
                            <li>
                                <img src="img/slider/2.jpg" alt="img">
                                <div class="slider_caption">
                                    <h2>Largest & Beautiful Online Tutor</h2>
                                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                                    <a class="slider_btn" href="#">Know More</a>
                                </div>
                            </li>
                            <!-- Start single slider-->
                            <li>
                                <img src="img/slider/3.jpg" alt="img">
                                <div class="slider_caption slider_right_caption">
                                    <h2>Better Education Environment</h2>
                                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search</p>
                                    <a class="slider_btn" href="#">Know More</a>
                                </div>
                            </li>
                            <!-- Start single slider-->
                            <li>
                                <img src="img/slider/4.jpg" alt="img">
                                <div class="slider_caption">
                                    <h2>Find out you in better way</h2>
                                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search</p>
                                    <a class="slider_btn" href="#">Know More</a>
                                </div>
                            </li>
                        </ul>
                        <nav class="slides-navigation">
                            <a href="#" class="next"></a>
                            <a href="#" class="prev"></a>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=========== END SLIDER SECTION ================-->

    <!--=========== BEGIN ABOUT US SECTION ================-->
    <section id="aboutUs">
        <div class="container">
            <div class="row">
                <!-- Start about us area -->
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="aboutus_area wow fadeInLeft">
                        <h2 class="titile">About Us</h2>
                        <p>Online tutoring is the process of tutoring in an online, virtual environment or networked environment in which teachers and learners are separated by time
                             and space. Online tutoring, as a reflection of the diversity of the wider Internet, is practiced using many different approaches and is addressed to distinct
                             sets of users. The distinctions are in online content and interface, as well as in tutoring and tutor-training methodologies. Definitions associated with online
                             tutoring vary widely, reflecting the ongoing evolution of the technology, the refinement and variation in online learning methodology, and the interactions of 
                            the organizations that deliver online tutoring services with the institutions, individuals, and learners that employ the services. This form of Internet service 
                            is a classical micropublishing situation.</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="newsfeed_area wow fadeInRight">
                        <ul class="nav nav-tabs feed_tabs" id="myTab2">
                            <li class="active"><a href="#news" data-toggle="tab">News</a></li>
                            <li><a href="#notice" data-toggle="tab">Notice</a></li>
                            <li><a href="#events" data-toggle="tab">Events</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <!-- Start news tab content -->
                            <div class="tab-pane fade in active" id="news">
                                <ul class="news_tab">
                                    <li>
                                        <div class="media">
                                            <div class="media-left">
                                                <a class="news_img" href="#">
                                                    <img class="media-object" src="img/new.ico" alt="img" />
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#">Dummy text of the printing and typesetting industry</a>
                                                <span class="feed_date">02.03.18</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media">
                                            <div class="media-left">
                                                <a class="news_img" href="#">
                                                    <img class="media-object" src="img/new.ico" alt="img" />
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#">Dummy text of the printing and typesetting industry</a>
                                                <span class="feed_date">20.05.18</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media">
                                            <div class="media-left">
                                                <a class="news_img" href="#">
                                                    <img class="media-object" src="img/new.ico" alt="img" />
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#">Dummy text of the printing and typesetting industry</a>
                                                <span class="feed_date">28.02.18</span>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <a class="see_all" href="#">See All</a>
                            </div>
                            <!-- Start notice tab content -->
                            <div class="tab-pane fade " id="notice">
                                <div class="single_notice_pane">
                                    <ul class="news_tab">
                                        <li>
                                            <div class="media">
                                                <div class="media-left">
                                                    <a class="news_img" href="#">
                                                        <img class="media-object" src="img/notice.png" alt="img" />
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <a href="#">Dummy text of the printing and typesetting industry</a>
                                                    <span class="feed_date">27.02.15</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <div class="media-left">
                                                    <a class="news_img" href="#">
                                                        <img class="media-object" src="img/notice.png" alt="img" />
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <a href="#">Dummy text of the printing and typesetting industry</a>
                                                    <span class="feed_date">28.02.18</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <div class="media-left">
                                                    <a class="news_img" href="#">
                                                        <img class="media-object" src="img/notice.png" alt="img" />
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <a href="#">Dummy text of the printing and typesetting industry</a>
                                                    <span class="feed_date">28.04.18</span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="news_tab">
                                        <li>
                                            <div class="media">
                                                <div class="media-left">
                                                    <a class="news_img" href="#">
                                                        <img class="media-object" src="img/notice.png" alt="img" />
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <a href="#">Contrary to popular belief, Lorem Ipsum is not simply random text</a>
                                                    <span class="feed_date">27.06.18</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <div class="media-left">
                                                    <a class="news_img" href="#">
                                                        <img class="media-object" src="img/notice.png" alt="img" />
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <a href="#">Dummy text of the printing and typesetting industry</a>
                                                    <span class="feed_date">15.05.18</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <div class="media-left">
                                                    <a class="news_img" href="#">
                                                        <img class="media-object" src="img/notice.png" alt="img" />
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <a href="#">Contrary to popular belief, Lorem Ipsum is not simply random text</a>
                                                    <span class="feed_date">20.04.18</span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Start events tab content -->
                            <div class="tab-pane fade " id="events">
                                <ul class="news_tab">
                                    <li>
                                        <div class="media">
                                            <div class="media-left">
                                                <a class="news_img" href="#">
                                                    <img class="media-object" src="img/event.png" alt="img" />
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#">Dummy text of the printing and typesetting industry</a>
                                                <span class="feed_date">27.06.18</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media">
                                            <div class="media-left">
                                                <a class="news_img" href="#">
                                                    <img class="media-object" src="img/event.png" alt="img" />
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#">Dummy text of the printing and typesetting industry</a>
                                                <span class="feed_date">28.06.18</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media">
                                            <div class="media-left">
                                                <a class="news_img" href="#">
                                                    <img class="media-object" src="img/event.png" alt="img" />
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#">Dummy text of the printing and typesetting industry</a>
                                                <span class="feed_date">08.07.18</span>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <a class="see_all" href="#">See All</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=========== END ABOUT US SECTION ================-->

    <!--=========== BEGIN WHY US SECTION ================-->
    <section id="whyUs">
        <!-- Start why us top -->
        <div class="row">
            <div class="col-lg-12 col-sm-12">
                <div class="whyus_top">
                    <div class="container">
                        <!-- Why us top titile -->
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="title_area">
                                    <h2 class="title_two">Why Us</h2>
                                    <span></span>
                                </div>
                            </div>
                        </div>
                        <!-- End Why us top titile -->
                        <!-- Start Why us top content  -->
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_whyus_top wow fadeInUp">
                                    <div class="whyus_icon">
                                        <span class="fa fa-desktop"></span>
                                    </div>
                                    <h3>Technology</h3>
                                    <p>"Technology  asprinciples, processes, and nomenclatures of the more conspicuous arts, particularly those which involve applications of science,
                                         and which may be considered useful, by promoting the benefit of society, together with the emolument of those who pursue them"</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_whyus_top wow fadeInUp">
                                    <div class="whyus_icon">
                                        <span class="fa fa-users"></span>
                                    </div>
                                    <h3>Best Tutor</h3>
                                    <p>Personalized tutoring fills a niche that can't be filled in today's schools alone. Tutoring is becoming more common in schools with blended learning programs. 
                                        The Gates Foundation is giving grants to innovative online tutoring companies like Tutor.com and Khan Academy.</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_whyus_top wow fadeInUp">
                                    <div class="whyus_icon">
                                        <span class="fa fa-flask"></span>
                                    </div>
                                    <h3>Practical Training</h3>
                                    <p>Practical training is part of all the Bachelor's degrees completed at the universities of applied sciences. Practical training means studying which takes place in a company or business,
                                         offering the student the opportunity to adapt what she or he has learned in practice and develop professionally.</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_whyus_top wow fadeInUp">
                                    <div class="whyus_icon">
                                        <span class="fa fa-support"></span>
                                    </div>
                                    <h3>Support</h3>
                                    <p>Support may refer to: Support (structure), architectural components that include arches, beams, columns, balconies, and stretchers. Lateral support (disambiguation) Life support, in medicine.
                                         Technical support, help for computer hardware, software, or electronic goods.</p>
                                </div>
                            </div>
                        </div>
                        <!-- End Why us top content  -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End why us top -->


    </section>
    <!--=========== END WHY US SECTION ================-->

    <!--=========== BEGIN OUR COURSES SECTION ================-->
    <section id="ourCourses">
        <div class="container">
            <!-- Our courses titile -->
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two">Our Courses</h2>
                        <span></span>
                    </div>
                </div>
            </div>
            <!-- End Our courses titile -->
            <!-- Start Our courses content -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="ourCourse_content">
                        <ul class="course_nav">
                            <li>
                                <div class="single_course">
                                    <div class="singCourse_imgarea">
                                        <img src="img/net.png" alt="img" height="200px" />
                                        <div class="mask">
                                            <a href="#" class="course_more">View Course</a>
                                        </div>
                                    </div>
                                    <div class="singCourse_content">
                                        <h3 class="singCourse_title"><a href="#">Introduction To .NET</a></h3>
                                        <p class="singCourse_price"><span>₹2000</span> Per One Month</p>
                                        <p>The name of the software environment is Common Language Runtime (CLR). Programmers produce software by combining their own source code with the DOT NET Framework and other libraries.
                                             The DOT NET Framework is projected to be used by most new applications created for the Windows platform.</p>
                                         
                                    </div>
                                    <div class="singCourse_author">
                                        <img src="img/n.jpg" alt="img"  />
                                        <p>Gausiya Yasmeen, Teacher</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_course">
                                    <div class="singCourse_imgarea">
                                        <img src="img/java.png" alt="img" height="200px" />
                                        <div class="mask">
                                            <a href="#" class="course_more">View Course</a>
                                        </div>
                                    </div>
                                    <div class="singCourse_content">
                                        <h3 class="singCourse_title"><a href="#">Introduction To JAVA</a></h3>
                                        <p class="singCourse_price"><span>₹2500</span> Per One Month</p>
                                        <p>Java is an object-oriented programming language with its runtime environment. features of C++ with some essential additional concepts. 
                                             Java is well suited for both standalone web application and development and designed to provide solutions to most of the problems faced by users of the internet.</p>
                                    </div>
                                    <div class="singCourse_author">
                                        <img src="img/g.jpg" alt="img" />
                                        <p>Niharika srivastava, Teacher</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_course">
                                    <div class="singCourse_imgarea">
                                        <img src="img/c.jpg" alt="img" height="200px" />
                                        <div class="mask">
                                            <a href="#" class="course_more">View Course</a>
                                        </div>
                                    </div>
                                    <div class="singCourse_content">
                                        <h3 class="singCourse_title"><a href="#">Introduction To C++</a></h3>
                                        <p class="singCourse_price"><span>₹1000</span> Per One Month</p>
                                        <p>C++ is a general-purpose programming language. features of C++ with some essential additional concepts. Many other programming languages have been influenced.
                                             It has imperative, object-oriented and generic programming features, while also providing facilities for low-level memory manipulation.</p>
                                    </div>
                                    <div class="singCourse_author">
                                        <img src="img/s.jpg" alt="img" />
                                        <p>Shipra shukla, Teacher</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_course">
                                    <div class="singCourse_imgarea">
                                        <img src="img/dbms.png" alt="img" height="200px" />
                                        <div class="mask">
                                            <a href="#" class="course_more">View Course</a>
                                        </div>
                                    </div>
                                    <div class="singCourse_content">
                                        <h3 class="singCourse_title"><a href="#">Introduction To DBMS</a></h3>
                                        <p class="singCourse_price"><span>₹1000</span> Per One Month</p>
                                        <p>A database management system (DBMS) is system software for creating and managing databases.
                                             The DBMS provides users and programmers with a systematic way to create, retrieve, update and manage data.</p>
                                    </div>
                                    <div class="singCourse_author">
                                        <img src="img/r.jpg" alt="img" />
                                        <p>Rohit Vishwakatma, Teacher</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_course">
                                    <div class="singCourse_imgarea">
                                        <img src="img/javas.jpg" alt="img" height="200px" />
                                        <div class="mask">
                                            <a href="#" class="course_more">View Course</a>
                                        </div>
                                    </div>
                                    <div class="singCourse_content">
                                        <h3 class="singCourse_title"><a href="#">Introduction To JavaScript</a></h3>
                                        <p class="singCourse_price"><span>₹500</span> Per One Month</p>
                                        <p>JavaScript, often abbreviated as JS, is a high-level, interpreted programming language. 
                                            It is a language which is also characterized as dynamic, weakly typed, prototype-based and multi-paradigm.</p>
                                    </div>
                                    <div class="singCourse_author">
                                        <img src="img/m.jpg" alt="img" />
                                        <p>Mukesh kumar, Teacher</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_course">
                                    <div class="singCourse_imgarea">
                                        <img src="img/php.png"alt="img" height="200px" />
                                        <div class="mask">
                                            <a href="#" class="course_more">View Course</a>
                                        </div>
                                    </div>
                                    <div class="singCourse_content">
                                        <h3 class="singCourse_title"><a href="#">Introduction To PHP</a></h3>
                                        <p class="singCourse_price"><span>₹1500</span> Per One Month</p>
                                        <p>PHP: Hypertext Preprocessor is a server-side scripting language designed for web development but also used as a general-purpose programming language.
                                            PHP code may be embedded into HTML code.
                                        </p>
                                    </div>
                                    <div class="singCourse_author">
                                        <img src="img/b.jpeg" alt="img" />
                                        <p> Brijesh Singh, Teacher</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- End Our courses content -->
        </div>
    </section>
    <!--=========== END OUR COURSES SECTION ================-->

    <!--=========== BEGIN OUR TUTORS SECTION ================-->
    <section id="ourTutors">
        <div class="container">
            <!-- Our courses titile -->
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two">Our Tutors</h2>
                        <span></span>
                    </div>
                </div>
            </div>
            <!-- End Our courses titile -->

            <!-- Start Our courses content -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="ourTutors_content">
                        <!-- Start Tutors nav -->
                        <ul class="tutors_nav">
                            <li>
                                <div class="single_tutors">
                                    <div class="tutors_thumb">
                                        <img src="img/s1.jpg" />
                                    </div>
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Ankit Verma</h3>
                                        <span>.NET Technology Teacher</span>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_tutors">
                                    <div class="tutors_thumb">
                                        <img src="img/s2.jpg" />
                                    </div>
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Prakher Shukla</h3>
                                        <span>JAVA Technology Teacher</span>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_tutors">
                                    <div class="tutors_thumb">
                                        <img src="img/s5.jpg" />
                                    </div>
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Urmila Verma</h3>
                                        <span>PHP Technology Teacher</span>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_tutors">
                                    <div class="tutors_thumb">
                                        <img src="img/s4.png" />
                                    </div>
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Neeraj Kumar Verma</h3>
                                        <span>C# Technology Teacher</span>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_tutors">
                                    <div class="tutors_thumb">
                                        <img src="img/s3.jpg" />
                                    </div>
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Mukesh Kumar</h3>
                                        <span>Python Technology Teacher</span>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_tutors">
                                    <div class="tutors_thumb">
                                        <img src="img/s6.jpg" />
                                    </div>
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Vikas Singh</h3>
                                        <span>Java Script Teacher</span>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- End Our courses content -->
        </div>
    </section>
    <!--=========== END OUR TUTORS SECTION ================-->

    <!--=========== BEGIN STUDENTS TESTIMONIAL SECTION ================-->
    <section id="studentsTestimonial">
        <div class="container">
            <!-- Our courses titile -->
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two">What our Student says</h2>
                        <span></span>
                    </div>
                </div>
            </div>
            <!-- End Our courses titile -->

            <!-- Start Our courses content -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="studentsTestimonial_content">
                        <div class="row">
                            <!-- start single student testimonial -->
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="single_stsTestimonial wow fadeInUp">
                                    <div class="stsTestimonial_msgbox">
                                        <p>when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
                                    </div>
                                    <img class="stsTesti_img" src="img/t1.jpeg" alt="img" />
                                    <div class="stsTestimonial_content">
                                        <h3>Sumit Kumar Verma</h3>
                                        <span>Ex. Student</span>
                                        <p>Software Department</p>
                                    </div>
                                </div>
                            </div>
                            <!-- End single student testimonial -->
                            <!-- start single student testimonial -->
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="single_stsTestimonial wow fadeInUp">
                                    <div class="stsTestimonial_msgbox">
                                        <p>when an unknown printer took a galley of type and scrambled it to make a type specimen book.scrambled it to make a type specimen book</p>
                                    </div>
                                    <img class="stsTesti_img" src="img/t3.jpg" alt="img">
                                    <div class="stsTestimonial_content">
                                        <h3>Surjeet Kumar</h3>
                                        <span>Ex. Student</span>
                                        <p>Software Designer</p>
                                    </div>
                                </div>
                            </div>
                            <!-- End single student testimonial -->
                            <!-- start single student testimonial -->
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="single_stsTestimonial wow fadeInUp">
                                    <div class="stsTestimonial_msgbox">
                                        <p>when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
                                    </div>
                                    <img class="stsTesti_img" src="img/t2.png" alt="img">
                                    <div class="stsTestimonial_content">
                                        <h3>Rupesh Kumar</h3>
                                        <span>Ex. Student</span>
                                        <p>Software Department</p>
                                    </div>
                                </div>
                            </div>
                            <!-- End single student testimonial -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Our courses content -->
        </div>
    </section>
    <!--=========== END STUDENTS TESTIMONIAL SECTION ================-->
</asp:Content>


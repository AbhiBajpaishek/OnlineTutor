<%@ Page Title="" Language="C#" MasterPageFile="~/Tutor.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="imgBanner">
       
        <h2>Course</h2>
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->

    <!--=========== BEGIN CONTACT SECTION ================-->
    <section id="contact">
        <div class="container">
            
            <!--===========start course =============-->
            <!-- <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two">Course Detail</h2>
                        <span></span>
                        <asp:GridView ID="grdcourse" runat="server" AutoGenerateColumns="false" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

                    <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                    <RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                    <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                    <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

                    <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                    <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
                    <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
                    <Columns>
                        <asp:TemplateField HeaderText="SNo">
                            <ItemTemplate>
                                <span>
                                    <%#Container.DataItemIndex + 1%>
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CourseName">
                            <ItemTemplate>
                                <asp:Label ID="lblcoursename" runat="server" Text='<%#Bind("Coursename") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtcoursename" runat="server" Text='<%#Bind("Coursename") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CourseFee">
                            <ItemTemplate>
                                <asp:Label ID="lblcfee" runat="server" Text='<%#Bind("Coursefee") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtcfee" runat="server" Text='<%#Bind("Coursefee") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Duration">
                            <ItemTemplate>
                                <asp:Label ID="lblcduration" runat="server" Text='<%#Bind("duration") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtcduration" runat="server" Text='<%#Bind("duration") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

                    </div>
                </div>
            </div>-->
                <!--======== End course============-->
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
                                        <img src="img/n.jpg" alt="img" />
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
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="contact_form wow fadeInLeft">
                        <form class="submitphoto_form">
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-ld-3  col-md-3 col-sm-3">
                    <div class="single_footer_widget">
                        <h3>About Us</h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            <div class="col-ld-3  col-md-3 col-sm-3">
                    <div class="single_footer_widget">
                        <h3>Community</h3>
                        <ul class="footer_widget_nav">
                            <li><a href="#">Our Tutors</a></li>
                            <li><a href="#">Our Students</a></li>
                            <li><a href="#">Our Team</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">News &amp; Media</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-ld-3  col-md-3 col-sm-3">
                    <div class="single_footer_widget">
                        <h3>Others</h3>
                        <ul class="footer_widget_nav">
                            <li><a href="#">Link 1</a></li>
                            <li><a href="#">Link 2</a></li>
                            <li><a href="#">Link 3</a></li>
                            <li><a href="#">Link 4</a></li>
                            <li><a href="#">Link 5</a></li>
                            0               
                        </ul>
                    </div>
                </div>
                <div class="col-ld-3  col-md-3 col-sm-3">
                    <div class="single_footer_widget">
                        <h3>Social Links</h3>
                        <ul class="footer_social">
                            <li><a data-toggle="tooltip" data-placement="top" title="Facebook" class="soc_tooltip" href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a data-toggle="tooltip" data-placement="top" title="Twitter" class="soc_tooltip" href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a data-toggle="tooltip" data-placement="top" title="Google+" class="soc_tooltip" href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a data-toggle="tooltip" data-placement="top" title="Linkedin" class="soc_tooltip" href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a data-toggle="tooltip" data-placement="top" title="Youtube" class="soc_tooltip" href="#"><i class="fa fa-youtube"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End footer top area -->
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/tutor.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="imgBannerc">
        <h2>Contact</h2>
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->

    <!--=========== BEGIN CONTACT SECTION ================-->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two">We are Wpf Degree</h2>
                        <span></span>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="contact_form wow fadeInLeft">
                        <form class="submitphoto_form">

                            <asp:RequiredFieldValidator ID="rqdname" runat="server" ControlToValidate="txtname" ValidationGroup="save" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvname" runat="server" ControlToValidate="txtname" ValidationGroup="save" ValidationExpression="[a-zA-Z0-9\s]*$" ErrorMessage="Only Character Allowed!" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtname" runat="server" placeholder="Your Name" class="wp-form-control wpcf7-text"></asp:TextBox><br />

                            <asp:RequiredFieldValidator ID="rqdmail" runat="server" ControlToValidate="txtmail" ValidationGroup="save" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvmail" runat="server" ControlToValidate="txtmail" ValidationGroup="save" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Format!" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtmail" runat="server" placeholder="Email Address" class="wp-form-control wpcf7-text"></asp:TextBox><br />

                            <asp:RequiredFieldValidator ID="rqdsub" runat="server" ControlToValidate="txtsubject" ValidationGroup="save" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvsub" runat="server" ControlToValidate="txtsubject" ValidationGroup="save" ValidationExpression="[a-zA-Z0-9\s]*$" ErrorMessage="Only Character Allowed!" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtsubject" runat="server" placeholder="Subject" class="wp-form-control wpcf7-text"></asp:TextBox><br />

                            <asp:RequiredFieldValidator ID="rqdmag" runat="server" ControlToValidate="txtmag" ValidationGroup="save" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvmag" runat="server" ControlToValidate="txtmag" ValidationGroup="save" ValidationExpression="[a-zA-Z\s]*$" ErrorMessage="Only Character Allowed!" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtmag" runat="server" placeholder="What would you like to tell us"  TextMode="MultiLine" class="wp-form-control wpcf7-textarea"></asp:TextBox><br />
                            <asp:Button ID="Button1" runat="server" Text="SUBMIT"  Class="btn btn-primary" ValidationGroup="save" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Text="CLEAR"  Class="btn btn-warning" OnClick="Button2_Click" />
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="contact_address wow fadeInRight">
                        <h3>Address</h3>
                        <div class="address_group">
                            <p>Kapoorthala Lucknow</p>
                            <p>Phone: 0522-258-9874</p>
                            <p>Email:contact@wpfdegree.com</p>
                        </div>
                        <div class="address_group">
                            <ul class="footer_social">
                                <li><a href="#" class="soc_tooltip" title="" data-placement="top" data-toggle="tooltip" data-original-title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" class="soc_tooltip" title="" data-placement="top" data-toggle="tooltip" data-original-title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" class="soc_tooltip" title="" data-placement="top" data-toggle="tooltip" data-original-title="Google+"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#" class="soc_tooltip" title="" data-placement="top" data-toggle="tooltip" data-original-title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#" class="soc_tooltip" title="" data-placement="top" data-toggle="tooltip" data-original-title="Youtube"><i class="fa fa-youtube"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=========== END CONTACT SECTION ================-->

    <!--=========== BEGIN GOOGLE MAP SECTION ================-->
    <section id="googleMap">
        <iframe width="100%" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=200+Lincoln+Ave,+Salinas,+CA,+USA&amp;aq=&amp;sll=30.977609,-95.712891&amp;sspn=42.157377,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=200+Lincoln+Ave,+Salinas,+California+93901-2639&amp;t=m&amp;z=14&amp;ll=36.674837,-121.657691&amp;output=embed"></iframe>
    </section>
    <!--=========== END GOOGLE MAP SECTION ================-->
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


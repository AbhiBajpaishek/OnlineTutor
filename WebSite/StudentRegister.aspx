<%@ Page Title="" Language="C#" MasterPageFile="~/tutor.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="StudentRegister.aspx.cs" Inherits="StudentRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="imgBannersu">
        <h2>SIGN UP</h2>
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->

    <!--=========== BEGIN CONTACT SECTION ================-->
    <div id="reg"></div>
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two">SIGN UP</h2>
                        <span></span>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="contact_form wow fadeInLeft">

                        <form action="#" class="submitphoto_form" method="post">
     
                            <asp:RequiredFieldValidator ID="rqdfname" runat="server" ControlToValidate="txtfirstName" ErrorMessage="*" ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvfname" runat="server" ValidationGroup="save" ValidationExpression="[a-zA-Z0-9\s]*$" ControlToValidate="txtfirstName" ErrorMessage="Only Character Allowed" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtfirstname" runat="server" placeholder="First Name*" class="wp-form-control wpcf7-text"></asp:TextBox><br />
                            

                           <asp:RequiredFieldValidator ID="rqdlname" runat="server" ValidationGroup="save" ControlToValidate="txtlastName" ErrorMessage="*" forecolor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvlname" runat="server" ValidationGroup="save" ValidationExpression="[a-zA-Z0-9\s]*$" ControlToValidate="txtlastName" ErrorMessage="Only Character Allowed" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtlastname" runat="server" placeholder="Last Name*" class="wp-form-control wpcf7-text"></asp:TextBox><br />
                            
                           <asp:RequiredFieldValidator ID="rqdmail" runat="server" ValidationGroup="save" ControlToValidate="txtmail" ErrorMessage="*" forecolor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvmail" runat="server" ValidationGroup="save" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtmail" ErrorMessage="invalid Format" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtmail" runat="server" placeholder="Email*" class="wp-form-control wpcf7-mail"></asp:TextBox><br />

                            <asp:RequiredFieldValidator ID="rqdpassword" runat="server" ControlToValidate="txtpassword" ValidationGroup="save" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtpassword" runat="server" placeholder="Password*" TextMode="Password" class="wp-form-control wpcf7-password"></asp:TextBox><br />

                            <asp:CompareValidator ID="cmpcpassword" runat="server" ErrorMessage="Password Error" ForeColor="Red" ControlToCompare="txtpassword" ControlToValidate="txtcpassword"></asp:CompareValidator>
                            <asp:TextBox ID="txtcpassword" runat="server" placeholder="Comfirm Password" TextMode="Password" class="wp-form-control wpcf7-password"></asp:TextBox><br />

                            <asp:RequiredFieldValidator ID="rqdgender" runat="server" ValidationGroup="save" InitialValue="-1" ControlToValidate="ddlgender" ErrorMessage="*" forecolor="Red"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlgender" runat="server" class="wp-form-control wpcf7-select">
                                <asp:ListItem Value="-1">Select Gender*</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList><br /><br/>

                           <asp:RequiredFieldValidator ID="rqddob" runat="server" ValidationGroup="save" ControlToValidate="txtdob" ErrorMessage="*" forecolor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rdob" runat="server" ControlToValidate="txtdob" ErrorMessage="Invalid DOB it must be between 2000/01/01 to 2030/01/01 " MaximumValue="2030/01/01" MinimumValue="2000/01/01" Type="Date"></asp:RangeValidator>
                            <asp:TextBox ID="txtdob" runat="server" placeholder="Date of birth*" TextMode="Date" class="wp-form-control wpcf7-text"></asp:TextBox><br />

                          

                            <asp:RequiredFieldValidator ID="rqdsub" runat="server" ControlToValidate="txtsubject" ErrorMessage="*" ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvsub" runat="server" ValidationGroup="save" ValidationExpression="[a-zA-Z0-9\s]*$" ControlToValidate="txtsubject" ErrorMessage="Only Character Allowed" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtsubject" runat="server" placeholder="Subject Name*" class="wp-form-control wpcf7-text"></asp:TextBox><br />

                             <asp:RequiredFieldValidator ID="rqdcourse" runat="server" ControlToValidate="txtcourse" ErrorMessage="*" ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvcourse" runat="server" ValidationGroup="save" ValidationExpression="[a-zA-Z0-9\s]*$" ControlToValidate="txtcourse" ErrorMessage="Only Character Allowed" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtcourse" runat="server" placeholder="Course Name*" class="wp-form-control wpcf7-text"></asp:TextBox><br />
                            <!--                <input type="text" class="wp-form-control wpcf7-text" name="subject" placeholder="Subject">-->
                            <!-- <textarea class="wp-form-control wpcf7-textarea" cols="30" rows="10" placeholder="What would you like to tell us"></textarea> -->
                            <!--       <input type="file" class="wp-form-control wpcf7-file"> -->

                             <asp:RequiredFieldValidator ID="rqdcoll" runat="server" ControlToValidate="txtcollege" ErrorMessage="*" ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvcoll" runat="server" ValidationGroup="save" ValidationExpression="[a-zA-Z0-9\s]*$" ControlToValidate="txtcollege" ErrorMessage="Only Character Allowed" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtcollege" runat="server" placeholder="College Name*" class="wp-form-control wpcf7-text"></asp:TextBox><br />

                             <asp:RequiredFieldValidator ID="rqdcon" runat="server" ControlToValidate="txtcontact" ErrorMessage="*" ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvcon" runat="server" ValidationGroup="save" ValidationExpression="[0-9]{10}" ControlToValidate="txtcontact" ErrorMessage="Enter vailed number" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtcontact" runat="server" placeholder="Contact*" class="wp-form-control wpcf7-phone"></asp:TextBox><br />

                             <asp:RequiredFieldValidator ID="rqdadd" runat="server" ControlToValidate="txtadd" ErrorMessage="*" ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvadd" runat="server" ValidationGroup="save" ValidationExpression="[a-zA-Z0-9\s]*$" ControlToValidate="txtadd" ErrorMessage="Only Character Allowed" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtadd" runat="server" placeholder="Addres*" TextMode="MultiLine" class="wp-form-control wpcf7-textarea"></asp:TextBox><br />

                            <asp:RequiredFieldValidator ID="rqdpin" runat="server" ControlToValidate="txtpin" ErrorMessage="*" ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvpin" runat="server" ValidationGroup="save" ValidationExpression="\d{6}" ControlToValidate="txtpin" ErrorMessage="only 6 digit Allowed" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtpin" runat="server" placeholder="Pin Code*" class="wp-form-control wpcf7-text"></asp:TextBox><br />

                            <asp:Button ID="Button1" runat="server" Text="SUBMIT"  Class="btn btn-primary" ValidationGroup="save" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Text="CLEAR"  Class="btn btn-warning" OnClick="Button2_Click" />
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--=========== END CONTACT SECTION ================-->

    <!--=========== BEGIN GOOGLE MAP SECTION ================-->
    <!-- <section id="googleMap">
      <iframe width="100%" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=200+Lincoln+Ave,+Salinas,+CA,+USA&amp;aq=&amp;sll=30.977609,-95.712891&amp;sspn=42.157377,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=200+Lincoln+Ave,+Salinas,+California+93901-2639&amp;t=m&amp;z=14&amp;ll=36.674837,-121.657691&amp;output=embed"></iframe>
    </section> -->
    <!--=========== END GOOGLE MAP SECTION ================-->
    <!-- Start footer top area -->
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


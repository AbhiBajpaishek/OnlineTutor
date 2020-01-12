<%@ Page Title="" Language="C#" MasterPageFile="~/tutor.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="imgBannerlg">
        <h2>SIGN IN</h2>
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->

    <!--=========== BEGIN CONTACT SECTION ================-->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two">SIGN IN</h2>
                        <span></span>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="contact_form wow fadeInLeft">
                        <form action="signin.html" class="submitphoto_form" method="post">

                            <asp:DropDownList ID="dropdownlist" runat="server" class="wp-form-control wpcf7-select">
                                <asp:ListItem> ----Select Login----</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Teacher</asp:ListItem>
                                <asp:ListItem>Student</asp:ListItem>
                            </asp:DropDownList>


                            <asp:RequiredFieldValidator ID="rqdmail" runat="server" ControlToValidate="txtmail" ValidationGroup="save" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <!--<asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ControlToValidate="txtmail" ValidationExpressio="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="save" ErrorMessage="Invalid Email Format!" ForeColor="Red"></asp:RegularExpressionValidator>-->
                            <asp:TextBox ID="txtmail" runat="server" placeholder="Email Id" class="wp-form-control wpcf7-mail"></asp:TextBox><br />
                            
                            <asp:RequiredFieldValidator ID="rqdpassword" runat="server" ControlToValidate="txtpassword" ValidationGroup="save" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtpassword" runat="server" placeholder="Password" TextMode="Password" class="wp-form-control wpcf7-mail"></asp:TextBox><br />
                            <asp:Button ID="Button1" runat="server" Text="Login" Class="btn btn-primary" ValidationGroup="save" OnClick="Button1_Click" />
                            <asp:Label ID="lblmessage" runat="server"></asp:Label>
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
</asp:Content>


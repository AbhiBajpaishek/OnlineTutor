<%@ Page Title="" Language="C#" MasterPageFile="~/login/Login.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Studentpro.aspx.cs" Inherits="login_Studentpro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div class="con container">
            <div class="row well">
                <div class="new1 col-md-2">
                    <ul class="new nav nav-pills nav-stacked well">
                        <li class="active"><a href="#"><i class="fa fa-envelope"></i>Compose</a></li>
                        <li><a href="../Home.aspx"><i class="fa fa-home"></i>Home</a></li>
                        <li><a href="#"><i class="fa fa-user"></i>Profile</a></li>
                        <li><a href="#"><i class="fa fa-key"></i>Security</a></li>
                        <li><a href="../Login.aspx"><i class="fa fa-sign-out"></i>Logout</a></li>
                    </ul>
                </div>
                <div class="col-md-10" style="padding: 0px;">
                    <div class="panel">
                        <img class="pic img-circle" src="img/author2.jpg" alt="...">
                        <div class="name"><small>Student Profile</small></div>
                        <!--                    <a href="#" class="btn btn-xs btn-primary pull-right" style="margin:10px;"><span class="glyphicon glyphicon-picture"></span> Change cover</a>-->
                    </div>

                    <br>
                    <br>
                    <br>
                    <div class="col-lg-12">

                        <div class="panel-wrapper">
                            <div class="panel2">
                                <div class="title2">
                                    <h4>Teacher Information</h4>
                                </div>
                                <form>
                                    <div class="title3 col-lg-12">
                                        <div class="form-group">
                                            <asp:Label ID="lblselsub" runat="server" class="col-sm-3 ">Select Subject</asp:Label>
                                            <div class="col-sm-6">
                                                <asp:DropDownList ID="ddlselsub" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlselsub_SelectedIndexChanged" CssClass="form-control">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <br />
                                        <br />
                                        <div class="form-group">
                                            <asp:Label ID="Label1" runat="server" class="col-sm-3 ">Select Experience</asp:Label>
                                            <div class="col-sm-6">
                                                <asp:DropDownList ID="ddlselexpteacher" runat="server" OnSelectedIndexChanged="ddlselexpteacher_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="containere-fluid">
                                        <center>
                            <div class="col-md-12 col-md-12">
                                <br />
                                <asp:GridView ID="grdstudentpro" runat="server" AutoGenerateColumns="false" OnRowUpdating="grdstudentpro_RowUpdating" BackColor="White" BorderColor="#999999" BorderStyle="None" Width="75%" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                   <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

                                   <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                   <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                                   <RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

                                   <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                                   <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                                   <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

                                   <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                                   <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>Teacher Name</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblteachername" runat="server" Text='<%# Eval("firstname") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>Subject</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblSubject" runat="server" Text='<%# Eval("Subject") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>Email</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbltemail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>Action</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkbtnsend" runat="server" Text="Send Request" CommandName="update"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                       </asp:GridView>
                         </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
        </center>
    </section>
</asp:Content>


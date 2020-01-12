<%@ Page Title="" Language="C#" MasterPageFile="~/login/login.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Teacherpro.aspx.cs" Inherits="login_Teacherpro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                        <img class="pic img-circle" src="img/teacher.png" alt="..." />
                        <div class="name"><small>Teacher Profile</small></div>
                        <!--                    <a href="#" class="btn btn-xs btn-primary pull-right" style="margin:10px;"><span class="glyphicon glyphicon-picture"></span> Change cover</a>-->
                    </div>

                    <br>
                    <br>
                    <br>
                    <div class="col-lg-12">

                        <div class="panel-wrapper">
                            <div class="panel2">
                                <div class="title2">
                                    <h4>Student Information</h4>
                                </div>
                                <form>
                                    <center>
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12">
                                            <asp:GridView ID="grdteacher" runat="server" AutoGenerateColumns="false" Width="80%" EmptyDataText="No data available." OnRowCancelingEdit="grdteacher_RowCancelingEdit" OnRowUpdating="grdteacher_RowUpdating" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
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
                                                        <HeaderTemplate>Student Email</HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblstuemail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <HeaderTemplate>Student Name</HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblstuname" runat="server" Text='<%# Eval("firstname") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <HeaderTemplate>Student Contact</HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblstusub" runat="server" Text='<%# Eval("contact") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <HeaderTemplate>Student Gender</HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblstugender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <HeaderTemplate>Option</HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkbtnConfirm" runat="server" Text="Confirm" data-toggle="modal" data-target="#myModal" CssClass="btn btn-success" CommandName="update"></asp:LinkButton>
                                                            <asp:LinkButton ID="lnkbtnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning" CommandName="cancel"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                    <div class="container">
                                        <%-- <h2>Modal Example</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>

                                        <!-- Modal -->
                                        <div class="modal fade" id="myModal" role="dialog">
                                            <div class="modal-dialog">

                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Send Message</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <asp:Label ID="lblcontact" runat="server" Text="Contact" Font-Size="Larger" CssClass="form-group" BorderStyle="None"></asp:Label>
                                                        <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="reqcontact" runat="server" ValidationGroup="send" ControlToValidate="txtcontact" ErrorMessage="enter contact number" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        <br />
                                                        <asp:Label ID="lblmsg" runat="server" Text="Message"></asp:Label>
                                                        <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="reqmsg" runat="server" ValidationGroup="send" ControlToValidate="txtmsg" ErrorMessage="Enter Message" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="modal-body">
                                                        <asp:Button ID="btnsend" runat="server" CssClass="btn btn-primary" ValidationGroup="send" Text="Send" OnClick="btnsend_Click" />
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                        </center>
                                </form>
                            </div>
                        </div>
                    </div>
                    <asp:Label ID="lblsucmsg" runat="server" ForeColor="Green"></asp:Label>
    </section>
</asp:Content>

    
    





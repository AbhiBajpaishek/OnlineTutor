<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="TeacherDetail.aspx.cs" Inherits="Admin_TeacherDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
        <div class="content-wrapper">
            <div class="container-fluid">
                <!-- Breadcrumbs-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active">My Dashboard</li>
                </ol>
                <!-- Icon Cards-->
                <div class="row">
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="card text-white bg-primary o-hidden">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fa fa-fw fa-comments"></i>
                                </div>
                                <div class="mr-5">Teacher Details</div>
                            </div>
                        </div>
                    </div>
                </div>

                <asp:GridView ID="grdteacher" runat="server" AutoGenerateColumns="false" Width="100%" OnRowEditing="grdteacher_RowEditing" OnRowUpdating="grdteacher_RowUpdating" OnRowCancelingEdit="grdteacher_RowCancelingEdit" OnRowDeleting="grdteacher_RowDeleting" CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">

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
                            <HeaderTemplate>Id</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblid" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>First Name</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="txtfirstname" runat="server" Text='<%#Bind("firstname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>Last Name</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbllastname" runat="server" Text='<%#Bind("lastname") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtlastname" runat="server" Text='<%#Bind("lastname") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>Email</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="txtemail" runat="server" Text='<%#Bind("email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>Gender</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="txtgender" runat="server" Text='<%#Bind("gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>Subject</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="txtsubject" runat="server" Text='<%#Bind("subject") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtsubject" runat="server" Text='<%#Bind("subject") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>Experience</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="txtexp" runat="server" Text='<%#Bind("teacher_exp") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtexp" runat="server" Text='<%#Bind("teacher_exp") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>Contact</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="txtcontact" runat="server" Text='<%#Bind("Contact") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtcontact" runat="server" Text='<%#Bind("Contact") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>Action</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Button ID="btnedit" runat="server" CssClass="btn btn-success" Text="Edit" CommandName="edit" />
                                <asp:Button ID="btnTeacherdelete" runat="server" CssClass="btn btn-warning" Text="Delete" CommandName="delete" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-default" Text="Update" CommandName="update" />
                                <asp:Button ID="btncancel" runat="server" class="btn btn-default" Text="Cancel" CommandName="cancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    
</asp:Content>


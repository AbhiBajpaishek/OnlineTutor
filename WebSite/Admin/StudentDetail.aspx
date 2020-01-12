<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="StudentDetail.aspx.cs" Inherits="Admin_StudentDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="imgBanner" style="margin: 0px;">
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
                <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="card text-white bg-warning o-hidden">
                        <div class="card-body">
                            <div class="card-body-icon">
                                <i class="fa fa-fw fa-list"></i>
                            </div>
                            <div class="mr-5">Student Detail</div>
                        </div>

                    </div>
                </div>
                <asp:GridView ID="grdstudent" runat="server" AutoGenerateColumns="false" Width="100%" OnRowEditing="grdstudent_RowEditing" OnRowUpdating="grdstudent_RowUpdating" OnRowCancelingEdit="grdstudent_RowCancelingEdit" OnRowDeleting="grdstudent_RowDeleting" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">


                    <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>

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
                        <asp:TemplateField HeaderText="Id">
                            <ItemTemplate>
                                <asp:Label ID="lblid" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <asp:Label ID="lblfirstname" runat="server" Text='<%#Bind("firstname") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtfirstname" runat="server" Text='<%#Bind("firstname") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name">
                            <ItemTemplate>
                                <asp:Label ID="lbllastname" runat="server" Text='<%#Bind("lastname") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtlastname" runat="server" Text='<%#Bind("lastname") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:Label ID="lblemail" runat="server" Text='<%#Bind("email") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtemail" runat="server" Text='<%#Bind("email") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender">
                            <ItemTemplate>
                                <asp:Label ID="lblgender" runat="server" Text='<%#Bind("gender") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtgender" runat="server" Text='<%#Bind("gender") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Course">
                            <ItemTemplate>
                                <asp:Label ID="lblcourse" runat="server" Text='<%#Bind("course") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%-- <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label ID="lbladdress" runat="server" Text='<%#Bind("stu_add") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Text='<%#Bind("stu_add") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>--%>
                        <asp:TemplateField HeaderText="Contact">
                            <ItemTemplate>
                                <asp:Label ID="lblcontact" runat="server" Text='<%#Bind("contact") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtcontact" runat="server" Text='<%#Bind("contact") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnstuedit" runat="server" CssClass="btn btn-primary" Text="Edit" CommandName="Edit" />
                                <asp:Button ID="btnstudelete" runat="server" CssClass="btn btn-warning" Text="Delete" CommandName="delete" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="btnstuupdate" runat="server" CssClass="btn btn-primary" Text="Update" CommandName="Update" />
                                <asp:Button ID="btnstucancel" runat="server" CssClass="btn btn-warning" Text="Cancel" CommandName="Cancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </section>
</asp:Content>


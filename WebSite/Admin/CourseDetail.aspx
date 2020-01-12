<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="CourseDetail.aspx.cs" Inherits="Admin_CourseDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                <div class="row">
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="card text-white bg-success o-hidden">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fa fa-fw fa-shopping-cart"></i>
                                </div>
                                <div class="mr-5">Course Detail</div>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:GridView ID="grdcourse" runat="server" AutoGenerateColumns="false" Width="100%" OnRowEditing="grdcourse_RowEditing" OnRowDeleting="grdcourse_RowDeleting" OnRowUpdating="grdcourse_RowUpdating" OnRowCancelingEdit="grdcourse_RowCancelingEdit" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
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
                        <asp:TemplateField HeaderText="id">
                            <ItemTemplate>
                                <asp:Label ID="lblid" runat="server" Text='<%#Bind("id") %>'></asp:Label>
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
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btncourseedit" runat="server" CssClass="btn btn-primary" Text="Edit" CommandName="Edit" />
                                <asp:Button ID="btncoursedelete" runat="server" CssClass="btn btn-warning" Text="Delete" CommandName="delete" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="btncourseupdate" runat="server" CssClass="btn btn-primary" Text="Update" CommandName="Update" />
                                <asp:Button ID="btncoursecancel" runat="server" CssClass="btn btn-warning" Text="Cancel" CommandName="Cancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </section>
</asp:Content>


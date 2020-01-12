<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="CourseUpdate.aspx.cs" Inherits="Admin_CourseUpdate" %>

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
                        <div class="card text-white bg-danger o-hidden ">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fa fa-fw fa-support"></i>
                                </div>
                                <div class="mr-5">New Update Course</div>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="form-group">
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblcname" runat="server" class="col-sm-3 control-label"><strong>Name: </strong></asp:Label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtcname" class="form-control" runat="server" placeholder="Enter Course Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqcname" runat="server" ControlToValidate="txtcname" ValidationGroup="save" ErrorMessage="Enter Couorse Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblcourseduration" runat="server" class="col-sm-3 control-label"><strong>Duration:</strong></asp:Label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtcourseduration" class="form-control" runat="server" placeholder=" Course Duration"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqcourseduration" runat="server" ValidationGroup="save" ControlToValidate="txtcourseduration" ErrorMessage="Please Enter Course Duration" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="lblcoursefee" runat="server" class="col-sm-3 control-label"><strong>Fee:</strong>(Rs)</asp:Label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtcoursefee" class="form-control" runat="server" placeholder="Course Fee"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqcoursefee" runat="server" ControlToValidate="txtcoursefee" ErrorMessage="Please Enter course Fee" ForeColor="Red" ValidationGroup="save"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-10">
                                        <asp:Button ID="register" class="btn btn-primary" ValidationGroup="save" runat="server" Text="Add Course" OnClick="register_Click" />
                                        <asp:Button ID="clrbtn" class="btn btn-warning" runat="server" Text="Clear" OnClick="clrbtn_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShares.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="NoteShares.AddCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="breadcomb-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="breadcomb-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="breadcomb-wp">
                                    <div class="breadcomb-ctn">
                                        <h2>Add New Course</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="typography-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="typography-list typography-mgn">
                        <div class="col-lg-offset-3">
                            <div class="form-group">
                                <asp:Label ID="LabelCoursename" Font-Bold="true" ForeColor="#ff0000" runat="server" Text="Course Name"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBoxCoursename" Width="539px" runat="server"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="AddCourse" ControlToValidate="TextBoxCoursename" ForeColor="Red" ErrorMessage="Please enter course name"></asp:RequiredFieldValidator>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="LabelCoursecode" Font-Bold="true" ForeColor="#ff0000" runat="server" Text="Course Code"></asp:Label>
                                <br />
                                <asp:TextBox Width="539px" ID="TextBoxCoursecode" runat="server"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="AddCourse" ControlToValidate="TextBoxCoursecode" ForeColor="Red" ErrorMessage="Please enter course code"></asp:RequiredFieldValidator>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="LabelDepartment" Font-Bold="true" ForeColor="#ff0000" runat="server" Text="Department"></asp:Label>
                                <br />
                                <asp:TextBox Width="539px" ID="TextBoxDepartment" runat="server"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ForeColor="Red"  ID="RequiredFieldValidator3" runat="server" ValidationGroup="AddCourse" ControlToValidate="TextBoxDepartment" ErrorMessage="Please enter department"></asp:RequiredFieldValidator>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Button ID="ButtonAddCourse" BackColor="#006600" BorderColor="#006600" ForeColor="White" ValidationGroup="AddCourse" runat="server" Text="Add Course" Width="539px" OnClick="ButtonAddCourse_Click" />
                            </div>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="LabelResult" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

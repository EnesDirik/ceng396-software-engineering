<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShares.Master" AutoEventWireup="true" CodeBehind="AddNote.aspx.cs" Inherits="NoteShares.AddNote" %>
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
                                        <h2>Add New Node</h2>
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
                        <div class="col-lg-offset-0">
                            <div class="form-group">
                                <center><asp:Label ID="LabelSelectDepartment" Font-Bold="true" ForeColor="#ff0000" runat="server" Text="Select Course"></asp:Label></center>
                                <br />
                                <center><asp:DropDownList ID="ddlCourse" Width="539px" runat="server"></asp:DropDownList></center>
                                <br />
                                 <center><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="AddNode" ControlToValidate="ddlCourse" ForeColor="Red" ErrorMessage="Please enter course"></asp:RequiredFieldValidator></center>
                                <br />
                                  <center><asp:Label ID="Label2" Font-Bold="true" ForeColor="#ff0000" runat="server" Text="Select Note"></asp:Label></center>
                                <br />
                                <center><asp:FileUpload ID="FileUpload1" Width="539px" runat="server" /></center>
                                <br />
                                <center><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="AddNode" ControlToValidate="FileUpload1" ForeColor="Red" ErrorMessage="Please enter note"></asp:RequiredFieldValidator></center>
                                <br />
                            </div>
                            <div class="form-group">
                                <center><asp:Button ID="ButtonAddNote" BackColor="#006600" BorderColor="#006600" ForeColor="White" ValidationGroup="AddNode" runat="server" Text="Add Note" Width="539px" OnClick="ButtonAddNote_Click"/></center>
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

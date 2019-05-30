<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShares.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="NoteShares.User1" %>

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
                                        <asp:Label ID="lblTitle" runat="server" Font-Size="Large" Text=""></asp:Label>
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
                            <div class="input-group">
                                <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
                                <div class="nk-int-st">
                                    <asp:TextBox Width="100%" ID="firstnameTxt" CssClass="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="firstnameTxt" ErrorMessage="Please enter first name" ForeColor="Red" ValidationGroup="User"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <div class="input-group">
                                <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
                                <div class="nk-int-st">
                                    <asp:TextBox Width="100%" ID="lastnameTxt" CssClass="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="lastnameTxt" ErrorMessage="Please enter last name" ForeColor="Red" ValidationGroup="User"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <div class="input-group">
                                <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
                                <div class="nk-int-st">
                                    <asp:TextBox Width="100%" ID="usernameTxt" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernameTxt" ErrorMessage="Please enter username" ForeColor="Red" ValidationGroup="User"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <div class="input-group">
                                <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-mail"></i></span>
                                <div class="nk-int-st">
                                    <asp:TextBox Width="100%" ID="emailTxt" runat="server" CssClass="form-control" TextMode="Email" placeholder="Email"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ValidationGroup="User" ControlToValidate="emailTxt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailTxt" ErrorMessage="Please enter email" ForeColor="Red" ValidationGroup="User"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <div class="input-group">
                                <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-edit"></i></span>
                                <div class="nk-int-st">
                                    <asp:TextBox Width="100%" ID="passwordTxt" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordTxt" ErrorMessage="Please enter password" ForeColor="Red" ValidationGroup="User"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <asp:Button ID="Button1" Width="100%" BackColor="#00cc66" ForeColor="White" BorderColor="#00cc66" runat="server" ValidationGroup="User" Text="Update Information" OnClick="Button1_Click" />
                            <br />
                            <hr />
                            <br />
                            <center><h1>MY NOTES</h1></center>
                            <br />
                            <asp:DataList ID="dlNotes" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="100%" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" OnSelectedIndexChanged="dlNotes_SelectedIndexChanged">
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <ItemTemplate>
                                    <asp:ImageButton CssClass="img-responsive" ID="ImageButton1" Height="100%" Width="100%" ImageUrl='<%# "~/images/"+Eval("NoteSrc") %>' PostBackUrl='<%# "~/NoteDetail.aspx?detail="+Eval("NoteId") %>' runat="server" />
                                    <br />
                                    <asp:Label ID="Label3" ForeColor="Red" runat="server" Text="ID:  "></asp:Label>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("NoteId") %>'></asp:Label>
                                    <asp:HyperLink ForeColor="Brown" ID="hypNameWrite" runat="server" Text='<%# FindNameSurname(Eval("UserId")) %>'></asp:HyperLink>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("createDate") %>'></asp:Label>

                                    <asp:Label ID="lblVote" runat="server" ForeColor="Red" Text="Vote : "></asp:Label>

                                    <asp:Label ID="lblVoteNumber" runat="server" Text='<%# FindVoteCount(Eval("NoteId")) %>'></asp:Label>
                                    <br />
                                    <hr />
                                    <br />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            </asp:DataList>
                            <asp:TextBox ID="txtDelete" placeholder="Enter delete node id" runat="server"></asp:TextBox>
                             <asp:Button ID="btnDeleteNote" runat="server" Text="Delete Note" BackColor="Red" ForeColor="White" BorderColor="Red" Font-Bold="true" OnClick="btnDeleteNote_Click" />
                            <asp:Label ID="Label4" runat="server" Visible="false" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

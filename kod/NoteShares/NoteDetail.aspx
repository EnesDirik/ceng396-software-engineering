<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShares.Master" AutoEventWireup="true" CodeBehind="NoteDetail.aspx.cs" Inherits="NoteShares.NoteDetail" %>

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
                                        <asp:Label ID="Label1" runat="server" Font-Size="Large" Text=""></asp:Label>
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

                                <asp:ImageButton CssClass="img-responsive" ID="ImageButton1" Height="100%" Width="100%" runat="server" />
                                <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                                &nbsp;
                                <asp:Label ID="Label2" ForeColor="Red" Text="Vote : " runat="server"></asp:Label>

                                <asp:DropDownList ID="VoteList" AutoPostBack="true" runat="server" OnSelectedIndexChanged="VoteList_SelectedIndexChanged" Height="16px" Width="129px">

                                    <asp:ListItem Value="1"> 1 </asp:ListItem>
                                    <asp:ListItem Value="2"> 2 </asp:ListItem>
                                    <asp:ListItem Value="3"> 3 </asp:ListItem>
                                    <asp:ListItem Value="4"> 4 </asp:ListItem>
                                    <asp:ListItem  Selected="True"  Value="5"> 5 </asp:ListItem>

                                </asp:DropDownList>

                                &nbsp;

                                <asp:Label ID="lblVote" runat="server" ForeColor="Red" Text="Total Vote : "></asp:Label>

                                <asp:Label ID="lblVoteNumber" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShares.Master" AutoEventWireup="true" CodeBehind="Note.aspx.cs" Inherits="NoteShares.Note1" %>

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
                        <div class="col-lg-offset-2">
                            <div class="form-group">
                                <asp:DataList ID="dlNotes" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="100%" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="80%">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <ItemTemplate>
                                        <asp:ImageButton CssClass="img-responsive" ID="ImageButton1" Height="100%" Width="100%" ImageUrl='<%# "~/images/"+Eval("NoteSrc") %>' PostBackUrl='<%# "~/NoteDetail.aspx?detail="+Eval("NoteId") %>' runat="server" />
                                        <br />
                                        <asp:HyperLink ForeColor="Brown" ID="hypNameWrite" runat="server" Text='<%# FindNameSurname(Eval("UserId")) %>'></asp:HyperLink>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("createDate") %>'></asp:Label>

                                        <asp:Label ID="lblVote" runat="server" ForeColor="Red" Text="Vote : "></asp:Label>

                                        <asp:Label ID="lblVoteNumber" runat="server" Text='<%# FindVoteCount(Eval("NoteId")) %>'></asp:Label>
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                </asp:DataList>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

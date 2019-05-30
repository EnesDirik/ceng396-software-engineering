<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="NoteShares.Register1" %>


<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>NOT SHARES REGISTER</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="Content/green-horizotal/img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="Content/green-horizotal/css/bootstrap.min.css">
    <!-- font awesome CSS
		============================================ -->
    <link rel="stylesheet" href="Content/green-horizotal/css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="Content/green-horizotal/css/owl.carousel.css">
    <link rel="stylesheet" href="Content/green-horizotal/css/owl.theme.css">
    <link rel="stylesheet" href="Content/green-horizotal/css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="Content/green-horizotal/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="Content/green-horizotal/css/normalize.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="Content/green-horizotal/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="Content/green-horizotal/css/wave/waves.min.css">
    <!-- Notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="Content/green-horizotal/css/notika-custom-icon.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="Content/green-horizotal/css/main.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="Content/green-horizotal/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="Content/green-horizotal/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="Content/green-horizotal/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <form runat="server">
        <div class="login-content">
            <!-- Login -->
            <div class="nk-block toggled" id="l-login">
                <div class="nk-int-st">
                    <center><h1 style="color:black">NOT SHARES REGISTER</h1></center>
                </div>
                <div class="nk-form">
                    <div class="input-group">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
                        <div class="nk-int-st">
                            <asp:TextBox ID="firstnameTxt" CssClass="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="firstnameTxt" ErrorMessage="Please enter first name" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <br />
                    <div class="input-group">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
                        <div class="nk-int-st">
                            <asp:TextBox ID="lastnameTxt" CssClass="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="lastnameTxt" ErrorMessage="Please enter last name" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <br />
                     <div class="input-group">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
                        <div class="nk-int-st">
                            <asp:TextBox ID="usernameTxt" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernameTxt" ErrorMessage="Please enter username" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <br />
                    <div class="input-group">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-mail"></i></span>
                        <div class="nk-int-st">
                            <asp:TextBox ID="emailTxt" runat="server" CssClass="form-control" TextMode="Email" placeholder="Email"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ValidationGroup="Register" ControlToValidate="emailTxt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailTxt" ErrorMessage="Please enter email" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <br />
                    <div class="input-group">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-edit"></i></span>
                        <div class="nk-int-st">
                            <asp:TextBox ID="passwordTxt" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordTxt" ErrorMessage="Please enter password" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <br />
                    <asp:Button ID="Button1" BackColor="#00cc66" ForeColor="White" BorderColor="#00cc66" Width="89px" runat="server" ValidationGroup="Register" OnClick="ButtonRegister_Click" Text="Register" />
                    <br />
                    Do you have an account? <a runat="server" href="Login.aspx">Login</a>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
    <!-- Login Register area End-->
    <!-- jquery
		============================================ -->
    <script src="Content/green-horizotal/js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="Content/green-horizotal/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="Content/green-horizotal/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="Content/green-horizotal/js/jquery-price-slider.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="Content/green-horizotal/js/owl.carousel.min.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="Content/green-horizotal/js/jquery.scrollUp.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="Content/green-horizotal/js/meanmenu/jquery.meanmenu.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="Content/green-horizotal/js/counterup/jquery.counterup.min.js"></script>
    <script src="Content/green-horizotal/js/counterup/waypoints.min.js"></script>
    <script src="Content/green-horizotal/js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="Content/green-horizotal/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="Content/green-horizotal/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="Content/green-horizotal/js/sparkline/sparkline-active.js"></script>
    <!-- flot JS
		============================================ -->
    <script src="Content/green-horizotal/js/flot/jquery.flot.js"></script>
    <script src="Content/green-horizotal/js/flot/jquery.flot.resize.js"></script>
    <script src="Content/green-horizotal/js/flot/flot-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="Content/green-horizotal/js/knob/jquery.knob.js"></script>
    <script src="Content/green-horizotal/js/knob/jquery.appear.js"></script>
    <script src="Content/green-horizotal/js/knob/knob-active.js"></script>
    <!--  Chat JS
		============================================ -->
    <script src="Content/green-horizotal/js/chat/jquery.chat.js"></script>
    <!--  wave JS
		============================================ -->
    <script src="Content/green-horizotal/js/wave/waves.min.js"></script>
    <script src="Content/green-horizotal/js/wave/wave-active.js"></script>
    <!-- icheck JS
		============================================ -->
    <script src="Content/green-horizotal/js/icheck/icheck.min.js"></script>
    <script src="Content/green-horizotal/js/icheck/icheck-active.js"></script>
    <!--  todo JS
		============================================ -->
    <script src="Content/green-horizotal/js/todo/jquery.todo.js"></script>
    <!-- Login JS
		============================================ -->
    <script src="Content/green-horizotal/js/login/login-action.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="Content/green-horizotal/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="Content/green-horizotal/js/main.js"></script>
</body>

</html>

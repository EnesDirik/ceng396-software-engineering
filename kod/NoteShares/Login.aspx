<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NoteShares.Login1" %>


<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>NOT SHARES LOGIN</title>
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
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

    <!-- Login Register area Start-->
    <form runat="server">
        <div class="login-content">
            <!-- Login -->
            <div class="nk-block toggled" id="l-login">
                <div class="nk-int-st">
                    <center><h1 style="color:black">NOT SHARES LOGIN</h1></center>
                </div>
                <div class="nk-form">
                    <div class="input-group">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
                        <div class="nk-int-st">
                            <asp:TextBox ID="TextBoxEmail" CssClass="form-control" placeholder="email" runat="server" TextMode="Email"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="Login" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Login" ErrorMessage="Please enter email" ControlToValidate="TextBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="input-group mg-t-15">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-edit"></i></span>
                        <div class="nk-int-st">
                            <asp:TextBox ID="TextBoxPass" CssClass="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please enter password" ForeColor="Red" ValidationGroup="Login"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#00cc66" ForeColor="White" BorderColor="#00cc66" ValidationGroup="Login" OnClick="ButtonSubmit_Click" Width="89px" />
                    <asp:Label ID="LabelResult" ForeColor="Red" runat="server" Text="" Visible="false"></asp:Label>
                    <br />
                    <p>You don't have an account yet? <a runat="server" href="/Register.aspx">Register</a></p>
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

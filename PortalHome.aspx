<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PortalHome.aspx.cs" Inherits="TelemedicsAdminWebApp.PortalHome" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="sitelock-site-verification" content="766" />
  <title>:: Telemedics Admin Panel::</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  
  <!-- Admin style -->
  <link rel="stylesheet" href="css/admin.css">
  
  <!-- Custom style -->
  <link rel="stylesheet" href="css/site.css">
        
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="body_bg">
<form id="AdminForm" runat="server">
	<header id="main-header">
        <nav class="navbar navbar-default navbar-fixed-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index.html"> <img src="img/logo_admin.png"  alt="Logo"/></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
            </div>
          </div>
        </nav>
        </header>
<div class="container"> 
	
<div class="login-card">
	<div class="form-group text-center">
  <h2 class="text-center">Admin Log In</h2><i class="fa fa-user fa-4x"></i>
	</div>

   <div class="form-group">
     <div class="input-group">
                          <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                            <asp:TextBox ID ="txtUsername" class="form-control" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
	  </div>
	  <div class="form-group">
		   <div class="input-group">
                          <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <asp:TextBox ID ="txtpwd" class="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                        </div>
    
	  </div>
	  <div class="form-group" value="login" type="submit">
                <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" CssClass="login login-submit btn-block" />
	  </div>
    </div>
</div>
 <footer class="footer">
      <div class="container">
        <p class="text-muted text-center">Copyright &copy; 2019 <a href="#">Telemedics </a>.  All rights reserved.</p>
      </div>
    </footer>
    
 



<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="js/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="js/bootstrap.min.js"></script>
<!-- App -->
<script src="js/app.min.js"></script>
<!-- Sparkline -->
<script src="slimScroll/jquery.slimscroll.min.js"></script>

</form>
</body>
</html>



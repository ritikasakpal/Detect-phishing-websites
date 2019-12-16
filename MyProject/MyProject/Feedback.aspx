<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="MyProject.Feedback" UnobtrusiveValidationMode="none" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>FeedBack</title>
    <%-- ------ CSS ------ --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
    <header id="header">
      <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src="font-awesome/images/Tech.png" alt="logo"/></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                     <ul class="nav navbar-nav">
                        <%--<li><a href="Home.aspx">Home</a></li>--%>
                        <li ><a href="CheckWebsite.aspx">Check Website</a></li>                       
                        <li class="active"><a href="Feedback.aspx">Feedback</a></li> 
                        <li><a href="contactus.aspx">Contact</a></li> 
                        <li><a href="Home.aspx">Log Out</a></li>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <section id="portfolio">
        <div class="container">
        <div class="center">
               <h2>Feedback</h2>
                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;
               <asp:Label ID="Label1" runat="server" Text="What was your first impression when you entered the website ?  "></asp:Label>
&nbsp;&nbsp;<br />
               &nbsp;&nbsp;&nbsp;&nbsp;
               <br />
&nbsp;
               <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="impression" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Excellent" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="impression" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Very Good" />
&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" GroupName="impression" Text="Good" OnCheckedChanged="RadioButton3_CheckedChanged" />
&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="RadioButton4" runat="server" GroupName="impression" Text="Average" AutoPostBack="True" OnCheckedChanged="RadioButton4_CheckedChanged" />
&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="RadioButton5" runat="server" GroupName="impression" Text="Below Average" AutoPostBack="True" OnCheckedChanged="RadioButton5_CheckedChanged" />
               <br />
               <br />
               <asp:TextBox ID="TextBox1" runat="server" Width="147px"></asp:TextBox>
               <br />
               <br />
               <br />
               <asp:Label ID="Label2" runat="server" Text="Do you find this website helpful ?"></asp:Label>
&nbsp;&nbsp;<br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <br />
               <asp:RadioButton ID="RadioButton6" runat="server" GroupName="helpful" Text="Yes" AutoPostBack="True" OnCheckedChanged="RadioButton6_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="RadioButton7" runat="server" GroupName="helpful" Text="No" AutoPostBack="True" OnCheckedChanged="RadioButton7_CheckedChanged" />
               <br />
               <br />
               <asp:TextBox ID="TextBox2" runat="server" Width="102px"></asp:TextBox>
               <br />
               <br />
               <br />
               <asp:Label ID="Label3" runat="server" Text="What are the problems you're facing while using this website ?"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="278px"></asp:TextBox>
               <br />
               <br />
               <br />
               <asp:Label ID="Label4" runat="server" Text="What do you like the most/least about our website ?"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="TextBox4" runat="server" Width="341px" Height="28px"></asp:TextBox>
               <br />
               <br />
               <br />
               <asp:Label ID="Label5" runat="server" Text="What other features would you like us to offer ?"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="TextBox5" runat="server" Width="360px" Height="35px" TextMode="MultiLine"></asp:TextBox>
               <br />
               <br />
               <br />
               <asp:Label ID="Label6" runat="server" Text="Rate this website."></asp:Label>
&nbsp;&nbsp;&nbsp;<br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <br />
               <asp:RadioButton ID="RadioButton8" runat="server" GroupName="rate" Text="1*" AutoPostBack="True" OnCheckedChanged="RadioButton8_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="RadioButton9" runat="server" GroupName="rate" Text="2*" AutoPostBack="True" OnCheckedChanged="RadioButton9_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="RadioButton10" runat="server" GroupName="rate" Text="3*" AutoPostBack="True" OnCheckedChanged="RadioButton10_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="RadioButton11" runat="server" GroupName="rate" Text="4*" AutoPostBack="True" OnCheckedChanged="RadioButton11_CheckedChanged" />
&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="RadioButton12" runat="server" GroupName="rate" Text="5*" AutoPostBack="True" OnCheckedChanged="RadioButton12_CheckedChanged" />
               <br />
               <br />
               <asp:TextBox ID="TextBox6" runat="server" Width="98px"></asp:TextBox>
               <br />
               <br />
               <br />
               <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Submit" OnClick="Button1_Click" />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
        <br />
            </div>
          
                </div>
        
    </section>
    <!--/#portfolio-item-->
    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">We are hiring</a></li>
                            <li><a href="#">Meet the team</a></li>
                            <li><a href="#">Copyright</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>
                            <li><a href="#">Refund policy</a></li>
                            <li><a href="#">Ticket system</a></li>
                            <li><a href="#">Billing system</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Developers</h3>
                        <ul>
                            <li><a href="#">Web Development</a></li>
                            <li><a href="#">SEO Marketing</a></li>
                            <li><a href="#">Theme</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Email Marketing</a></li>
                            <li><a href="#">Plugin Development</a></li>
                            <li><a href="#">Article Writing</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="#">Adipisicing Elit</a></li>
                            <li><a href="#">Eiusmod</a></li>
                            <li><a href="#">Tempor</a></li>
                            <li><a href="#">Veniam</a></li>
                            <li><a href="#">Exercitation</a></li>
                            <li><a href="#">Ullamco</a></li>
                            <li><a href="#">Laboris</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
            </div>
        </div>
    </section>
    <!--/#bottom-->
    <!--/#bottom-->
    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2015 <a target="_blank" href="http://aspxtemplates.com/" title="Free Twitter Bootstrap asp.net templates">aspxtemplates</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <a href="#" class="back-to-top"><i class="fa fa-2x fa-angle-up"></i></a>
    </footer>
    <!--/#footer-->
    <!-- Back To Top -->
    <script type="text/javascript">
        jQuery(document).ready(function () {
            var offset = 300;
            var duration = 500;
            jQuery(window).scroll(function () {
                if (jQuery(this).scrollTop() > offset) {
                    jQuery('.back-to-top').fadeIn(duration);
                } else {
                    jQuery('.back-to-top').fadeOut(duration);
                }
            });

            jQuery('.back-to-top').click(function (event) {
                event.preventDefault();
                jQuery('html, body').animate({ scrollTop: 0 }, duration);
                return false;
            })
        });
    </script>
    <!-- /top-link-block -->
    <!-- Jscript -->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
    <script src="js/jquery.isotope.min.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/wow.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
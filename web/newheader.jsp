<%@page contentType="text/html" pageEncoding="UTF-8"  import= "connect.*,java.sql.*, sun.misc.*,java.security.*"%>
<%
String user_email = (String)session.getAttribute("email");
if(user_email != null)
    {
        config c1 =new config();
        Connection con1=c1.getcon();
        String Query1= "select * from register where email='"+user_email+"'";

        Statement stmt1=con1.createStatement();
        ResultSet rs1=stmt1.executeQuery(Query1);
        if(rs1.next())
            {
            String user_name = rs1.getString("fname");
             int id = rs1.getInt("id");
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>hotels</title>
        <link rel="stylesheet" href="font\css\fontawesome.min.css">
        <link href="css/lrstyle.css" rel="stylesheet" />
        <link href="css/navbar.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/template.css" rel="stylesheet" />
        <link href="css/My_Style.css" rel="stylesheet" />
       
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     <link rel="stylesheet" type="text/css" href="style.css">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
       <link rel="stylesheet" type="text/css" href="register.css">

        <link href="vendors/material-icon/css/materialdesignicons.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="vendors/linears-icon/style.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Rev slider css -->
        <link href="vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="vendors/revolution/css/navigation.css" rel="stylesheet">
        
        <!-- Extra plugin css -->
        <link href="vendors/bootstrap-selector/bootstrap-select.css" rel="stylesheet">
        <link href="vendors/bootatrap-date-time/bootstrap-datetimepicker.min.css" rel="stylesheet">
        <link href="vendors/owl-carousel/assets/owl.carousel.css" rel="stylesheet">
        
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <script src="valid.js"></script>
        <style>
		.main{
			position: absolute;margin-top: 80px;top: 10%;left: 20%;background-size:30px;background-color: black;color: #ff53538a;letter-spacing: 10px;font-size: 80;}
		.mai{
			position: absolute;
			margin-top: 100px;
			padding-bottom: 20px;
		}
		.name{
		}
		li a{
			color: white;
			text-decoration: none;
		}
		.menu{
			margin: 20px;
			padding: 10px;
			position: absolute;
			background-color: black;
			top: 1%;
			color: white;
			left: 2%;
			opacity: 0.7;
		}
		
		.g{
		
			position: absolute;
			top: 30%;
			opacity: 0.7;
			height: cover;
			width: 100%;
			background-size: 100px;
			padding-top: 9px;
			padding-right: 9px;
		}


		.p {
			color: black;
			display: block;
		    font-size: 20px;
		   	padding: 10px;
		   }

		.p :hover{
			color: white;
			font-size: 30px;
			background-color: black; 
		}

		.menu li{
			margin-left: 20px;
			display: block;
			color: white;
		}
        
                
        
	</style>
         <style>
        .frmm {
	width:100px;
	height:35px;
	border:1px solid rgb(233, 79, 49);
	border-radius:4px;
	margin:10px;
	color:black;
	background:rgb(233, 79, 49);
	cursor:pointer;
	font-size:15px;
}
    </style>
<style>
.srch{padding:0px;width:960px;margin:auto;height:30px;}
.tab{padding:0px;width:1024px;margin:auto;}
#frm{width:500px;height:28px;}
#but{height:28px;width:100px;text-align:center;padding-bottom:2px;}
td{text-align:center !important}
.header_search{width:960px;margin:auto;padding-top:10px;}
.logo_search{width:350px;float:left;}
.address{float:right;}
h1{text-align:center;}
.wrapper_search{width:960;margin:auto;}
.clear{clear:both;}
</style>
        
	
</head>

<body style="background-image: url(ps1.jpg);background-size: 100%; background-repeat: no-repeat;background-attachment: fixed;">
	


	<div id="preloader">
            <div class="loader absolute-center">
                <div class="loader__box"><b class="top"></b></div>
                <div class="loader__box"><b class="top"></b></div>
                <div class="loader__box"><b class="top"></b></div>
            </div>
        </div>



    <section>

	          <div id="wrapper">
            <div class="wrapper-inner">
                <div class="headerContent">
                    <div id="top">
                        <div class="row-container">
                            <div class="container">
                                <div id="logo"> <a href="#"> <img src="logoportel.png" alt="Hotel Shubham"style="height:50px; width: 70px;"></div>
                              <nav class="moduletable pull-left hidden-sm hidden-xs">
                                <div class="module_container">
                                  <div class="icemegamenu">
                                    <ul id="icemegamenu">
                                       <li id="iceMenu_101" class="iceMenuLiLevel_1 mzr-drop current  fullwidth"> <a href="index.jsp" class="iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">Home</span> </a> </li>
                                      <li id="iceMenu_134" class="iceMenuLiLevel_1 mzr-drop "> <a href="about.jsp" class=" iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">About</span> </a>
                                        <ul class="icesubMenu icemodules sub_level_1" style="width:180px">
                                          <li>
                                            <div style="float:left;width:180px" class="iceCols">
                                            </div>
                                          </li>
                                        </ul>
                                      </li>
                                      <li id="iceMenu_139" class="iceMenuLiLevel_1 "> <a href="formvalidation.jsp" class=" iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">Booking</span> </a> </li>
                                       <li id="iceMenu_139" class="iceMenuLiLevel_1 "> <a href="viewbooking.jsp?var=<%=id%>" class=" iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">My Booking</span> </a> </li>
                                      <li id="iceMenu_203" class="iceMenuLiLevel_1 fullwidth"> <a href="gallary.jsp" class=" iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">Gallery</span> </a> </li>
                                      <li id="iceMenu_141" class="iceMenuLiLevel_1 "> <a href="contact.jsp" class=" iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">Contact</span> </a> </li>
                                       <li id="iceMenu_141" class="iceMenuLiLevel_1 "> <a href="logout.jsp" class=" iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">log-out</span> </a> </li>
                                    </ul>
                                  </div>
                              </div>
                              </nav>
                              <link href="css/navigation.css" rel="stylesheet" />
                              <div id="mySidenav" class="sidenav hidden-lg hidden-md">
                                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                                    <a href="index.jsp">Home</a>
                                    <a href="about.jsp">About</a>
                                    <a href="formvalidation.jsp">Booking</a> 
                                    <a href="viewbooking.jsp?var=<%=id%>">My Booking</a> 
                                    <a href="gallary.jsp">Gallery</a>
                                    <a href="contact.jsp">Contact</a>
                                    <a href="logout.jsp">log-out</a>
                              </div>
                        </div>
                    </div>                    
                </div>
            </div>
         </div>
                  </div>
    </section>
                                    <br><br><br><br><br><br><br><br>
	
	

<%
}}
else
    {
%>

    <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>hotels</title>
                
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     <link rel="stylesheet" type="text/css" href="style.css">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
       <link rel="stylesheet" type="text/css" href="register.css">

        <link href="vendors/material-icon/css/materialdesignicons.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="vendors/linears-icon/style.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Rev slider css -->
        <link href="vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="vendors/revolution/css/navigation.css" rel="stylesheet">
        
        <!-- Extra plugin css -->
        <link href="vendors/bootstrap-selector/bootstrap-select.css" rel="stylesheet">
        <link href="vendors/bootatrap-date-time/bootstrap-datetimepicker.min.css" rel="stylesheet">
        <link href="vendors/owl-carousel/assets/owl.carousel.css" rel="stylesheet">
        
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <script src="valid.js"></script>
        <style>
		.main{
			position: absolute;margin-top: 80px;top: 10%;left: 20%;background-size:30px;background-color: black;color: #ff53538a;letter-spacing: 10px;font-size: 80;}
		.mai{
			position: absolute;
			margin-top: 100px;
			padding-bottom: 20px;
		}
		.name{
		}
		li a{
			color: white;
			text-decoration: none;
		}
		.menu{
			margin: 20px;
			padding: 10px;
			position: absolute;
			background-color: black;
			top: 1%;
			color: white;
			left: 2%;
			opacity: 0.7;
		}
		
		.g{
		
			position: absolute;
			top: 30%;
			opacity: 0.7;
			height: cover;
			width: 100%;
			background-size: 100px;
			padding-top: 9px;
			padding-right: 9px;
		}


		.p {
			color: black;
			display: block;
		    font-size: 20px;
		   	padding: 10px;
		   }

		.p :hover{
			color: white;
			font-size: 30px;
			background-color: black; 
		}

		.menu li{
			margin-left: 20px;
			display: block;
			color: white;
		}
        
        
	</style>
	<link rel="stylesheet" href="font\css\fontawesome.min.css">
	
</head>

<body style="background-image: url(ps1.jpg);background-size: 100%; background-repeat: no-repeat;background-attachment: fixed;">
	


	<div id="preloader">
            <div class="loader absolute-center">
                <div class="loader__box"><b class="top"></b></div>
                <div class="loader__box"><b class="top"></b></div>
                <div class="loader__box"><b class="top"></b></div>
            </div>
        </div>

    <section>
        <link href="css/lrstyle.css" rel="stylesheet" />
        <link href="css/navbar.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/template.css" rel="stylesheet" />
        <link href="css/My_Style.css" rel="stylesheet" />
        <div id="wrapper">
            <div class="wrapper-inner">
                <div class="headerContent">
                    <div id="top">
                        <div class="row-container">
                            <div class="container">
                                <div id="logo"> <a href="#"> <img src="logoportel.png" alt="Hotel Shubham" style="height:50px; width: 70px;"></div>
                              <nav class="moduletable pull-left hidden-sm hidden-xs">
                                <div class="module_container">
                                  <div class="icemegamenu">
                                    <ul id="icemegamenu">
                                       <li id="iceMenu_101" class="iceMenuLiLevel_1 mzr-drop current  fullwidth"> <a href="index.jsp" class="iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">Home</span> </a> </li>
                                      <li id="iceMenu_134" class="iceMenuLiLevel_1 mzr-drop "> <a href="about.jsp" class=" iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">About</span> </a>
                                        <ul class="icesubMenu icemodules sub_level_1" style="width:180px">
                                          <li>
                                            <div style="float:left;width:180px" class="iceCols">
                                            </div>
                                          </li>
                                        </ul>
                                      </li>
                                      <li id="iceMenu_203" class="iceMenuLiLevel_1 fullwidth"> <a href="gallary.jsp" class=" iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">Gallery</span> </a> </li>
                                      <li id="iceMenu_141" class="iceMenuLiLevel_1 "> <a href="contact.jsp" class=" iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">Contact</span> </a> </li>
                                       <li id="iceMenu_141" class="iceMenuLiLevel_1 "> <a href="login.jsp" class=" iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">Log-in</span> </a> </li>
                                       <li id="iceMenu_141" class="iceMenuLiLevel_1 "> <a href="registeration.jsp" class=" iceMenuTitle "> <span class="icemega_title icemega_nosubtitle">Registration</span> </a> </li>

                                    </ul>
                                  </div>
                              </div>
                              </nav>
                              <link href="css/navigation.css" rel="stylesheet" />
                              <div id="mySidenav" class="sidenav hidden-lg hidden-md">
                                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                                    <a href="index.jsp">Home</a>
                                    <a href="about.jsp">About</a>
                                   
                                    <a href="gallary.jsp">Gallery</a>
                                    <a href="contact.jsp">Contact</a>
                                    <a href="logout.jsp">log-out</a>
                              </div>
                        </div>
                    </div>                    
                </div>
            </div>
         </div>
        </div>
        </section>
    <br><br><br><br><br><br><br><br><br><br><br><br>
    <%  
    }
%>
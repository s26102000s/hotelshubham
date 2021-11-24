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
       

       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="images/favicon.ico" type="image/x-icon">
        <title>Hotel Shubham, Top Budget Hotels in Jaipur near Railway Station
        </title>
        <meta name="description" content="Looking for 3 Star Hotels in Jaipur? Jaipur Hotel Shubham by Peppermint is among best 3 star budget hotels in Jaipur near railway station and bus stand.">

        <link href="css/camera.css" rel="stylesheet" />
        <link href="css/caroufredsel.css" rel="stylesheet" />
        <link href="css/default_icemegamenu-reponsive.css" rel="stylesheet" />
        <link href="css/default_icemegamenu.css" rel="stylesheet" />
        <link href="css/jquery.fancybox-buttons.css" rel="stylesheet" />
        <link href="css/jquery.fancybox-thumbs.css" rel="stylesheet" />
        <link href="css/jquery.fancybox.css" rel="stylesheet" />
        <link href="css/lrstyle.css" rel="stylesheet" />
        <link href="css/navbar.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/template.css" rel="stylesheet" />

        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/jquery-noconflict.js" type="text/javascript"></script>
        <script src="js/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="js/caption.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.min.js" type="text/javascript"></script>
        <script src="js/acymailing_module.js?v=493" type="text/javascript"></script>
        <!--<script src="js/mootools-core.js" type="text/javascript"></script>-->

        <script type="text/javascript" src="js/jquery-1.7.1.js"></script>

        <script src="js/core.js" type="text/javascript"></script>
        <script src="js/jquery.caroufredsel.js" type="text/javascript"></script>
        <script src="js/camera.min.js" type="text/javascript"></script>
        <script src="js/menu.js" type="text/javascript"></script>
        <script src="js/jquery.rd-navbar.js" type="text/javascript"></script>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <link href="css/My_Style.css" rel="stylesheet" />
        <script>
            (function(i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function() {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-80714928-1', 'auto');
            ga('send', 'pageview');
        </script>

  
</head>

<body>
  


 

            <div id="wrapper">
            <div class="wrapper-inner">
                <div class="headerContent">
                    <div id="top">
                        <div class="row-container">
                            <div class="container">
                                <div id="logo"> <a href="#"> <img src="logoportel.png" alt="Hotel Shubham"  style="height:50px;width: 80px;"></div>
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
              <script type="text/javascript">
  jQuery(document).ready(function(){
    var browser_width1 = jQuery(window).width();
    jQuery("#icemegamenu").find(".icesubMenu").each(function(index){
      var offset1 = jQuery(this).offset();
      var xwidth1 = offset1.left + jQuery(this).width();
      if(xwidth1 >= browser_width1){
        jQuery(this).addClass("ice_righttoleft");
      }
    });
    
  })
  jQuery(window).resize(function() {
    var browser_width = jQuery(window).width();
    jQuery("#icemegamenu").find(".icesubMenu").removeClass("ice_righttoleft").each(function(index){
      var offset = jQuery(this).offset();
      var xwidth = offset.left + jQuery(this).width();
      if(xwidth >= browser_width){
        jQuery(this).addClass("ice_righttoleft");
      }
    });
  });

</script>



<script>
    $(document).ready(function(){
        var i = document.location.href.lastIndexOf("/");
    
        var currentPHP = document.location.href.substr(i+1);
    if(currentPHP!=''){
    $("#icemegamenu li").removeClass('icemega_active');
    
        $("#icemegamenu li a[href^='"+currentPHP+"']").closest('li a').addClass('icemega_active');
    }
    else{
       $("#icemegamenu li a[href^='index.php']").closest('li a').addClass('icemega_active');
      }
  });
</script>
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

<span class="hidden-lg hidden-md" style="font-size:30px;cursor:pointer;float: right;margin-right: 32px;padding: 13px 13px;" onclick="openNav()">&#9776; </span>
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>                   
                </div>
            </div>
         </div>

                    <div id="header">
                        <div class="moduletable ">
                            <div class="module_container">
                                <div id="camera-slideshow_92" class=" camera_wrap pattern_1">
                                    <div class="camera-item" data-src="images/slide-0.jpg">
                                  
                                    </div>
                                    <div class="camera-item" data-src="images/slide-1.jpg">
                            
                                    </div>
                                    <div class="camera-item" data-src="images/slide-2.jpg">
                               
                                    </div>
                                    <div class="camera-item" data-src="images/slide-3.jpg">
                                  
                                    </div>
                                    <div class="camera-item" data-src="images/slide-4.jpg">
                                   
                                    </div>
                                    <div class="camera-item" data-src="images/slide-5.jpg">
                                     
                                    </div>
                                    <div class="camera-item" data-src="images/slide-6.jpg"></div>
                                </div>
                                <script>
                                    jQuery(function() {
                                        jQuery('#camera-slideshow_92').camera({
                                            alignment: "topCenter",
                                            autoAdvance: 1,
                                            mobileAutoAdvance: 1,
                                            barDirection: "leftToRight",
                                            barPosition: "bottom",
                                            cols: 6,
                                            easing: "swing",
                                            mobileEasing: "swing",
                                            fx: "simpleFade",
                                            mobileFx: "simpleFade",
                                            gridDifference: 250,
                                            height: "47.46341463414634%",
                                            imagePath: '#',
                                            hover: 0,
                                            loader: "none",
                                            loaderColor: "#eeeeee",
                                            loaderBgColor: "#222222",
                                            loaderOpacity: .8,
                                            loaderPadding: 2,
                                            loaderStroke: 7,
                                            minHeight: "420px",
                                            navigation: 0,
                                            navigationHover: 0,
                                            mobileNavHover: 0,
                                            opacityOnGrid: 0,
                                            overlayer: 0,
                                            pagination: 1,
                                            playPause: 0,
                                            pauseOnClick: 0,
                                            pieDiameter: 38,
                                            piePosition: "rightTop",
                                            portrait: 0,
                                            rows: 4,
                                            slicedCols: 6,
                                            slicedRows: 4,

                                            thumbnails: 0,
                                            time: 7000,
                                            transPeriod: 1500
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="showcase">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable   span12">
                                    <div class="module_container">
                                        <div class="top_header">
                                            <header>
                                                <h3 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Welcome</span></h3>
                                            </header>
                                            <div class="pretext">
                                                <!--<span style="color:#3a206c">Hotel Shubham by</span> <span style="color:#84c64f">Peppermint</span>-->
                                                <img src="images/content_logo.png" alt="Hotel Shubham" />
                                            </div>
                                        </div>
                                        <!--<div class="top_details">
                  <ul>
                    <li><img src="images/virtual-tour.png" /></li>
                    <li><img src="images/call-us.png" /></li>
                  </ul>
                </div>-->
                                        <div class="clr"></div>
                                        <div class="mod-newsflash-adv mod-newsflash-adv__ cols-3" id="module_132">
                                            <div class="row-fluid">
                                                <article class="span4 item item_num0 item__module  " id="item_108">
                                                    <div class="item_content">
                                                        <figure class="item_img img-intro img-intro__none"> <img src="images/hotel_IGBC.png" alt=""> </figure>
                                                        <div class="sub_tag">Ensuring maximum facilities we are registered for green interiors certification.</div>
                                                        <div class="item_introtext"> </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span4 item item_num1 item__module  " id="item_109">
                                                    <div class="item_content">
                                                        <div class="item_introtext">
                                                            <!--Hotel Shubham by Peppermint with contemporary 43-rooms is strategically located at the city centre near the heritage walled city, next to the metro station, half a km to inter-state bus terminal, 2 km to railway station and 11 Kilometers from the International Airport. But in a quiet & serene colony Jobner Bagh station road Jaipur-->

                                                            Guest comfort has been the priority; it has been kept in mind that it comes with other features such as provision of fresh air. This enables the in-house guest to avoid the sick building syndrome and also the spread of disease is controlled. The fresh air in the hotel is designed to be 30% over and above the ASHRAV 62.1 standard. Further the air quality is ensured by use of low VOC paints. Water is another major concern, especially in the State of Rajasthan. Keeping the IGBC norms in consideration and the estimated water usage - without compromising on

                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span4 item item_num2 item__module  lastItem" id="item_110">
                                                    <div class="item_content">
                                                        <div class="item_introtext">
                                                            <!-- Step outside and you will have an easy access to some of the city's most popular tourist attractions like Hawa Mahal 2km, City Palace 2km, Amer Fort 10km and local markets like Bapu Bazaar 2 km , Johari Bazaar 2km etc. The hotel has an added advantage of being in the proximity of major corporate hubs and convention centres. -->

                                                            guest comfort, low flow fixtures has been used in the hotel. This not only ensures that lesser water is consumed but also ensures that less energy is wasted on pumping and treating waste water. Energy is a major contributor in the expenditure of commercial facility. Also keeping in mind YE variable occupant load in the facility, a VRV system is proposed. This leads to less energy consumption resulting in lower operation costs hence providing exceptional guest facilities.

                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="feature" data-stellar-background-ratio="0.5">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable center counters  span12">
                                    <div class="module_container">
                                        <div class="mod-newsflash-adv mod-newsflash-adv__center counters cols-4" id="module_119">
                                            <div class="row-fluid">
                                                <article class="span3 item item_num0 item__module  " id="item_79">
                                                    <div class="item_content"> <i class="fa fa-group "></i>
                                                        <h1 class="item_title item_title__center counters"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">4,236</span></h1>
                                                        <div class="item_introtext"> happy clients </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span3 item item_num1 item__module  " id="item_80">
                                                    <div class="item_content"> <i class="fa fa-home" aria-hidden="true"></i>
                                                        <h1 class="item_title item_title__center counters"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">42</span></h1>
                                                        <div class="item_introtext"> rooms </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span3 item item_num2 item__module  " id="item_81">
                                                    <div class="item_content"> <i class="fa fa-train" aria-hidden="true"></i>
                                                        <h1 class="item_title item_title__center counters"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">2 KM</span></h1>
                                                        <div class="item_introtext">Railway Station</div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span3 item item_num3 item__module  lastItem" id="item_82">
                                                    <div class="item_content"> <i class="fa fa-gamepad "></i>
                                                        <h1 class="item_title item_title__center counters"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">25</span></h1>
                                                        <div class="item_introtext"> fun activities </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="maintop" data-stellar-background-ratio="0.5">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable center  span12">
                                    <div class="module_container">
                                        <header>
                                            <h1 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">First Green Hotel in India by IGBC</span> </h1>
                                        </header>
                                        <div class="mod-custom mod-custom__center"> &nbsp;</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="content">
                    <div class="row-container">
                        <div class="container">
                            <div class="content-inner row">
                                <div id="component" class="span12">
                                    <main role="main">
                                        <div id="system-message-container"> </div>
                                        <section class="page-category page-category__"> </section>
                                        <div id="content-bottom-row" class="row">
                                            <div id="content-bottom">
                                                <div class="moduletable   span12">
                                                    <div class="module_container">
                                                        <header>
                                                            <h3 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Rooms</span></h3>
                                                        </header>

                                                        <div style="margin-bottom:30px"></div>
                                                        <!--<div class="pretext">Hotel Shubham</div>-->
                                                        <div class="mod_caroufredsel rooms mod_caroufredsel__" id="module_147">
                                                            <div id="list_carousel_147" class="list_carousel">
                                                                <ul id="caroufredsel_147">
                                                                    <li class="item" id="item_107">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/premiumroom.jpg" alt="">
                                                                                            <div class="caption">
                                                                                                <figcaption>23</figcaption>
                                                                                                Rooms</div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Deluxe Rooms</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last"></span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 23-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="item" id="item_106">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/deluxeroom.jpg" alt="per night">
                                                                                            <div class="caption">
                                                                                                <figcaption>18</figcaption>
                                                                                                Rooms </div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Premium Room</span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 18-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="item" id="item_105">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/royalroom.jpg" alt="per night">
                                                                                            <div class="caption">
                                                                                                <figcaption>01</figcaption>
                                                                                                Rooms </div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Suite Room</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last"></span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 01-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="item" id="item_104">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/premiumroom.jpg" alt="">
                                                                                            <div class="caption">
                                                                                                <figcaption>23</figcaption>
                                                                                                Rooms</div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Deluxe Rooms</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last"></span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 23-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="item" id="item_103">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/deluxeroom.jpg" alt="per night">
                                                                                            <div class="caption">
                                                                                                <figcaption>18</figcaption>
                                                                                                Rooms </div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Premium Room</span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 18-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="item" id="item_102">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/royalroom.jpg" alt="per night">
                                                                                            <div class="caption">
                                                                                                <figcaption>01</figcaption>
                                                                                                Rooms </div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Suite Room</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last"></span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 01-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div id="carousel_147_pag" class="caroufredsel_pagination"></div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div id="carousel_147_prev" class="caroufredsel_prev"><i class="fa fa-chevron-left"></i></div>
                                                        <div id="carousel_147_next" class="caroufredsel_next"><i class="fa fa-chevron-right"></i></div>
                                                        <script>
                                                            jQuery(function($) {
                                                                var carousel = $("#caroufredsel_147")
                                                                carousel.carouFredSel({
                                                                    responsive: true,
                                                                    width: '100%',
                                                                    items: {
                                                                        width: 800,
                                                                        height: 'variable',
                                                                        visible: {
                                                                            min: 1,
                                                                            max: 2
                                                                        },
                                                                        minimum: 1
                                                                    },
                                                                    scroll: {
                                                                        items: 1,
                                                                        fx: "scroll",
                                                                        easing: "swing",
                                                                        duration: 500,
                                                                        queue: true
                                                                    },
                                                                    auto: false,
                                                                    next: "#carousel_147_next",
                                                                    prev: "#carousel_147_prev",
                                                                    swipe: {
                                                                        onTouch: true
                                                                    }
                                                                });
                                                                $(window).load(function() {
                                                                    setTimeout(function() {
                                                                        carousel.trigger('configuration', {
                                                                            reInit: true
                                                                        })
                                                                    }, 100);
                                                                });
                                                            });
                                                        </script>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </main>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mainbottom">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable center  span9">
                                    <div class="module_container">
                                        <header>
                                            <h1 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first"> Board Room and Banquet</span> </h1>
                                        </header>
                                        <div class="mod-custom mod-custom__center"> &nbsp;</div>
                                    </div>
                                </div>
                                <div class="moduletable   span3">
                                    <div class="module_container">
                                        <div class="mod-menu">
                                            <ul class="nav menu link">
                                                <li class="item-333"><a class="fa fa-eye " href="board_room.php">View More</a> </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mainbottom-2" data-stellar-background-ratio="0.5">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable center  span12">
                                    <div class="module_container">
                                        <header>
                                            <h1 class="moduleTitle ">
                      <a href="board_room.php"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Board Room</span></a></h1>
                                        </header>
                                        <div id="sw_twitter_display" class="center"> <a class="twitter-timeline" data-theme="dark" data-link-color="#0088cc" data-border-color="#000000" data-chrome="nofooter noborders " data-tweet-limit="0" href="#" data-widget-id="390741737846497280" width="520" height="220">Board Room Hotel Shubham by <span style="color:#84c64f;font-weight:normal;font-size:14px;">Peppermint</span></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mainbottom-3">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable   span12">
                                    <div class="module_container">
                                        <header>
                                            <h3 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Guest</span></h3>
                                        </header>
                                        <div class="pretext"> Reviews</div>
                                        <div class="mod_caroufredsel mod_caroufredsel__" id="module_91">
                                            <div id="list_carousel_91" class="list_carousel">
                                                <ul id="caroufredsel_91">
                                                    <li class="item" id="item_19">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 19:57" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Gorav</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">Kumar</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped... </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="item" id="item_20">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 19:58" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Mita Sing</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped. </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="item" id="item_21">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 19:58" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Kapil</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">Sharma</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped. </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="item" id="item_22">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 19:59" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Kamlesh</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">Kumar</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped. </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="item" id="item_23">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 20:00" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Krishnpal</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">Soni</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped. </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="item" id="item_24">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 20:00" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Nandni</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">Parik</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped. </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div id="carousel_91_pag" class="caroufredsel_pagination"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div id="carousel_91_prev" class="caroufredsel_prev"><i class="fa fa-chevron-left"></i></div>
                                        <div id="carousel_91_next" class="caroufredsel_next"><i class="fa fa-chevron-right"></i></div>
                                        <div>
                                            <div id="ShowContent">
                                                <br />
                                                <h1>Welcome to Shubham Hotel, One of the Best Budget Hotels in Jaipur </h1> Shubham Hotel in Jaipur is among one of the best 3 star hotels in Jaipur. The Hotel is known for its proximity to various prime locations of Jaipur. The Shubham Hotel in Jaipur is one of the finest budget hotels Jaipur has to offer, boasting wonderful 3 star hotel accommodation in Jaipur, Rajasthan. Whether you are coming to Jaipur by a flight, bus or train, the hotel is in your reach as it approximately takes 30 minutes from International Airport, 10 minutes from Jaipur Railway station, 5 minutes from nearby Bus Stand to reach Hotel Shubham in Jaipur by Peppermint. - <a style="cursor: pointer;">SEE MORE</a>
                                            </div>
                                            <div id="HideContent" style="display:none;">

                                                Here, you can relax yourself in our elegantly designed, luxurious and air-conditioned rooms and suits which are well equipped with modern facilities. Here each room receives ample sunlight and is designed to give you best of the comforts. You can access free Wi-Fi connectivity to work on your laptops or mobiles and communicate with your friends and relatives, send them pictures of beautiful pink city and off course your booked room too. The quality services offered in the rooms, restaurant & hospitality by the staff make Shubham Hotel Jaipur by peppermint one of the finest 3 star hotels in Jaipur. We also provide mouth-watering delicacies at our dining area. For shopaholics and families, Hotel Shubham is the best option as the shopping areas and famous markets of Jaipur are not far away to the hotel. You can use a taxi service to reach the famous markets.
                                                <div class="clr"></div>
                                                <br />
                                                <h2>Experience a Brilliant Stay at 3 Star Hotels in Jaipur near Railway Station</h2> If you are looking for a Jaipur hotels near railway station then give us a chance to offer you the best services. At Hotel Shubham, personal touch and professionalism go hand in hand to cater to the expectations and needs of ever-demanding clientele. The hotel is closely located to several well-known tourist attractions like Hawa Mahal, City Palace, and Jantar Mantar. If you are looking for hotels in Jaipur near railway station, Hotel Shubham is the best choice because this budget hotel in Jaipur, India suits all tastes whether you are coming for a business meeting, family holiday, exams or any other reason. It is one of the best Jaipur hotels near railway station and bus stand. As one of the best budget hotels in Jaipur, we have the quality in every sphere of our suites. It is a women-friendly and senior-friendly hotel which ensures proper security and comfort. A stay at Shubham hotel in Jaipur can be one of the most amazing experiences of your stay in Jaipur hotels you have ever visited and that too in your budget.
                                                <div class="clr"></div>
                                                <br />
                                                <h2>Hotel Shubham - Peppermint Hotel Jaipur</h2> Hotel Shubham is passionately designed and family managed hotel which has open and lush green surroundings, well-maintained and clean rooms, hygienic food and elegant infrastructure. We have modern facilities with relaxed atmosphere and friendly staff. Here, you are rest assured to get homely feeling when it comes to relax and unwind at your room. Hotel Shubham in Jaipur by Peppermint offers spacious and comfortable accommodation to its customers with best of the dining facility at affordable rates in Jaipur. You can read customer reviews too and can make an enquiry anytime to our staff for any of your query.
                                                <br />
                                                <br /> We provide a widest range of accommodation options and we are known for having well-appointed and spacious luxurious rooms that are designed to provide a home away from your home, whether you are a leisure or business traveler. Travel around Jaipur city, the capital of the Indian state of Rajasthan in Northern India, founded by Maharaja Jai Singh II. Explore Jaipur city which is popularly known as the pink city and its culture with your stay in Jaipur for at least a week. Make your business trip or family trip more enjoyable with a pleasant stay at Shubham Hotel in Jaipur.
                                                <div class="clr"></div>
                                                <br />
                                                <h3>Contact us to Book Hotel Rooms or Restaurant Table today!</h3> At Shubham hotel in Jaipur, Rajasthan our team is committed to provide the best hospitality service and experience of brilliant stay to all our customers. Contact us today for hotel room bookings or enquiry by calling us on any of the numbers +91 9664065796 (M), +91 8890089199 (M),emailing us on shubham@gmail.com or alternatively you can simply fill out our enquires form or contact form.
                                                <br />
                                                <a style="cursor: pointer;">COLLAPSE</a>
                                            </div>
                                        </div>
                                        <script>
                                            jQuery(function($) {
                                                var carousel = $("#caroufredsel_91")
                                                carousel.carouFredSel({
                                                    responsive: true,
                                                    width: '100%',
                                                    items: {
                                                        width: 380,
                                                        height: 'variable',
                                                        visible: {
                                                            min: 1,
                                                            max: 4
                                                        },
                                                        minimum: 1
                                                    },
                                                    scroll: {
                                                        items: 1,
                                                        fx: "scroll",
                                                        easing: "swing",
                                                        duration: 500,
                                                        queue: true
                                                    },
                                                    auto: false,
                                                    next: "#carousel_91_next",
                                                    prev: "#carousel_91_prev",
                                                    swipe: {
                                                        onTouch: true
                                                    }
                                                });
                                                $(window).load(function() {
                                                    setTimeout(function() {
                                                        carousel.trigger('configuration', {
                                                            reInit: true
                                                        })
                                                    }, 100);
                                                });
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mainbottom-4">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable newsletter  span12">
                                    <div class="module_container">
                                        <header>
                                            <h1 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Newsletter</span></h1>
                                        </header>
                                        <div class="acymailing_modulenewsletter" id="acymailing_module_formAcymailing77761">
                                            <div class="acymailing_fulldiv" id="acymailing_fulldiv_formAcymailing77761" style="text-align:left">
                                                <form id="formAcymailing77761">
                                                    <div class="acymailing_module_form">
                                                        <table class="acymailing_form">
                                                            <tr>
                                                                <td class="acyfield_email acy_requiredField">
                                                                    <input id="user_email_formAcymailing77761" class="inputbox" type="text" name="" style="width:100%" value="" title="Email" />
                                                                </td>
                                                                <td class="acysubbuttons">
                                                                    <input class="button subbutton btn btn-primary" type="submit" value="" name="Submit" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="push"></div>
            </div>
        </div>
        <div id="footer-wrapper">
            <div class="footer-wrapper-inner">
                <div id="bottom">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable center contacts  span12">
                                    <div class="module_container">
                                        <div class="mod-newsflash-adv mod-newsflash-adv__center contacts cols-3" id="module_133">
                                            <div class="row-fluid">
                                                <article class="span4 item item_num0 item__module  " id="item_99">
                                                    <div class="item_content"> <i class="fa fa-mobile"></i>
                                                        <h1 class="item_title item_title__center contacts"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Phone</span></h1>
                                                        <div class="item_introtext"> +91 9664065796 
                                                           <p>+91 8890089199</p>
                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span4 item item_num1 item__module  " id="item_100">
                                                    <div class="item_content"> <i class="fa fa-location-arrow"></i>
                                                        <h1 class="item_title item_title__center contacts"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Address</span></h1>
                                                        <div class="item_introtext"> Station Road, Near Chandpole Police Line,
                                                            <p>Jobner Bagh, Jaipur. 302006</p>
                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span4 item item_num2 item__module  lastItem" id="item_101">
                                                    <div class="item_content"> <i class="fa  fa-envelope"></i>
                                                        <h1 class="item_title item_title__center contacts"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Email</span></h1>
                                                        <div class="item_introtext"> <a href="#">shubham@gmail.com</a> </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="footer">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable   span12">
                                    <div class="module_container">
                                        <div class="mod-menu mod-menu__social">
                                            <ul class="nav menu social">
                                                <li class="item-148">
                                                    <a class="fa fa-facebook" href="#" title="Facebook"></a>
                                                </li>
                                                <li class="item-150">
                                                    <a class="fa fa-twitter" href="#" title="Twitter"></a>
                                                </li>
                                                <li class="item-152">
                                                    <a class="fa fa-instagram " href="#" title="Instagram"></a>
                                                </li>
                                                <li class="item-151">
                                                    <a class="fa fa-pinterest" href="#" title="Pinterest"></a>
                                                </li>
                                                <li class="item-149">
                                                    <a class="fa fa-google-plus" href="#" title="Google+"></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>

        
<div id="back-top"> <a href="#"><span></span> </a> </div>
<div id="modal" class="modal hide fade loginPopup">
  <div class="modal-hide"></div>
  <div class="modal_wrapper">
    <button type="button" class="close modalClose">×</button>
    <div class="moduletable ">
      <div class="modal-header">
        <header>
            <h3 class=""><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Login</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">form</span></h3>
        </header>
      </div>
      <div class="modal-body">
        <div class="lr_social_login_basic_150">
          <div class="lr_providers">
            <div class="lr_icons_box">
              <div> <a class="lr_providericons lr_facebook" href="#"  rel="" title="Login with Facebook">Login with Facebook</a> </div>
              <div> <a class="lr_providericons lr_google" href="#">Login with Google +</a> </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="js/jquery.stellar.min.js"></script> 
<script>
      jQuery(function($) {
        $(window).load(function(){
          $.stellar({responsive: true,horizontalScrolling: false});
        });
      });
    </script> 
<script src="js/jquery.simplr.smoothscroll.min.js"></script> 
<script src="js/jquery.BlackAndWhite.min.js"></script> 
<script>
      ;(function($, undefined) {
      $.fn.BlackAndWhite_init = function () {
        var selector = $(this);
        selector.find('img').not(".slide-img").parent().BlackAndWhite({
          invertHoverEffect: ".$this->params->get('invertHoverEffect').",
          intensity: 1,
          responsive: true,
          speed: {
              fadeIn: ".$this->params->get('fadeIn').",
              fadeOut: ".$this->params->get('fadeOut')." 
          }
        });
      }
      })(jQuery);
      jQuery(window).load(function($){
        jQuery('.item_img a').find('img').not('.lazy').parent().BlackAndWhite_init();
      });
    </script> 
<script src="js/jquery.fancybox.pack.js"></script> 
<script src="js/jquery.fancybox-buttons.js"></script> 
<script src="js/jquery.fancybox-media.js"></script> 
<script src="js/jquery.fancybox-thumbs.js"></script> 
<script src="js/jquery.pep.js"></script> 
<script src="js/jquery.vide.min.js"></script> 
<script src="js/autosize.min.js"></script> 
<script src="js/scripts.js"></script>
</body>
</html>
            <script>
                $('#ShowContent a').click(function() {
                    $(this).hide();
                    $('#HideContent').slideToggle('slow', function() {});

                });
                $('#HideContent a').click(function() {
                    $('#HideContent').slideToggle('slow', function() {
                        $('#ShowContent a').show();
                    });
                });
            </script>

  
  

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
         <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="images/favicon.ico" type="image/x-icon">
        <title>Hotel Shubham, Top Budget Hotels in Jaipur near Railway Station
        </title>
        <meta name="description" content="Looking for 3 Star Hotels in Jaipur? Jaipur Hotel Shubham by Peppermint is among best 3 star budget hotels in Jaipur near railway station and bus stand.">

        <link href="css/camera.css" rel="stylesheet" />
        <link href="css/caroufredsel.css" rel="stylesheet" />
        <link href="css/default_icemegamenu-reponsive.css" rel="stylesheet" />
        <link href="css/default_icemegamenu.css" rel="stylesheet" />
        <link href="css/jquery.fancybox-buttons.css" rel="stylesheet" />
        <link href="css/jquery.fancybox-thumbs.css" rel="stylesheet" />
        <link href="css/jquery.fancybox.css" rel="stylesheet" />
        <link href="css/lrstyle.css" rel="stylesheet" />
        <link href="css/navbar.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/template.css" rel="stylesheet" />

        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/jquery-noconflict.js" type="text/javascript"></script>
        <script src="js/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="js/caption.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.min.js" type="text/javascript"></script>
        <script src="js/acymailing_module.js?v=493" type="text/javascript"></script>
        <!--<script src="js/mootools-core.js" type="text/javascript"></script>-->

        <script type="text/javascript" src="js/jquery-1.7.1.js"></script>

        <script src="js/core.js" type="text/javascript"></script>
        <script src="js/jquery.caroufredsel.js" type="text/javascript"></script>
        <script src="js/camera.min.js" type="text/javascript"></script>
        <script src="js/menu.js" type="text/javascript"></script>
        <script src="js/jquery.rd-navbar.js" type="text/javascript"></script>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <link href="css/My_Style.css" rel="stylesheet" />
        <script>
            (function(i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function() {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-80714928-1', 'auto');
            ga('send', 'pageview');
        </script>

</head>

<body>
  


 

        <div id="wrapper">
            <div class="wrapper-inner">
                <div class="headerContent">
                    <div id="top">
                        <div class="row-container">
                            <div class="container">
                                <div id="logo"> <a href="#"> <img src="logoportel.png" alt="Hotel Shubham" style="height:50px;width: 80px;"></div>
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
                                   <script type="text/javascript">
  jQuery(document).ready(function(){
    var browser_width1 = jQuery(window).width();
    jQuery("#icemegamenu").find(".icesubMenu").each(function(index){
      var offset1 = jQuery(this).offset();
      var xwidth1 = offset1.left + jQuery(this).width();
      if(xwidth1 >= browser_width1){
        jQuery(this).addClass("ice_righttoleft");
      }
    });
    
  })
  jQuery(window).resize(function() {
    var browser_width = jQuery(window).width();
    jQuery("#icemegamenu").find(".icesubMenu").removeClass("ice_righttoleft").each(function(index){
      var offset = jQuery(this).offset();
      var xwidth = offset.left + jQuery(this).width();
      if(xwidth >= browser_width){
        jQuery(this).addClass("ice_righttoleft");
      }
    });
  });

</script>



<script>
    $(document).ready(function(){
        var i = document.location.href.lastIndexOf("/");
    
        var currentPHP = document.location.href.substr(i+1);
    if(currentPHP!=''){
    $("#icemegamenu li").removeClass('icemega_active');
    
        $("#icemegamenu li a[href^='"+currentPHP+"']").closest('li a').addClass('icemega_active');
    }
    else{
       $("#icemegamenu li a[href^='index.php']").closest('li a').addClass('icemega_active');
      }
  });
</script>
                              </div>
                              </nav>
                              <link href="css/navigation.css" rel="stylesheet" />
                              <div id="mySidenav" class="sidenav hidden-lg hidden-md">
                                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                                    <a href="index.jsp">Home</a>
                                    <a href="about.jsp">About</a>
                                    <a href="formvalidation.jsp">Booking</a> 
                                    <a href="viewbooking.jsp">My Booking</a> 
                                    <a href="gallary.jsp">Gallery</a>
                                    <a href="contact.jsp">Contact</a>
                                    <a href="login.jsp">log-in</a>
                                    <a href="registeration.jsp">Registration</a>
                              </div>
                        </div>
                    </div>                    
                </div>
            </div>
         </div>


                    <div id="header">
                        <div class="moduletable ">
                            <div class="module_container">
                                <div id="camera-slideshow_92" class=" camera_wrap pattern_1">
                                    <div class="camera-item" data-src="images/slide-0.jpg">
                                    </div>
                                    <div class="camera-item" data-src="images/slide-1.jpg">
                                    </div>
                                    <div class="camera-item" data-src="images/slide-2.jpg">
                                    </div>
                                    <div class="camera-item" data-src="images/slide-3.jpg">
                                    </div>
                                    <div class="camera-item" data-src="images/slide-4.jpg">
                                    </div>
                                    <div class="camera-item " data-src="images/slide-5.jpg">
                                    </div>
                                    <div class="camera-item " data-src="images/slide-6.jpg">    
                                    </div>
                                </div>
                                <script>
                                    jQuery(function() {
                                        jQuery('#camera-slideshow_92').camera({
                                            alignment: "topCenter",
                                            autoAdvance: 1,
                                            mobileAutoAdvance: 1,
                                            barDirection: "leftToRight",
                                            barPosition: "bottom",
                                            cols: 6,
                                            easing: "swing",
                                            mobileEasing: "swing",
                                            fx: "simpleFade",
                                            mobileFx: "simpleFade",
                                            gridDifference: 250,
                                            height: "47.46341463414634%",
                                            imagePath: '#',
                                            hover: 0,
                                            loader: "none",
                                            loaderColor: "#eeeeee",
                                            loaderBgColor: "#222222",
                                            loaderOpacity: .8,
                                            loaderPadding: 2,
                                            loaderStroke: 7,
                                            minHeight: "420px",
                                            navigation: 0,
                                            navigationHover: 0,
                                            mobileNavHover: 0,
                                            opacityOnGrid: 0,
                                            overlayer: 0,
                                            pagination: 1,
                                            playPause: 0,
                                            pauseOnClick: 0,
                                            pieDiameter: 38,
                                            piePosition: "rightTop",
                                            portrait: 0,
                                            rows: 4,
                                            slicedCols: 6,
                                            slicedRows: 4,

                                            thumbnails: 0,
                                            time: 7000,
                                            transPeriod: 1500
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                                     </div>
    <br/>

   			
                
                <div id="showcase">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable   span12">
                                    <div class="module_container">
                                        <div class="top_header">
                                            <header>
                                                <h3 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Welcome</span></h3>
                                            </header>
                                            <div class="pretext">
                                                <!--<span style="color:#3a206c">Hotel Shubham by</span> <span style="color:#84c64f">Peppermint</span>-->
                                                <img src="images/content_logo.png" alt="Hotel Shubham" />
                                            </div>
                                        </div>
                                        <!--<div class="top_details">
                  <ul>
                    <li><img src="images/virtual-tour.png" /></li>
                    <li><img src="images/call-us.png" /></li>
                  </ul>
                </div>-->
                                        <div class="clr"></div>
                                        <div class="mod-newsflash-adv mod-newsflash-adv__ cols-3" id="module_132">
                                            <div class="row-fluid">
                                                <article class="span4 item item_num0 item__module  " id="item_108">
                                                    <div class="item_content">
                                                        <figure class="item_img img-intro img-intro__none"> <img src="images/hotel_IGBC.png" alt=""> </figure>
                                                        <div class="sub_tag">Ensuring maximum facilities we are registered for green interiors certification.</div>
                                                        <div class="item_introtext"> </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span4 item item_num1 item__module  " id="item_109">
                                                    <div class="item_content">
                                                        <div class="item_introtext">
                                                            <!--Hotel Shubham by Peppermint with contemporary 43-rooms is strategically located at the city centre near the heritage walled city, next to the metro station, half a km to inter-state bus terminal, 2 km to railway station and 11 Kilometers from the International Airport. But in a quiet & serene colony Jobner Bagh station road Jaipur-->

                                                            Guest comfort has been the priority; it has been kept in mind that it comes with other features such as provision of fresh air. This enables the in-house guest to avoid the sick building syndrome and also the spread of disease is controlled. The fresh air in the hotel is designed to be 30% over and above the ASHRAV 62.1 standard. Further the air quality is ensured by use of low VOC paints. Water is another major concern, especially in the State of Rajasthan. Keeping the IGBC norms in consideration and the estimated water usage - without compromising on

                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span4 item item_num2 item__module  lastItem" id="item_110">
                                                    <div class="item_content">
                                                        <div class="item_introtext">
                                                            <!-- Step outside and you will have an easy access to some of the city's most popular tourist attractions like Hawa Mahal 2km, City Palace 2km, Amer Fort 10km and local markets like Bapu Bazaar 2 km , Johari Bazaar 2km etc. The hotel has an added advantage of being in the proximity of major corporate hubs and convention centres. -->

                                                            guest comfort, low flow fixtures has been used in the hotel. This not only ensures that lesser water is consumed but also ensures that less energy is wasted on pumping and treating waste water. Energy is a major contributor in the expenditure of commercial facility. Also keeping in mind YE variable occupant load in the facility, a VRV system is proposed. This leads to less energy consumption resulting in lower operation costs hence providing exceptional guest facilities.

                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="feature" data-stellar-background-ratio="0.5">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable center counters  span12">
                                    <div class="module_container">
                                        <div class="mod-newsflash-adv mod-newsflash-adv__center counters cols-4" id="module_119">
                                            <div class="row-fluid">
                                                <article class="span3 item item_num0 item__module  " id="item_79">
                                                    <div class="item_content"> <i class="fa fa-group "></i>
                                                        <h1 class="item_title item_title__center counters"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">4,236</span></h1>
                                                        <div class="item_introtext"> happy clients </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span3 item item_num1 item__module  " id="item_80">
                                                    <div class="item_content"> <i class="fa fa-home" aria-hidden="true"></i>
                                                        <h1 class="item_title item_title__center counters"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">42</span></h1>
                                                        <div class="item_introtext"> rooms </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span3 item item_num2 item__module  " id="item_81">
                                                    <div class="item_content"> <i class="fa fa-train" aria-hidden="true"></i>
                                                        <h1 class="item_title item_title__center counters"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">2 KM</span></h1>
                                                        <div class="item_introtext">Railway Station</div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span3 item item_num3 item__module  lastItem" id="item_82">
                                                    <div class="item_content"> <i class="fa fa-gamepad "></i>
                                                        <h1 class="item_title item_title__center counters"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">25</span></h1>
                                                        <div class="item_introtext"> fun activities </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="maintop" data-stellar-background-ratio="0.5">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable center  span12">
                                    <div class="module_container">
                                        <header>
                                            <h1 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">First Green Hotel in India by IGBC</span> </h1>
                                        </header>
                                        <div class="mod-custom mod-custom__center"> &nbsp;</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="content">
                    <div class="row-container">
                        <div class="container">
                            <div class="content-inner row">
                                <div id="component" class="span12">
                                    <main role="main">
                                        <div id="system-message-container"> </div>
                                        <section class="page-category page-category__"> </section>
                                        <div id="content-bottom-row" class="row">
                                            <div id="content-bottom">
                                                <div class="moduletable   span12">
                                                    <div class="module_container">
                                                        <header>
                                                            <h3 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Rooms</span></h3>
                                                        </header>

                                                        <div style="margin-bottom:30px"></div>
                                                        <!--<div class="pretext">Hotel Shubham</div>-->
                                                        <div class="mod_caroufredsel rooms mod_caroufredsel__" id="module_147">
                                                            <div id="list_carousel_147" class="list_carousel">
                                                                <ul id="caroufredsel_147">
                                                                    <li class="item" id="item_107">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/premiumroom.jpg" alt="">
                                                                                            <div class="caption">
                                                                                                <figcaption>23</figcaption>
                                                                                                Rooms</div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Deluxe Rooms</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last"></span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 23-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="item" id="item_106">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/deluxeroom.jpg" alt="per night">
                                                                                            <div class="caption">
                                                                                                <figcaption>18</figcaption>
                                                                                                Rooms </div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Premium Room</span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 18-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="item" id="item_105">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/royalroom.jpg" alt="per night">
                                                                                            <div class="caption">
                                                                                                <figcaption>01</figcaption>
                                                                                                Rooms </div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Suite Room</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last"></span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 01-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="item" id="item_104">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/premiumroom.jpg" alt="">
                                                                                            <div class="caption">
                                                                                                <figcaption>23</figcaption>
                                                                                                Rooms</div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Deluxe Rooms</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last"></span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 23-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="item" id="item_103">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/deluxeroom.jpg" alt="per night">
                                                                                            <div class="caption">
                                                                                                <figcaption>18</figcaption>
                                                                                                Rooms </div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Premium Room</span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 18-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="item" id="item_102">
                                                                        <div class="item_content">
                                                                            <div class="item_indent">
                                                                                <a href="#">
                                                                                    <div class="item_inner">
                                                                                        <figure class="item_img img-intro img-intro__left"> <img src="images/royalroom.jpg" alt="per night">
                                                                                            <div class="caption">
                                                                                                <figcaption>01</figcaption>
                                                                                                Rooms </div>
                                                                                        </figure>
                                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Suite Room</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last"></span></h6>
                                                                                        <div class="item_introtext"> Hotel Shubham by <span style="color:#84c64f">Peppermint</span> with contemporary 01-rooms is strategically located at the city... </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div id="carousel_147_pag" class="caroufredsel_pagination"></div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div id="carousel_147_prev" class="caroufredsel_prev"><i class="fa fa-chevron-left"></i></div>
                                                        <div id="carousel_147_next" class="caroufredsel_next"><i class="fa fa-chevron-right"></i></div>
                                                        <script>
                                                            jQuery(function($) {
                                                                var carousel = $("#caroufredsel_147")
                                                                carousel.carouFredSel({
                                                                    responsive: true,
                                                                    width: '100%',
                                                                    items: {
                                                                        width: 800,
                                                                        height: 'variable',
                                                                        visible: {
                                                                            min: 1,
                                                                            max: 2
                                                                        },
                                                                        minimum: 1
                                                                    },
                                                                    scroll: {
                                                                        items: 1,
                                                                        fx: "scroll",
                                                                        easing: "swing",
                                                                        duration: 500,
                                                                        queue: true
                                                                    },
                                                                    auto: false,
                                                                    next: "#carousel_147_next",
                                                                    prev: "#carousel_147_prev",
                                                                    swipe: {
                                                                        onTouch: true
                                                                    }
                                                                });
                                                                $(window).load(function() {
                                                                    setTimeout(function() {
                                                                        carousel.trigger('configuration', {
                                                                            reInit: true
                                                                        })
                                                                    }, 100);
                                                                });
                                                            });
                                                        </script>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </main>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mainbottom">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable center  span9">
                                    <div class="module_container">
                                        <header>
                                            <h1 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first"> Board Room and Banquet</span> </h1>
                                        </header>
                                        <div class="mod-custom mod-custom__center"> &nbsp;</div>
                                    </div>
                                </div>
                                <div class="moduletable   span3">
                                    <div class="module_container">
                                        <div class="mod-menu">
                                            <ul class="nav menu link">
                                                <li class="item-333"><a class="fa fa-eye " href="board_room.php">View More</a> </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mainbottom-2" data-stellar-background-ratio="0.5">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable center  span12">
                                    <div class="module_container">
                                        <header>
                                            <h1 class="moduleTitle ">
                      <a href="board_room.php"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Board Room</span></a></h1>
                                        </header>
                                        <div id="sw_twitter_display" class="center"> <a class="twitter-timeline" data-theme="dark" data-link-color="#0088cc" data-border-color="#000000" data-chrome="nofooter noborders " data-tweet-limit="0" href="#" data-widget-id="390741737846497280" width="520" height="220">Board Room Hotel Shubham by <span style="color:#84c64f;font-weight:normal;font-size:14px;">Peppermint</span></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mainbottom-3">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable   span12">
                                    <div class="module_container">
                                        <header>
                                            <h3 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Guest</span></h3>
                                        </header>
                                        <div class="pretext"> Reviews</div>
                                        <div class="mod_caroufredsel mod_caroufredsel__" id="module_91">
                                            <div id="list_carousel_91" class="list_carousel">
                                                <ul id="caroufredsel_91">
                                                    <li class="item" id="item_19">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 19:57" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Gorav</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">Kumar</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped... </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="item" id="item_20">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 19:58" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Mita Sing</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped. </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="item" id="item_21">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 19:58" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Kapil</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">Sharma</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped. </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="item" id="item_22">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 19:59" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Kamlesh</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">Kumar</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped. </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="item" id="item_23">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 20:00" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Krishnpal</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">Soni</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped. </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="item" id="item_24">
                                                        <div class="item_content">
                                                            <div class="item_indent">
                                                                <a href="#">
                                                                    <time datetime="2014-05-02 20:00" class="item_published"> <span>02</span> <span>05</span> <span>14</span> </time>
                                                                    <div class="item_inner">
                                                                        <h6 class="item_title item_title__"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Nandni</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">Parik</span></h6>
                                                                        <div class="item_introtext"> My stay was very pleasant. All staff members are professional .Restaurant is well equipped. </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div id="carousel_91_pag" class="caroufredsel_pagination"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div id="carousel_91_prev" class="caroufredsel_prev"><i class="fa fa-chevron-left"></i></div>
                                        <div id="carousel_91_next" class="caroufredsel_next"><i class="fa fa-chevron-right"></i></div>
                                        <div>
                                            <div id="ShowContent">
                                                <br />
                                                <h1>Welcome to Shubham Hotel, One of the Best Budget Hotels in Jaipur </h1> Shubham Hotel in Jaipur is among one of the best 3 star hotels in Jaipur. The Hotel is known for its proximity to various prime locations of Jaipur. The Shubham Hotel in Jaipur is one of the finest budget hotels Jaipur has to offer, boasting wonderful 3 star hotel accommodation in Jaipur, Rajasthan. Whether you are coming to Jaipur by a flight, bus or train, the hotel is in your reach as it approximately takes 30 minutes from International Airport, 10 minutes from Jaipur Railway station, 5 minutes from nearby Bus Stand to reach Hotel Shubham in Jaipur by Peppermint. - <a style="cursor: pointer;">SEE MORE</a>
                                            </div>
                                            <div id="HideContent" style="display:none;">

                                                Here, you can relax yourself in our elegantly designed, luxurious and air-conditioned rooms and suits which are well equipped with modern facilities. Here each room receives ample sunlight and is designed to give you best of the comforts. You can access free Wi-Fi connectivity to work on your laptops or mobiles and communicate with your friends and relatives, send them pictures of beautiful pink city and off course your booked room too. The quality services offered in the rooms, restaurant & hospitality by the staff make Shubham Hotel Jaipur by peppermint one of the finest 3 star hotels in Jaipur. We also provide mouth-watering delicacies at our dining area. For shopaholics and families, Hotel Shubham is the best option as the shopping areas and famous markets of Jaipur are not far away to the hotel. You can use a taxi service to reach the famous markets.
                                                <div class="clr"></div>
                                                <br />
                                                <h2>Experience a Brilliant Stay at 3 Star Hotels in Jaipur near Railway Station</h2> If you are looking for a Jaipur hotels near railway station then give us a chance to offer you the best services. At Hotel Shubham, personal touch and professionalism go hand in hand to cater to the expectations and needs of ever-demanding clientele. The hotel is closely located to several well-known tourist attractions like Hawa Mahal, City Palace, and Jantar Mantar. If you are looking for hotels in Jaipur near railway station, Hotel Shubham is the best choice because this budget hotel in Jaipur, India suits all tastes whether you are coming for a business meeting, family holiday, exams or any other reason. It is one of the best Jaipur hotels near railway station and bus stand. As one of the best budget hotels in Jaipur, we have the quality in every sphere of our suites. It is a women-friendly and senior-friendly hotel which ensures proper security and comfort. A stay at Shubham hotel in Jaipur can be one of the most amazing experiences of your stay in Jaipur hotels you have ever visited and that too in your budget.
                                                <div class="clr"></div>
                                                <br />
                                                <h2>Hotel Shubham - Peppermint Hotel Jaipur</h2> Hotel Shubham is passionately designed and family managed hotel which has open and lush green surroundings, well-maintained and clean rooms, hygienic food and elegant infrastructure. We have modern facilities with relaxed atmosphere and friendly staff. Here, you are rest assured to get homely feeling when it comes to relax and unwind at your room. Hotel Shubham in Jaipur by Peppermint offers spacious and comfortable accommodation to its customers with best of the dining facility at affordable rates in Jaipur. You can read customer reviews too and can make an enquiry anytime to our staff for any of your query.
                                                <br />
                                                <br /> We provide a widest range of accommodation options and we are known for having well-appointed and spacious luxurious rooms that are designed to provide a home away from your home, whether you are a leisure or business traveler. Travel around Jaipur city, the capital of the Indian state of Rajasthan in Northern India, founded by Maharaja Jai Singh II. Explore Jaipur city which is popularly known as the pink city and its culture with your stay in Jaipur for at least a week. Make your business trip or family trip more enjoyable with a pleasant stay at Shubham Hotel in Jaipur.
                                                <div class="clr"></div>
                                                <br />
                                                <h3>Contact us to Book Hotel Rooms or Restaurant Table today!</h3> At Shubham hotel in Jaipur, Rajasthan our team is committed to provide the best hospitality service and experience of brilliant stay to all our customers. Contact us today for hotel room bookings or enquiry by calling us on any of the numbers +919664065796 (M), +91 8890089199 (M), emailing us on shubham@gmail.com or alternatively you can simply fill out our enquires form or contact form.
                                                <br />
                                                <a style="cursor: pointer;">COLLAPSE</a>
                                            </div>
                                        </div>
                                        <script>
                                            jQuery(function($) {
                                                var carousel = $("#caroufredsel_91")
                                                carousel.carouFredSel({
                                                    responsive: true,
                                                    width: '100%',
                                                    items: {
                                                        width: 380,
                                                        height: 'variable',
                                                        visible: {
                                                            min: 1,
                                                            max: 4
                                                        },
                                                        minimum: 1
                                                    },
                                                    scroll: {
                                                        items: 1,
                                                        fx: "scroll",
                                                        easing: "swing",
                                                        duration: 500,
                                                        queue: true
                                                    },
                                                    auto: false,
                                                    next: "#carousel_91_next",
                                                    prev: "#carousel_91_prev",
                                                    swipe: {
                                                        onTouch: true
                                                    }
                                                });
                                                $(window).load(function() {
                                                    setTimeout(function() {
                                                        carousel.trigger('configuration', {
                                                            reInit: true
                                                        })
                                                    }, 100);
                                                });
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mainbottom-4">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable newsletter  span12">
                                    <div class="module_container">
                                        <header>
                                            <h1 class="moduleTitle "><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Newsletter</span></h1>
                                        </header>
                                        <div class="acymailing_modulenewsletter" id="acymailing_module_formAcymailing77761">
                                            <div class="acymailing_fulldiv" id="acymailing_fulldiv_formAcymailing77761" style="text-align:left">
                                                <form id="formAcymailing77761">
                                                    <div class="acymailing_module_form">
                                                        <table class="acymailing_form">
                                                            <tr>
                                                                <td class="acyfield_email acy_requiredField">
                                                                    <input id="user_email_formAcymailing77761" class="inputbox" type="text" name="" style="width:100%" value="" title="Email" />
                                                                </td>
                                                                <td class="acysubbuttons">
                                                                    <input class="button subbutton btn btn-primary" type="submit" value="" name="Submit" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="push"></div>
            </div>
        </div>
        <div id="footer-wrapper">
            <div class="footer-wrapper-inner">
                <div id="bottom">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable center contacts  span12">
                                    <div class="module_container">
                                        <div class="mod-newsflash-adv mod-newsflash-adv__center contacts cols-3" id="module_133">
                                            <div class="row-fluid">
                                                <article class="span4 item item_num0 item__module  " id="item_99">
                                                    <div class="item_content"> <i class="fa fa-mobile"></i>
                                                        <h1 class="item_title item_title__center contacts"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Phone</span></h1>
                                                        <div class="item_introtext"> +91 9664065796
                                                            <p>+91 8890089199 </p>
                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span4 item item_num1 item__module  " id="item_100">
                                                    <div class="item_content"> <i class="fa fa-location-arrow"></i>
                                                        <h1 class="item_title item_title__center contacts"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Address</span></h1>
                                                        <div class="item_introtext"> Station Road, Near Chandpole Police Line,
                                                            <p>Jobner Bagh, Jaipur. 302006</p>
                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                                <article class="span4 item item_num2 item__module  lastItem" id="item_101">
                                                    <div class="item_content"> <i class="fa  fa-envelope"></i>
                                                        <h1 class="item_title item_title__center contacts"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first item_title_part_last">Email</span></h1>
                                                        <div class="item_introtext"> <a href="#">shubham@gmail.com</a> </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </article>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="footer">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                                <div class="moduletable   span12">
                                    <div class="module_container">
                                        <div class="mod-menu mod-menu__social">
                                            <ul class="nav menu social">
                                                <li class="item-148">
                                                    <a class="fa fa-facebook" href="#" title="Facebook"></a>
                                                </li>
                                                <li class="item-150">
                                                    <a class="fa fa-twitter" href="#" title="Twitter"></a>
                                                </li>
                                                <li class="item-152">
                                                    <a class="fa fa-instagram " href="#" title="Instagram"></a>
                                                </li>
                                                <li class="item-151">
                                                    <a class="fa fa-pinterest" href="#" title="Pinterest"></a>
                                                </li>
                                                <li class="item-149">
                                                    <a class="fa fa-google-plus" href="#" title="Google+"></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="copyright" role="contentinfo">
                    <div class="row-container">
                        <div class="container">
                            <div class="row">
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
<div id="back-top"> <a href="#"><span></span> </a> </div>
<div id="modal" class="modal hide fade loginPopup">
  <div class="modal-hide"></div>
  <div class="modal_wrapper">
    <button type="button" class="close modalClose">×</button>
    <div class="moduletable ">
      <div class="modal-header">
        <header>
          <h3 class=""style="color:white;"><span class="item_title_part_0 item_title_part_odd item_title_part_first_half item_title_part_first">Login</span> <span class="item_title_part_1 item_title_part_even item_title_part_second_half item_title_part_last">form</span></h3>
        </header>
      </div>
      <div class="modal-body">
        <div class="lr_social_login_basic_150">
          <div class="lr_providers">
            <div class="lr_icons_box">
              <div> <a class="lr_providericons lr_facebook" href="#"  rel="" title="Login with Facebook">Login with Facebook</a> </div>
              <div> <a class="lr_providericons lr_google" href="#">Login with Google +</a> </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="js/jquery.stellar.min.js"></script> 
<script>
      jQuery(function($) {
        $(window).load(function(){
          $.stellar({responsive: true,horizontalScrolling: false});
        });
      });
    </script> 
<script src="js/jquery.simplr.smoothscroll.min.js"></script> 
<script src="js/jquery.BlackAndWhite.min.js"></script> 
<script>
      ;(function($, undefined) {
      $.fn.BlackAndWhite_init = function () {
        var selector = $(this);
        selector.find('img').not(".slide-img").parent().BlackAndWhite({
          invertHoverEffect: ".$this->params->get('invertHoverEffect').",
          intensity: 1,
          responsive: true,
          speed: {
              fadeIn: ".$this->params->get('fadeIn').",
              fadeOut: ".$this->params->get('fadeOut')." 
          }
        });
      }
      })(jQuery);
      jQuery(window).load(function($){
        jQuery('.item_img a').find('img').not('.lazy').parent().BlackAndWhite_init();
      });
    </script> 
<script src="js/jquery.fancybox.pack.js"></script> 
<script src="js/jquery.fancybox-buttons.js"></script> 
<script src="js/jquery.fancybox-media.js"></script> 
<script src="js/jquery.fancybox-thumbs.js"></script> 
<script src="js/jquery.pep.js"></script> 
<script src="js/jquery.vide.min.js"></script> 
<script src="js/autosize.min.js"></script> 
<script src="js/scripts.js"></script>
</body>
</html>
            <script>
                $('#ShowContent a').click(function() {
                    $(this).hide();
                    $('#HideContent').slideToggle('slow', function() {});

                });
                $('#HideContent a').click(function() {
                    $('#HideContent').slideToggle('slow', function() {
                        $('#ShowContent a').show();
                    });
                });
            </script>

    <%  
    }
%>
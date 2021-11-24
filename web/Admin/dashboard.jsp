<%
    String email = (String)session.getAttribute("username");
if(email != null)
    {
    %>
    <html>
<head>
<title>Admin Dashboard</title>
<link rel="stylesheet" href="css/style.css"/>
<script src="jsfiles/jquery.js" ></script>
<script src="jsfiles/script.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
  $("#New_joining_letter").click(function(){
  
    $("#naveFrame").attr('src','New_joining_letter.html');
  });
  $("#new_registration").click(function(){

    $("#naveFrame").attr('src','new_registration.html');
  });
   $("#reciepts_fees").click(function(){
    $("#naveFrame").attr('src','new_reciepts_fees.html');
  });
   $("#search_by_reg").click(function(){
    $("#naveFrame").attr('src','search_by_reg.html');
  });
   $("#pic").click(function(){
    $("#naveFrame").attr('src','profile.jsp');
  });
});


</script>
</head>
<body>
<div class="wrapper">
  <div class="header">
    <div class="logo">
     <a href="Dashboard.jsp"> <h2 style="color:#333;">Dashboard<span style="color:rgb(233, 79, 49);">Panel</span></h2></a>
    </div>
    <div class="search"></div>
    <div class="clear"></div>
  </div>
  <!--header close-->
  <div class="container">
    <div class="container1">
      <div id='cssmenu'>
        <ul>
          <li class='active'><a href='dashboard.jsp'><span>Dashboard</span></a></li>
          <li class='has-sub'><a  ><span>Condidate Information</span></a>
            <ul>
              <li><a href='userview.jsp' target="demo" id="new_registration"><span>Registered Candidates</span></a></li>
              
            </ul>
          </li>
          <li class='has-sub'><a href='#'><span>User Contact</span></a>
            <ul>
                <li class='last'><a href='contact.jsp' id="reciepts_fees" target="demo"><span>View User Query</span></a></li>
              
              
            </ul>
          </li>
          <li class='has-sub'><a href='#'><span>Gallary</span></a>
            <ul>
                <li><a href='addimage.jsp' id="New_joining_letter" target="demo"><span>Add Image</span></a></li>
                
                <li><a href='viewgallery.jsp' id="New_joining_letter" target="demo"><span>Show Image</span></a></li>
            </ul>
          </li>
          <li class='has-sub'><a href='#'><span>User Reservation</span></a>
            <ul>
                <li><a href='orders.jsp' id="New_joining_letter" target="demo"><span>View Booking</span></a></li>
            </ul>
          </li>
          <li class='has-sub'><a href='#'><span>Admin Profile</span></a>
            <ul>
                <li><a href='adminprofile.jsp' target="demo" id="New_joining_letter"><span>View Admin Profile</span></a></li>
                <li><a href='changepass.jsp' target="demo" id="New_joining_letter"><span>Change Password</span></a></li>

            </ul>
          </li>
          <li class='has-sub'><a href='logout.jsp'><span>Logout</span></a>
          </li>
        </ul>
      </div>
    </div>
    <div class="container2">
        <iframe id="naveFrame" src="nav_dashboard.jsp" width="100%" height="1480" frameborder="no" scrolling="no" name="demo"> </iframe>
    </div>
    <div class="clear"></div>
  </div>
  <!--container close-->
  <div class="footer">
    <div class="footer_left"></div>
    <div class="footer_right">
      <p id="jay">Admin Panel</p>
    </div>
    <div class="clear"></div>
  </div>
</div>
<!--wrapper close-->

</body>
</html>
<%
}
else
    {

response.sendRedirect("index.jsp");
}

%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>

<%
    String email = (String)session.getAttribute("username");
if(email != null)
    {
    %>
   
<html>
<head>
<title>Change Admin Password</title>
<style>
body {
	background:#EDECEB;
}
.wrapper {
	Width:100%;
	margin:0px;
	padding:0px;
}
.logo_name {
	width:400px;
	margin:auto;
	box-shadow: 0px 0px 2px 2px #CCC;
	margin-top:170px;
	background:#FFFFFF;
}
a {
	text-decoration:none;
}
.wrapperr {
	width:400px;
	margin:auto;
	box-shadow: 0px 0px 2px 2px #CCC;
	margin-top:30px;
	background:#FFFFFF;
}
.from_container {
	width:340;
	margin:auto;
	padding: 30px 0px 1px;
}
.frm {
	width:250px;
	height:35px;
	border:1px solid #CCC;
	border-radius:4px;
	margin:10px;
	padding-left:15px;
}
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
.frmm:hover {
	color:#FFF;
	cursor:pointer;
}
h1 {
	text-align:center;
	padding:10px 0px;
	color:black;
	text-shadow: 1px 1px #666;
}
span {
	padding-left:4px;
	color:#666;
}
</style>
</head>

<body>
<div class="wrapper">
  <div class="logo_name">
    <h1> Change Admin <span style="color:rgb(233, 79, 49);">Password</span></h1>
  </div>
  <div class="wrapperr">
    <div class="from_container">
      <form action="afterchangepass.jsp" name="myForm" method="post"   >
        <table>
          <tr>
            <td style="color:#666;">Admin Email</td>
            <td><input type="text" name="email" placeholder="Enter Your Email"  class="frm"/></td>
          </tr>
          <tr>
            <td style="color:#666;">New Password</td>
            <td><input type="password" name="npass" placeholder="Enter Your Password "  class="frm"/></td>
          </tr>
                  
          <tr>
            <td></td>
            <td align="right"><input type="submit"  value="Update" class="frmm" onSubmit="return login()"/></td>
          </tr>
        </table>
      </form>
    </div>
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
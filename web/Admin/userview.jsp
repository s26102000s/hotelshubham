<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<%
    String email = (String)session.getAttribute("username");
if(email != null)
    {
    %>
<%
config c =new config();
   Connection con=c.getcon();
String Query= "select * from register";

   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);

 %>
<html>
<head>
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
<title></title>
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
<body>
<div class="wrapper_search">
<div class="header_search">
    <div class="logo_search">
   <h1 style="color:#000;margin-top:20px">Registered Users <span style="color:rgb(233, 79, 49);"></span></h1>
    </div>
    
    <div class="clear"></div>
</div><!--header close-->
<div class="srch">

</div>
<br/>
<div class="tab">
<table width="960px" height="30px" cellpadding="0" cellspacing="0" border="1" align="center">
<tr>
<th>S.No</th>
<th>First Name</th>
<th>Last Name</th>
<th>User Email</th>
<th>image</th>
<th>Action</th>
</tr>
<%
 int i = 1;
while(rs.next())
    {

    String sr = rs.getString("fname");
    String em = rs.getString("lname");
    String cot = rs.getString("email");
    String cor = rs.getString("pic");
    
    int id = rs.getInt("id");

%>
<tr>
<td><% out.print(id); %></td>
<td><% out.print(sr); %></td>
<td><% out.print(em); %></td>
<td><% out.print(cot); %></td>
<td><% out.print(cor); %></td>

<td><a href="userdelete.jsp?var=<%=id%>"><input type="submit"  value="Delete" class="frmm" /></a></td>
</tr>
<%
i++;
}
%>
</table>

</div>
</div>

</body>
</html>
<%
}
else
    {

response.sendRedirect("index.jsp");
}

%>
<%@page contentType="text/html" pageEncoding="UTF-8" import= "java.sql.*,connect.*"%>
<%@include file="header.jsp" %>
<form method="post" action="afterreg.jsp" name="login">

    <fieldset style="background-color: #99ff99">
        <legend>Sign up form</legend>
            <fieldset style="background-color: #66ffff"> 
                <legend>Personal info.</legend>
             <table>
             <tr>
                 <td>First Name</td>
                 <td><input type = "text" placeholder="First Name" name="fname" ></td>
             </tr>
             <tr>
                <td>Last Name</td>
                <td><input type="text" placeholder="Last Name" name="lname"></td>
             </tr>
             <tr>
                <td>Email</td>
                <td><input type="email" name="email"/> </td>
             </tr>
             <tr>
                <td>Password</td>
                <td><input type="password" placeholder="*****" name="password"></td>
             </tr>

             </table>
              </fieldset><br/>
                  <input type="Submit" value="Submit">
    </fieldset>
</form>
        <%@include file="footer.jsp"%>
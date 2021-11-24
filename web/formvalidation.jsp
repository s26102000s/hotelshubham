<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String email = (String)session.getAttribute("email");
if(email != null)
    {
        
    %>


<%@include file="header.jsp" %>
<section class="register" style="color: black;">
    <from>
    <div class="container-fluid">
        <div id="main">
            <div id="form_layout">
                <form  class="form"  action="afterbooking.jsp" name="bookroom" method="post">
                    <p id="head"></p><br>
                    <table border="5px solid yellow" style="padding: 10px;">
                        
                        <div class="form-group">
                            <tr>
                                <td><label class="control-label" for="uid">&nbsp;User-Id</label></td>
                                <td><input type="text" class="form-control" placeholder="Enter Id" name="user_id" id="name"><br><p id="a1"></p></td>
                            </tr>
                        </div>
                        <div class="form-group">
                            <tr>
                                <td><label class="control-label" for="name">&nbsp;Name</label></td>
                                <td><input type="text" class="form-control" placeholder="Enter Name" name="name" id="name"><br><p id="a1"></p></td>
                            </tr>
                        </div>
                        
                       
                        <div class="form-group">
                           <tr>
                            	<td ><label class="control-label" for="Address">&nbsp;Address</label></td>
                            	<td><input type="text" class="form-control" placeholder="Enter Address" name="add" id="add"><br><p id="a3"></p></td>
                            </tr>
                        </div>
                        <div class="form-group">
                            <tr>
                                <td><label class="control-label" for="zip">&nbsp;Zip</label></td>
                                <td><input type="text" class="form-control" placeholder="Enter zip code" name="zip" id="zip"><br><p id="a13"></p></td>
                            </tr>
                        </div>
                        <div class="form-group">
                            <tr>
                            	<td><label class="control-label" for="id">&nbsp;ID proof</label></td>
                            	<td>
                            		<select id="idproof" class="form-control" name="idproof">
                            			<option>--select--</option>
                            			<option>aadhar card</option>
                            			<option>pan card</option>
                            			<option>others</option>
                            		</select><p id="a4"></p>
                                        <input type="text" id="idno" class="form-control" name="idno" placeholder="enter id no"><br><p id="a5"></p>
                            	</td>
                            </tr>
                        </div>
                        <div class="form-group">
                            <tr>
                            	<td><label class="control-label" for="gender">&nbsp;Gender</label></td>
                            	<td>
                            		<select id="gender" class="form-control" name="gender">
                                        <option>--select--</option>
                                        <option>Male</option>
                                        <option>FeMale</option>      
                                    </select>
                                    <br><p id="a6"></p>
                            	</td>
                            </tr>
                        </div>
                        <div class="form-group">
                            <tr>
                            	<td><label class="control-label" for="date">&nbsp;date of check-in</label></td>
                                <td><input type="date" id="cin" name="cin" class="form-control" min="2019-07-24" max="2019-10-24"><br><p id="a7"></p></td>
                            </tr>
                        </div>
                        <div class="form-group">
                            <tr>
                            	<td><label class="control-label" for="date">&nbsp;date of check-out</label></td>
                                <td><input type="date" id="cout" name="cout" class="form-control" min="2019-07-24" max="2019-10-24"><br><p id="a8"></p></td>
                            </tr>
                        </div>
                        <div class="form-group">
                            <tr>
                                <td><label class="control-label" for="no_of_guest">&nbsp;Number of guest</label></td>
                                <td><input type="text" class="form-control" placeholder="Enter number of guest" name="guest" id="guest"><br><p id="a14"></p></td>
                            </tr>
                        </div>

                        <div class="form-group">
                            <tr>
                                <td><label class="control-label" for="mobile_no">&nbsp;Mobile no.</label></td>
                                <td><input type="text" class="form-control" placeholder="Enter mobile number" name="mobile_no" id="mobile"><br><p id="a12"></p></td>
                            </tr>
                        </div>
                        <fieldset border="2px solid black">
                        <div class="form-group">
                            <tr>
                				<td><label class="control-label" for="room">&nbsp;select room</label></td>
                				<td>
                                                    <select id="room" class="form-control" name="room">
                						<option>--select--</option>
                						<option>single room</option>
                						<option>double room</option>
                						<option>triple room</option>
                						<option>sweet room</option>
                						<option>hall</option>
                						<option>doormatry</option>
                					</select><p id="a9"></p>
                                                        <select id="p1" class="form-control" name="p1">
                						<option>--select--</option>
                                                                <option>A/C</option>
                						<option>NON-A/C</option>
                					</select><br><p id="a10"></p>
                				</td>
                			</tr>
                        </div>
                    </fieldset>
                         <div class="form-group">
                            <tr>
                                <td><label class="control-label" for="msg">&nbsp;Message</label></td>
                                <td><input type="text" class="form-control" placeholder="Enter your Requirements" name="msg" id="msg"><br><p id="a16"></p></td>
                            </tr>
                        </div>
                    </table>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="checkbox">
                                    <label><input type="checkbox" id="box" required="require" name="remember">Remember me</label><br><p id="a11"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <input type="submit"  value='Book'><br>
                            </div>
                        </div>
                    </div>
                </form>
           </div>
       </div>
    </div>
    </from>
</section>
<br/>

<%@include file="footer.jsp" %>


<%
}
else
    {

response.sendRedirect("index.jsp");
}

%>
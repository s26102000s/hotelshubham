<?php
session_start();
include ('connect.php');
include('header.php');
if(isset($_SESSION['vendor']))
{
?>
 
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Add Student Details</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-12 col-xs-12">
          <!-- small box -->
        
 <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">About Us</h3>
            </div>
            <div class="box-body">
              <form method="post" enctype="multipart/form-data">
             
           
              <div class="input-group">
                <span class="input-group-addon">Full Name</span>
                <input type="text" class="form-control" name="name">
              </div><br>
              <div class="input-group">
                <span class="input-group-addon">Email Address</span>
                <input type="text" class="form-control" name="email">
              </div><br>
              <div class="input-group">
                <span class="input-group-addon">Contact Number</span>
               
                <input type="text" class="form-control" name="contact">
              </div><br>
              <div class="input-group">
                <span class="input-group-addon">College Name</span>
                <select name="college">
                  <option >-----Select College Name-----</option>
                  <option >JECRC University</option>
                  <option >Galgotia University</option>
                  <option >SRM University</option>
                  <option >Christ Church College</option>
                  <option >B.J. Medical college</option>
                
                </select>
              </div><br>
              <div class="input-group">
                <span class="input-group-addon">Course Name</span>
                <select name="course">
                  <option >-----Select Course-----</option>
                  <option >BA</option>
                  <option >BBA</option>
                  <option >BCA</option>
                  <option >B.Com</option>
                  <option >B.Sc</option>
                  <option >MA</option>
                  <option >MBA</option>
                  <option >MCA</option>
                  <option >M.Com</option>
                   <option >M.Sc</option>
                </select>
              </div><br>
              <div class="input-group">
                <span class="input-group-addon">10th Marksheet</span>
                <input type="file" class="form-control" name="tenth" >
              </div><br>
              <div class="input-group">
                <span class="input-group-addon">12th Marksheet</span>
                <input type="file" class="form-control" name="twelfth" >
              </div><br>
              <div class="input-group">
                <span class="input-group-addon">Aadhar Number</span>
                <input type="text" class="form-control" name="aadhar">
              </div><br>
               <div class="input-group">
                <span class="input-group-addon">Profile Picture</span>
                <input type="file" class="form-control" name="photo" >
              </div><br>
               <div class="input-group">
                <span class="input-group-addon">Signature</span>
                <input type="file" class="form-control" name="sign" >
              </div><br>
              <div class="input-group">
                <input type="submit" class="form-control btn btn-primary" name="add" value="Add Student Details">
              </div>
            </form>
              <?php 
               if(isset($_POST['add']))
               {
                   $name=$_REQUEST['name'];
                   $email=$_REQUEST['email'];
                   $contact=$_REQUEST['contact'];
                   $college=$_REQUEST['college'];
                   $course=$_REQUEST['course'];

                   $tenth=$_FILES['tenth']['name'];
                   $pathten='documents/';

                   $twelfth=$_FILES['twelfth']['name'];
                   $pathtwe='documents/';

                   $aadhar=$_REQUEST['aadhar'];

                   $photo=$_FILES['photo']['name'];
                   $pathpic='documents/';

                   $sign=$_FILES['sign']['name'];
                   $pathsign='documents/';
        
              
              $sql="insert into studentdetail (name,email,contact,college,course,tenth,twelfth, aadhar,photo,sign,status) values('$name','$email','$contact','$college','$course','$tenth','$twelfth','$aadhar','$photo','$sign', 'DUE')";
              $res=mysqli_query($con,$sql);
    if($res)
    {
      move_uploaded_file($_FILES['tenth']['tmp_name'], $pathten.$tenth);
     move_uploaded_file($_FILES['twelfth']['tmp_name'], $pathtwe.$twelfth);
     move_uploaded_file($_FILES['photo']['tmp_name'], $pathpic.$photo);
     move_uploaded_file($_FILES['sign']['tmp_name'], $pathsign.$sign);
      echo "<script>alert('Your details added successfully!');</script>";
    }
    else
    {
      echo "<script>alert('Failed to add your details!');</script>";
    }
                
              
             }
              ?>
              <br>
              <!-- /input-group -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
        <!-- ./col -->
  
      </div>
      <!-- /.row -->
    

    </section>
    <!-- /.content -->
  
  </div>
  <!-- /.content-wrapper -->
 <?php include('footer.php');
 }
else{
  echo "
<script>
alert('You are not aurthorized to access this page.');
window.location.href='index.php';
</script>
  ";
}

 ?>









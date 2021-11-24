<?PHP 
session_start();
if(isset($_SESSION['vendor']))
{
INCLUDE('header.php');?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Student details
      </h1>
      <ol class="breadcrumb">
        <li><a href="panel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active"> View Student Details</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Manage Student Details</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              
      <form method="post">
        <?php
    include('connect.php');
    $id=$_REQUEST['id'];
     $sql="select * from studentdetail where id='$id'";
     $res=mysqli_query($con,$sql);
     while($row=mysqli_fetch_array($res))
       {
     ?>
        <table id="example1" class="table table-bordered table-striped">
          <tr>
            <td>Name</td>
            <td><input type="text" name="name" value="<?php echo $row['name']; ?>" required/></td>
          </tr>
          <tr>
            <td>Email Address:</td>
            <td><input type="text" name="email" value="<?php echo $row['email']; ?>" required/></td>
          </tr>
          <tr>
            <td>Contact Number</td>
            <td><input type="text" name="contact" value="<?php echo $row['contact']; ?>" required/></td>
          </tr>
          <tr>
            <td>College</td>
            <td><input type="text" name="college" value="<?php echo $row['college']; ?>" required/></td>
          </tr>
          <tr>
            <td>Course</td>
            <td><input type="text" name="course" value="<?php echo $row['course']; ?>" required/></td>
          </tr>
          <tr>
            <td>10th Marksheet</td>
            <td><input type="file" name="tenth" value="<?php echo $row['tenth']; ?>" required/></td>
          </tr>
          <tr>
            <td>12th Marksheet</td>
            <td><input type="file" name="twelfth" value="<?php echo $row['twelfth']; ?>" required/></td>
          </tr>
           <tr>
            <td>Aadhar Number</td>
            <td><input type="text" name="aadhar" value="<?php echo $row['aadhar']; ?>" required/></td>
          </tr>
          <tr>
            <td>Photo</td>
            <td><input type="file" name="photo" value="<?php echo $row['photo']; ?>" required/></td>
          </tr>
          <tr>
            <td>Signature</td>
            <td><input type="file" name="sign" value="<?php echo $row['sign']; ?>" required/></td>
          </tr>
          <tr>
            <td></td>
            <td align="right"><input type="submit" name="update"  value="Update" class="frmm"/></td>
          </tr>
        </table>
        <?php
      }
     ?>
     <?php
    if(isset($_POST['update']))
  {
  include('connect.php');
  $id=$_REQUEST['id'];
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
  
  $sql="update studentdetail set name='$name',email='$email',contact='$contact',college='$college',course='$course', tenth='$tenth',twelfth='$twelfth',aadhar='$aadhar',photo='$photo',sign='$sign'";
  $res=mysqli_query($con,$sql);
    if($res>=1)
    {
       move_uploaded_file($_FILES['tenth']['tmp_name'], $pathten.$tenth);
     move_uploaded_file($_FILES['twelfth']['tmp_name'], $pathtwe.$twelfth);
     move_uploaded_file($_FILES['photo']['tmp_name'], $pathpic.$photo);
     move_uploaded_file($_FILES['sign']['tmp_name'], $pathsign.$sign);
      echo "<script>
        alert('details updated succesfully...');
        window.location.href='viewstudent.php';
        </script>";
    }
    else
    {
      echo "<script>
        alert('Error Occured in Updation, Retry!');
        window.location.href='viewstudent.php';
        </script>";
    }
  }
?>
<?php
}
?>
      </form>
    </div>
  </div>
</div>
</div>
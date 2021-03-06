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
       View Student Details        
      </h1>
      <ol class="breadcrumb">
        <li><a href="panel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">View Student Details </li>
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
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>ID</th>
                  <th>Full Name</th>
                  <th>Email Address</th>
                  <th>Contact Number</th>
                  <th>College</th>
                  <th>Course</th>
                  <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <?php 
                include('connect.php');
                $query=mysqli_query($con,"select * from studentdetail");
                while($row=mysqli_fetch_array($query))
                {
                ?>
                <tr>
                  <td><?php echo $row['id'];?></td>
                  <td><?php echo $row['name'];?></td>
                  <td><?php echo $row['email'];?></td>
                  <td><?php echo $row['contact'];?></td>
                  <td><?php echo $row['college'];?></td>
                  <td><?php echo $row['course'];?></td>
                  <td><?php echo $row['status'];?></td>
                  <td><a href="editstudent.php?id=<?php echo $row['id'] ?>"><button Class="btn btn-danger btn-sm">EDIT DETAILS</button></a></td>
                   <td><a href="deletestudent.php?id=<?php echo $row['id'] ?>"><button Class="btn btn-danger btn-sm">DELETE</button></a></td>
                 </tr>
                <?php } ?>
                </tbody>
                
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      
    </div>
    <strong>Copyright &copy; 2018 <a href="#">CA Agarwal Rohit Ruwatia</a>.</strong> All rights
    reserved.
  </footer>

<!-- ./wrapper -->



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


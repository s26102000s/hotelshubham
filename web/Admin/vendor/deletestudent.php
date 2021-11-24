<?php 
include('connect.php');
$id=$_REQUEST['id'];
mysqli_query($con,"delete from studentdetail where id='$id'");
echo "<script>
window.location.href='viewstudent.php';
</script>";
?>
<?php

session_start();
session_destroy();
echo "
<script>
alert('Logged out Successfully.');
window.location.href='index.php';
</script>
";
?>
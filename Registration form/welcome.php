<!DOCTYPE html>
<html lang="en">
<head>
    <title>welcomepage</title>
</head>
<body>
    <center>
<br><br><br>
<?php
session_start();
echo "Welcome ",$_SESSION['name'];
?>  
</center>
</body>
</html>

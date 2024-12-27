<html>
  <head>
    <center>Login form</center>
  </head>
  <body>
    <form action="" method="post">
      <table border="2">
        <tr>
          <td><label>Email: </label></td>
          <td>
            <input type="email" name="email" />
          </td>
        </tr>
        <tr>
          <td><label>Password </label></td>
          <td>
            <input type="password" name="password" />
          </td>
        </tr>
        <tr><td><input type="submit" value="submit" name="login">
      </table>
    </form>

<?php
session_start();
if(isset($_POST['login'])){
    $email=$_POST['email'];
    $password=$_POST['password'];
    $conn=mysqli_connect('localhost','root','','test');
    if(!$conn){
        die("connection failed".mysqli_connect_error());
    }
    else{
        $query="select * from sample where email='$email' and password='$password'";
        $q=mysqli_query($conn,$query);
    
        if(mysqli_num_rows($q)>0){ $row=mysqli_fetch_assoc($q);
    $_SESSION["name"]=$row['name']; header('Location:welcome.php'); exit(); }
    else{ echo "failed"; }mysqli_close($conn);} } ?>
  </body>
</html>

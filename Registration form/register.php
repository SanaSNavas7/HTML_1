<html>
    <head>
       <center> Registration Form</center>
    </head>
    <body>
        <center>
            <form action="" method="POST">
                <table border="1">
                    <tr>
                        <td>
                            Name:<input type="text" name="name">required<br>
                        </td></tr>
                        <tr><td>
                            Email:<input type="email" name="email">required<br>
                        </td></tr>
                        <tr><td>
                            Password:<input type="password" name="password">required<br>
                        </td></tr>

                    </tr>
                    <tr><td><input type="submit" name="register" value="register"></td></tr>
                    <tr><td>Already registered ? <a href="login.php">Login</a></td></tr>
                </table>


            </form>
            <?php
            if(isset($_POST['register'])){
                $name=$_POST['name'];
                $email=$_POST['email'];
                $password=$_POST['password'];
                $conn=mysqli_connect('localhost','root','','db1');
                if(!$conn){
                    die("connection failed". mysqli_connect_error());

                }
                else{
                    $q="insert into table1(name,email,password) values('$name','$email','$password')";
                    $query=mysqli_query($conn,$q);
                    if($query){
                        echo "Registered successfully";
                    }
                    else{
                        echo "Cant register";
                    }
                    mysqli_close($conn);

                }
            }
            ?>
        </center>
        
    </body>
</html>

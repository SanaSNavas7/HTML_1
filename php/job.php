<html>
    <head></head>
    <body>
        <h2>Registration form</h2>
        <form action="" method="post">
            Name:<input type="text" name="name" required><br>
            Email:<input type="text" name="email" required><br>
            Password:<input type="text" name="password" required><br>
            Confirm Password:<input type="text" name="repassword" required><br>
        </form>
        <?php
        $conn=mysqli_connect('localhost','root','','test');
        if(!$conn){
            die("Connection failed".mysqli_connect_error());

        }else{
            if(isset($_POST)){
                echo "connected successfully";
                $name=$_POST['name'];
                $email=$_POST['email'];
                $password=$_POST['password'];
                $confirmpass=$_POST['repassword'];
                if($password==$confirmpass){
                    echo "registered successfully";
                }
                else{
                    echo "can't register";
                }

            }
        }
        mysqli_close($conn);
        ?>
    </body>
</html>
<html>
    <head>Registration form</head>
    <body>
        <form action="desk.php" method="post">
            Name: <input type="text" name="name">required<br>
            E-mail: <input type="email" name="email">required<br>
            Password: <input type="password" name="password">required<br>
            Re-enter Password: <input type="password" name="repassword">required<br>
            <input type="submit" value="submit">
        </form>
        <?php
        $conn=mysqli_connect('localhost','root','','test');
        if(!$conn){
            die("connnection failed".mysqli_conn_error());

        }
        else{
            if(isset($_POST))
            {
                $name=$_POST['name'];
                $password=$_POST['password'];
                $email=$_POST['email'];
                $repassword=$_POST['repassword'];
                
            
        if($password===$repassword){
            
            $query="insert into sample(name,email,password) values('$name','$email','$password')";

        }
        if (mysqli_query($conn, $query)){
            echo "Registered successfully";
        }
        else{
            echo "error ".mysqli_error($conn);
        }
            
        }}
        mysqli_close($conn);
        ?>
    </body>
</html>
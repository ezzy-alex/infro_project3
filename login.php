<?php
session_start();

function userLogin($emailAddress,$password)
{
    if(!(CheckLoginInDB($emailAddress,$password)))
    {
        echo "Login Failed";
        return false;
    }
}

function CheckLoginInDB($emailAddress,$password)
{
    $connect = new PDO('mysql:host=localhost;dbname=cheapomail;', 'root', 'password');
    $checkLoginQuery = "SELECT `ID`, `firstname`, `lastname` FROM `Users` WHERE `username`='$emailAddress'";
    $stmt = $connect->query($checkLoginQuery);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($result)
    {
        $_SESSION["user_id"] = $result['ID'];
        $_SESSION["firstname"] = $result['firstname'];
        $_SESSION["lastname"] = $result['lastname'];
        header("Location: ../email_view.php");
    }
    else 
    {
        return false;
    }
    
}

//     if ($result === [])
//     {
//         echo "Login Failed. Please ensure your email and password is correct";
//         return false;   
//     }
//     else
//     {
//         if ($result[0]['password_digest'] == md5($result[0]['salt'].$password))
//         {
//             return true;
//         }
//         else
//         {
//             echo "Login Failed. Please ensure your email and password is correct";
//             $connect = new PDO('mysql:host=localhost;dbname=CourseMgmtDB;', 'comp2190SA', '2016Sem1');
//             $connect->query("UPDATE Users SET failed_attempts = failed_attempts+1 WHERE email='$emailAddress'");
//             return false;
//         }        
//     }
// }
if(isset($_SESSION["user_id"])) 
{
header("Location: ../email_view.php");
}
if ( isset( $_POST['submit_form'] ) )
{
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    userLogin($username,$password);
}
?>
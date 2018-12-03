<?php    
session_start();
if(!isset($_SESSION["user_id"])) 
{
    header("Location: login.html");
}  
?>
<html>
    <!--This has been brought to you by:
    Odane Barnes - 620087815
    Andrew Hylton - 620088048
    Krystan Hunter - 620080774-->
	<head>
        <meta charset="utf-8">
		<title>Email View - CheapoMail</title>
		<link rel='shortcut icon' href='favicon.ico' type='image/x-icon'/>
        <link href="styles/email_view.css" type="text/css" rel="stylesheet">
        <script src="scripts/inbox.js" type="text/javascript"></script>
	</head>

	<body>
		<div id="headerBar">
		<a href="email_view.php"><div id="emailHeaderName">CheapoMail</div></a>
            <div id="userlogin"><img id="loginIcon" src="login-silhouette.png" alt="Login icon">
                <span id="headerBarUserName"><?php echo $_SESSION["firstname"]." ".$_SESSION["lastname"]; ?><span>
            </div>
        </div>
        <div id="leftBar">
            <button type="submit" name="submit_form" id="submit_form" onclick="fetchEmails('inbox');">Inbox</button>
            <button type="submit" name="submit_form" id="submit_form" onclick="fetchEmails('sent');">Sent Items</button>
            <button type="submit" name="submit_form" id="submit_form">Drafts</button>
            <button type="submit" name="submit_form" id="submit_form">Trash</button>
            <button type="submit" name="submit_form" id="submit_form">Spam</button>
            <input type="hidden" name="userID" id="userID" value="<?php echo $_SESSION["user_id"]?>">
        </div>
        <div id="controls">
            <button type="submit" name="submit_form" id="submit_form" onclick="composeMessage();">Compose New Message</button>
            <!--<button type="submit" name="submit_form" id="submit_form">Reply</button>
            <button type="submit" name="submit_form" id="submit_form">Delete</button>-->
            <button type="submit" name="submit_form" id="submit_form" onclick="logOut();">Log Out</button>
        </div>
        <div id="emailSection">
            <!-- emails and other content will appear here -->
		</div>

	</body>
</html>
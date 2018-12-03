<?php
$userID = $_GET['userID'];
$mode = isset($_GET['mode']) ? $_GET['mode'] : NULL;
$messageID = isset($_GET['messageID']) ? $_GET['messageID'] : NULL;

// Used with AJAX to retrieve either a user's received or sent messages
if ( isset($userID) && ($mode == "inbox" || $mode == "sent") )
{
    $results = dbQuery($userID,$mode,$messageID);
    $tempMode = ($mode == "inbox" ? "singleViewInbox" : "singleViewSent");
    $htmlMessages = ''; //initialize the variable to suppress the warning from wampserver
    foreach($results as $row)
    {                   
        $htmlMessages .=    '<div onclick="singleView('.$row['userID'].','.$row['messageID'].',\''.$tempMode.'\');"><span>'.$row['name'].'</span>'.
                            '<span>
                                <span>'.$row['subject'].'</span><span> • </span>'.
                                '<span>'.$row['body'].'</span>
                            </span>
                            <span>'.$row['date_sent'].'</span></div>';
    }
    echo $htmlMessages;
}

if ( isset($messageID) && ($mode == "singleViewInbox" || $mode == "singleViewSent") )
{
    $results = dbQuery($userID,$mode,$messageID);
    
    $arr = array('sender_name' => $results['sender_name'], 
                 'subject' => $results['subject'], 
                 'body' => $results['body'], 
                 'date_sent' => $results['date_sent']);

    echo json_encode($arr);
}

function dbQuery($userID,$mode,$messageID)
{
    if ($mode == "inbox")
    {
        // Inbox Items - Retrieves the emails that were sent to a specific user
        $mailQuery = "SELECT CONCAT(s.`firstname`,' ',s.`lastname`) AS name, m.`recipient_ids` AS userID, m.`ID` AS messageID, m.`subject`, m.`body`, m.`date_sent` 
        FROM `Users` s, `message` m where m.`user_id` = s.`ID` and m.`recipient_ids` LIKE $userID
        ORDER BY date_sent DESC";
    }

    if ($mode == "sent")
    {
        // Sent Items - Retrieves the emails that were sent by a specific user 
        $mailQuery = "SELECT CONCAT(r.`firstname`,' ',r.`lastname`) AS name, r.`ID` AS userID, m.`ID` AS messageID, m.`subject`, m.`body`, m.`date_sent`
        FROM users r, message m where m.`recipient_ids` = r.`ID` and m.`user_id` LIKE $userID
        ORDER BY date_sent DESC";
    }

    if ($mode == "singleViewInbox")
    {
        // Single Mail Inbox View - Retrieves the info for one specific email in a users inbox
        $mailQuery = "SELECT CONCAT(s.`firstname`,' ',s.`lastname`) AS sender_name, m.`subject`, m.`body`, m.`date_sent` 
        FROM `Users` s, `message` m where m.`ID` = $messageID AND s.`ID` = m.`user_id` AND m.`recipient_ids` LIKE $userID";
    }

    if ($mode == "singleViewSent")
    {
        // Single Mail Sent View - Retrieves the info for one specific email in a users sent items
        $mailQuery = "SELECT CONCAT(r.`firstname`,' ',r.`lastname`) AS sender_name, m.`subject`, m.`body`, m.`date_sent` 
        FROM `Users` r, `message` m where m.`ID` = $messageID AND r.`ID` = m.`recipient_ids` AND m.`user_id` = $userID";
    }

    $pdo = new PDO('mysql:host=localhost;dbname=cheapomail;', 'root', 'password');
    $statement = $pdo->query($mailQuery);
    if ($mode == "inbox" || $mode == "sent")
    {
        return $statement->fetchALL(PDO ::FETCH_ASSOC);
    }
    else
    {
        return $statement->fetch(PDO ::FETCH_ASSOC);
    }
    
}
?>
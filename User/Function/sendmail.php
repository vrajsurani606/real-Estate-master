<?php
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;
    
    require 'phpmailer/src/Exception.php';
    require 'phpmailer/src/PHPMailer.php';
    require 'phpmailer/src/SMTP.php';

    // Function to send email
    function SendMail($email, $sub, $msg) {
        // Create a new PHPMailer instance
        $mail = new PHPMailer(true);

        // SMTP configuration
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'locus466@gmail.com';
        $mail->Password = 'pknpemzpfomyiyrz';
        $mail->SMTPSecure = 'ssl';  
        $mail->Port = 465;
        
        // Sender and recipient details
        $mail->setFrom('locus466@gmail.com');
        $mail->addAddress($email);
        
        // Email content
        $mail->isHTML(true);
        $mail->Subject = $sub;
        $mail->Body = $msg;

        // Send the email
        $mail->send();
    }
        
    // Function to send email with PDF attachment
    function SendMail_With_PDF($email, $sub, $msg, $pid) {
        // Include the TCPDF library
        require_once('C:\xampp\htdocs\real-Estate-master\User\Function\TCPDF-main\TCPDF-main\tcpdf.php');

        $mail = new PHPMailer(true);

        // SMTP configuration
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'locus466@gmail.com';
        $mail->Password = 'pknpemzpfomyiyrz';
        $mail->SMTPSecure = 'ssl';  
        $mail->Port = 465;
        
        // Sender and recipient details
        $mail->setFrom('locus466@gmail.com');
        $mail->addAddress($email);
        
        // Email content
        $mail->isHTML(true);
        $mail->Subject = $sub;
        $mail->Body = $msg;

        // Send the email
        $mail->send();
    }
?>
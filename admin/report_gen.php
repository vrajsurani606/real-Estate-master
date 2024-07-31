<?php 
require("config.php");

// Initialize variables
$report = '';
$col_name = '';
$from = '';
$to = '';

// Check if 'r_type' is set in the URL
if (isset($_GET['r_type'])) {
    switch ($_GET['r_type']) {
        case 'payment_report':
            if (isset($_POST['date'])) {
                $to = $_POST['to'];
                $from = $_POST['from'];
                $q = mysqli_query($con , "SELECT pmid, uid, pmtid, amt, p_name FROM tblpmt WHERE date BETWEEN '$from' AND '$to'");
                while($data = mysqli_fetch_array($q)){
                    $report .= '<tr>
                        <td>'.$data['pmid'].'</td>
                        <td>'.$data['uid'].'</td>
                        <td>'.$data['pmtid'].'</td>
                        <td>'.$data['amt'].'</td>
                        <td>'.$data['p_name'].'</td>
                    </tr>';
                }
                $col_name = '<tr>
                                <th>pmid</th>
                                <th>uid</th>
                                <th>pmtid</th>
                                <th>amt</th>
                                <th>p_name</th>
                            </tr>';
            }
            break;
        case 'property_report':
            if (isset($_POST['date'])) {
                $to = $_POST['to'];
                $from = $_POST['from'];
                $q = mysqli_query($con , "SELECT pmid, uid, pmtid, amt, p_name FROM tblpmt WHERE date BETWEEN '$from' AND '$to'");
                while($data = mysqli_fetch_array($q)){
                    $report .= '<tr>
                        <td>'.$data['pmid'].'</td>
                        <td>'.$data['uid'].'</td>
                        <td>'.$data['pmtid'].'</td>
                        <td>'.$data['amt'].'</td>
                        <td>'.$data['p_name'].'</td>
                    </tr>';
                }
                $col_name = '<tr>
                                <th>pmid</th>
                                <th>uid</th>
                                <th>pmtid</th>
                                <th>amt</th>
                                <th>p_name</th>
                            </tr>';
            }
            // Handle property_report case similarly
            break;
        case 'user_report':
            if (isset($_POST['date'])) {
                $to = $_POST['to'];
                $from = $_POST['from'];
                $q = mysqli_query($con , "SELECT pmid, uid, pmtid, amt, p_name FROM tblpmt WHERE date BETWEEN '$from' AND '$to'");
                while($data = mysqli_fetch_array($q)){
                    $report .= '<tr>
                        <td>'.$data['pmid'].'</td>
                        <td>'.$data['uid'].'</td>
                        <td>'.$data['pmtid'].'</td>
                        <td>'.$data['amt'].'</td>
                        <td>'.$data['p_name'].'</td>
                    </tr>';
                }
                $col_name = '<tr>
                                <th>pmid</th>
                                <th>uid</th>
                                <th>pmtid</th>
                                <th>amt</th>
                                <th>p_name</th>
                            </tr>';
            }
            // Handle user_report case similarly
            break;
        
        default:
            echo "No Such a data";
            // Handle default case if needed
            break;
    }
}


// Generate HTML content
$html_content = '<!DOCTYPE html>
<html>
<head>
    <title>Report</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 30px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
            font-size: 10px;
        }
        table th, table td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }
        thead {
            font-weight: bold;
        }
        table th {
            background-color: #f2f2f2;
            color: #333;
            font-weight: bold;
        }
        footer {
            text-align: center;
            color: #666;
            font-size: 12px;
            margin-top: 30px;
            padding-top: 10px;
            border-top: 1px solid #ccc;
        }
        h6 {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Locus Property Management</h1>
        <h6>'.$_GET['r_type'].' '.$from.' To '.$to.'</h6>
        <table>
            <thead>
                '.$col_name.'
            </thead>
            <tbody>
                '.$report.'
            </tbody>
        </table>
    </div>
</body>
</html>';

// Write HTML content to PDF
$pdf->writeHTML($html_content);

// Define file location and name
$file_location = "C:/xampp/htdocs/real-Estate/admin/report/".$_GET['r_type']."/";
$file_name = $_GET['r_type'].$from."to".$to.".pdf";

// Output PDF file
$pdf->Output($file_location.$file_name, 'F');

// Redirect to report.php with r_type parameter
header("location: report.php?r_type=".$_GET['r_type']);

?>

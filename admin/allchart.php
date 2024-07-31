<?php
session_start();
require("config.php");
////code

if (!isset($_SESSION['auser'])) {
    header("location:index.php");
}

$get_user = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM user"));
$get_user_admin = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM `admin`"));
$get_feedback = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM tblfeedback"));
$get_contact = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM tblcontact"));
$get_property_success = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM tblhouse where qc='success'"));
$get_property_pending = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM tblhouse where qc='pending'"));
$get_property_reject = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM tblhouse where qc='reject'"));
$get_property_sum = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(amt) AS total FROM tblpmt;"));

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>LOCUS | Dashboard</title>

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favi.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">

    <!-- Feathericon CSS -->
    <link rel="stylesheet" href="assets/css/feathericon.min.css">

    <!-- Morris CSS -->
    <link rel="stylesheet" href="assets/plugins/morris/morris.css">

    <!-- Main CSS -->
    <link rel="stylesheet" href="assets/css/style.css">

    <!--[if lt IE 9]>
            <script src="assets/js/html5shiv.min.js"></script>
            <script src="assets/js/respond.min.js"></script>
        <![endif]-->
</head>

<body>

    <!-- Main Wrapper -->

    <!-- Header -->
    <?php include("header.php"); ?>
    <!-- /Header -->

    <!-- Page Wrapper -->
    <div class="page-wrapper">

        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="page-title">Welcome Admin!</h3>
                        <p></p>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <!-- Charts for Variables -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
                                <span class="dash-widget-icon bg-primary">
                                    <i class="fe fe-users"></i>
                                </span>
                            </div>
                            <div class="dash-widget-info">
                                <canvas id="userChart" width="200" height="200"></canvas>
                                <h6 class="text-muted">Users</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Add more chart elements for other variables -->
            </div>
        </div>
    </div>
    <!-- /Page Wrapper -->

    <!-- jQuery -->
    <script src="assets/js/jquery-3.2.1.min.js"></script>

    <!-- Bootstrap Core JS -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Slimscroll JS -->
    <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        // Chart for User Count
        var userChart = new Chart(document.getElementById('userChart'), {
            type: 'bar',
            data: {
                labels: ['Users'],
                datasets: [{
                    label: 'User Count',
                    data: [<?php echo $get_user['total']; ?>],
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
        // Add more chart scripts for other variables
    </script>

</body>

</html>

<?php
session_start();
require("config.php");

if (!isset($_SESSION['auser'])) {
    header("location:index.php");
}

// Fetching data from database
$get_user = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM user"));
$get_user_admin = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM `admin`"));
$get_feedback = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM tblfeedback"));
$get_contact = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM tblcontact"));
$get_property_success = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM tblhouse where qc='success'"));
$get_property_pending = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM tblhouse where qc='pending'"));
$get_property_reject = mysqli_fetch_array(mysqli_query($con, "SELECT COUNT(*) as total FROM tblhouse where qc='reject'"));
$get_property_sum = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(amt) AS total FROM tblpmt;"));
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>LOCUS | Dashboard</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favi.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <!-- Feathericon CSS -->
    <link rel="stylesheet" href="assets/css/feathericon.min.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body>

    <!-- Header -->
    <?php include("header.php"); ?>

    <!-- Page Wrapper -->
    <div class="page-wrapper">
        <div class="content container-fluid">
            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="page-title">Welcome Admin!</h3>
                        <p></p>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <!-- User Chart -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <canvas id="userChart" width="400" height="200"></canvas>
                </div>

                <!-- Admin Chart -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <canvas id="adminChart" width="400" height="200"></canvas>
                </div>

                <!-- Feedback Chart -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <canvas id="feedbackChart" width="400" height="200"></canvas>
                </div>

                <!-- Contact Chart -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <canvas id="contactChart" width="400" height="200"></canvas>
                </div>
            </div>

            <div class="row">
                <!-- Property Success Chart -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <canvas id="propertySuccessChart" width="400" height="200"></canvas>
                </div>

                <!-- Property Pending Chart -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <canvas id="propertyPendingChart" width="400" height="200"></canvas>
                </div>

                <!-- Property Reject Chart -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <canvas id="propertyRejectChart" width="400" height="200"></canvas>
                </div>

                <!-- Property Sum Chart -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <canvas id="propertySumChart" width="400" height="200"></canvas>
                </div>
            </div>
        </div>
    </div>
    <!-- /Page Wrapper -->

    <script>
        // User Chart
        new Chart(document.getElementById("userChart"), {
            type: 'bar',
            data: {
                labels: ["Users"],
                datasets: [{
                    label: "Count",
                    backgroundColor: "#3e95cd",
                    data: [<?php echo $get_user['total']; ?>]
                }]
            },
            options: {
                legend: {
                    display: false
                },
                title: {
                    display: true,
                    text: 'Users'
                }
            }
        });

        // Admin Chart
        new Chart(document.getElementById("adminChart"), {
            type: 'bar',
            data: {
                labels: ["Admins"],
                datasets: [{
                    label: "Count",
                    backgroundColor: "#8e5ea2",
                    data: [<?php echo $get_user_admin['total']; ?>]
                }]
            },
            options: {
                legend: {
                    display: false
                },
                title: {
                    display: true,
                    text: 'Admins'
                }
            }
        });

        // Feedback Chart
        new Chart(document.getElementById("feedbackChart"), {
            type: 'bar',
            data: {
                labels: ["Feedback"],
                datasets: [{
                    label: "Count",
                    backgroundColor: "#3cba9f",
                    data: [<?php echo $get_feedback['total']; ?>]
                }]
            },
            options: {
                legend: {
                    display: false
                },
                title: {
                    display: true,
                    text: 'Feedback'
                }
            }
        });

        // Contact Chart
        new Chart(document.getElementById("contactChart"), {
            type: 'bar',
            data: {
                labels: ["Contact Messages"],
                datasets: [{
                    label: "Count",
                    backgroundColor: "#e8c3b9",
                    data: [<?php echo $get_contact['total']; ?>]
                }]
            },
            options: {
                legend: {
                    display: false
                },
                title: {
                    display: true,
                    text: 'Contact Messages'
                }
            }
        });

        // Property Success Chart
        new Chart(document.getElementById

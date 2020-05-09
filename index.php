<?php 
require_once 'db.php';
if(!isset($_SESSION['login'])){
   ?>
   <script>alert('Anda Harus Login Terlebih Dahulu');</script>
   <?php
   header('Location: login.php');
   exit();
}

?>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>LPUG 2019</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amchart css -->
    <!-- <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" /> -->
    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!-- preloader area start -->
        <div id="preloader">
            <div class="loader"></div>
        </div>
        <!-- preloader area end -->
        <!-- page container area start -->
        <div class="page-container">
            <!-- sidebar menu area start -->
            <div class="sidebar-menu">
                <div class="sidebar-header">
                    <div class="logo">
                        <h3 style="color: white; font-family: sans-serif;">LPUG 2019</h3>
                    </div>
                </div>
                <div class="main-menu">
                    <div class="menu-inner">
                        <nav>
                            <ul class="metismenu" id="menu">
                                <li><a href="index.php"><i class="ti-home"></i> <span>Beranda</span></a></li>
                                <li>
                                    <a href="javascript:void(0)" aria-expanded="true"><i class="ti-layout-sidebar-left"></i><span>Test Teori</span></a>
                                    <ul class="collapse">
                                        <li><a href="index.php?halaman=matematika">Matematika</a></li>
                                        <li><a href="index.php?halaman=inggris">Bahasa Inggris</a></li>
                                        <li><a href="index.php?halaman=aritmatika">Aritmatika</a></li>
                                        <li><a href="index.php?halaman=tpa">TPA</a></li>
                                    </ul>
                                </li>
                                <li><a href="index.php?halaman=logout"><i class="ti-map-alt"></i> <span>Logout</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- sidebar menu area end -->
            <!-- main content area start -->
            <div class="main-content">
                <!-- header area start -->
                <div class="header-area">
                    <div class="row align-items-center">
                        <!-- nav and search button -->
                        <div class="col-md-6 col-sm-8 clearfix">
                            <div class="nav-btn pull-left">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <div class="search-box pull-left">
                                <form action="#">
                                    <input type="text" name="search" placeholder="Search..." required>
                                    <i class="ti-search"></i>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- header area end -->
                <!-- page title area start -->
                <div class="page-title-area">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area clearfix">
                                <h4 class="page-title pull-left">LPUG</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><a href="index.php">Home</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6 clearfix">
                            <div class="user-profile pull-right">
                                <img class="avatar user-thumb" src="assets/images/author/avatar.png" alt="avatar">
                                <h4 class="user-name dropdown-toggle" data-toggle="dropdown"><?= $_SESSION['login']['username']; ?> <i class="fa fa-angle-down"></i></h4>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="index.php?halaman=logout">Log Out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- page title area end -->
                <div class="main-content-inner">
                    <?php 
                    if(isset($_GET['halaman'])){
                        if($_GET['halaman']=='logout'){
                            include 'logout.php';
                        } elseif ($_GET['halaman']=='matematika') {
                            include 'matematika.php';
                        } elseif ($_GET['halaman']=='jawabanmtk') {
                            include 'jawabanmtk.php';
                        } elseif ($_GET['halaman']=='inggris') {
                            include 'inggris.php';
                        } elseif ($_GET['halaman']=='jawabaning') {
                            include 'jawabaning.php';
                        } elseif ($_GET['halaman']=='aritmatika') {
                            include 'aritmatika.php';
                        } elseif ($_GET['halaman']=='jawabanarit') {
                            include 'jawabanarit.php';
                        } elseif ($_GET['halaman']=='tpa') {
                            include 'tpa.php';
                        } elseif ($_GET['halaman']=='jawabantpa') {
                            include 'jawabantpa.php';
                        }
                    } else {
                        include 'home.php';
                    }

                    ?>

                </div>
            </div>
            <!-- main content area end -->
            <!-- footer area start-->
            <footer>
                <div class="footer-area">
                    <p>© Copyright 2018. All right reserved. Template by <a href="https://colorlib.com/wp/">Colorlib</a>.</p>
                </div>
            </footer>
            <!-- footer area end-->
            <!-- offset area end -->
            <!-- jquery latest version -->
            <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
            <!-- bootstrap 4 js -->
            <script src="assets/js/popper.min.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/owl.carousel.min.js"></script>
            <script src="assets/js/metisMenu.min.js"></script>
            <script src="assets/js/jquery.slimscroll.min.js"></script>
            <script src="assets/js/jquery.slicknav.min.js"></script>

            <!-- start chart js -->
            <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script> -->
            <!-- start highcharts js -->
            <!-- <script src="https://code.highcharts.com/highcharts.js"></script> -->
            <!-- start zingchart js -->
            <!-- <script src="https://cdn.zingchart.com/zingchart.min.js"></script> -->
            <!-- <script>
                zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
                ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
            </script> -->
            <!-- all line chart activation -->
            <script src="assets/js/line-chart.js"></script>
            <!-- all pie chart -->
            <script src="assets/js/pie-chart.js"></script>
            <!-- others plugins -->
            <script src="assets/js/plugins.js"></script>
            <script src="assets/js/scripts.js"></script>
        </body>

        </html>

<?php
session_start();
//include_once("cart/themhang.php");
if (isset($_GET["page_layout"])) {
    switch ($_GET["page_layout"]) {
        case 'index':
            include_once '../index.php';
            break;
        case 'login':
            header('location: ../login.php');
            break;
        case 'cart':
            header('location: ../views/cart/cart.php');
            break;
        default:
            include_once '../index.php';
    }
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>BA'S BEST HPOT Restaurant Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicon -->
    <link href="../views/img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts (tải font qua liên kết gg font)-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap" rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Libraries Stylesheet nhúng thẻ css bên ngoài -->
    <link href="../views/lib/animate/animate.min.css" rel="stylesheet" />
    <link href="../views/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />  
    <link href="../views/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../views/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="../views/css/style.css" rel="stylesheet" />
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Navbar & Hero Start -->
        <div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4 px-lg-5 py-3 py-lg-0">
                <a href="" class="navbar-brand p-0">
                    <h1 class="text-primary m-0">
                        <i class="fa fa-utensils me-3"></i>BA'S BEST HPOT
                    </h1>
                    <!-- <img src="../views/img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0 pe-4">
                        <a class="nav-item nav-link active">Trang chủ</a>
                        <a href="#service-section" class="nav-item nav-link">Về chúng tôi</a>
                        <a href="#menu-section" class="nav-item nav-link">Menu</a>
                        <a href="#Team-section" class="nav-item nav-link">Đội ngũ</a>
                        <a href="#Testimonial-section" class="nav-item nav-link">Phản hồi</a>

                    <!-- <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu m-0"> 
                                <a href="booking.html" class="dropdown-item">Booking</a>
                                <a href="#Team-section" class="dropdown-item">Đội ngũ bếp</a>
                                <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            </div>
                        </div>-->


                    </div>
                    <a href="index.php?page_layout=login" class="user_link" style="margin-right: 10px">
                        <i class="fa fa-user" aria-hidden="true"></i>
                    </a>
                    <a href="index.php?page_layout=cart" style="padding-right:10px">
                        <i style="margin-right: 5px" class="fas">&#xf07a;</i>(<?php
                            if (isset($_SESSION["cart"])) {echo array_sum($_SESSION["cart"]);} 
                            else {echo 0;} ?>)
                    </a>

                    <a href="#Reservation-section" class="btn btn-primary py-2 px-4">Đặt bàn</a>
                </div>
            </nav>

            <div class="container-xxl py-5 bg-dark hero-header mb-5">
                <div class="container my-5 py-5">
                    <div class="row align-items-center g-5">
                        <div class="col-lg-6 text-center text-lg-start">
                            <h1 class="display-3 text-white animated slideInLeft">
                                Thưởng thức<br />Tinh hoa lẩu Việt
                            </h1>
                            <p class="text-white animated slideInLeft mb-4 pb-2">
                                Chúng tôi phục vụ các món lẩu ngon, đậm đà hương vị Việt.
                                Với không gian ấm cúng và dịch vụ tận tình, nhà hàng là nơi lý tưởng
                                để thưởng thức bữa ăn sum vầy cùng gia đình và bạn bè.
                            </p>
                            <a href="#Reservation-section" class="btn btn-primary py-sm-3 px-sm-5 me-3 animated slideInLeft">Đặt bàn</a>
                        </div>
                        <div class="col-lg-6 text-center text-lg-end overflow-hidden">
                            <img class="img-fluid" src="../views/img/hero.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->
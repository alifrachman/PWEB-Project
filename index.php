<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Sweeta - Sewa Paket Lengkap</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Place favicon.ico in the root directory -->
    <link href="assets/images/favicon.ico" type="img/x-icon" rel="shortcut icon">
    <!-- All css files are included here. -->
    <link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/vendor/iconfont.min.css">
    <link rel="stylesheet" href="assets/css/vendor/helper.css">
    <link rel="stylesheet" href="assets/css/plugins/plugins.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Modernizr JS -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <?php 
	if(isset($_GET['pesan'])){
		if($_GET['pesan']=="gagal"){
			echo "<div class='alert'>Username dan Password tidak sesuai !</div>";
		}
    }
    require 'connect.php';
    
    $sql = "SELECT * FROM barang ORDER BY rand() LIMIT 4";
    $result = mysqli_query($con, $sql);
	?>
    <div id="main-wrapper">

        <?php include "header_web.php"?>

        <!--slider section start-->
        <div class="hero-section section position-relative">
            <div class="hero-slider section">

                <!--Hero Item start-->
                <div class="hero-item  bg-image" data-bg="assets/images/hero/hero-1.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">

                                <!--Hero Content start-->
                                <div class="hero-content-2 center">

                                    <h2>Sweeta<br>Semua Baju Tari Ada Di Sini</h2>
                                    <a href="shop.php" class="btn">Sewa Sekarang</a>

                                </div>
                                <!--Hero Content end-->

                            </div>
                        </div>
                    </div>
                </div>
                <!--Hero Item end-->

                <!--Hero Item start-->
                <div class="hero-item bg-image" data-bg="assets/images/hero/hero-2.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">

                                <!--Hero Content start-->
                                <div class="hero-content-2 center">

                                    <h2>Sweeta<br>Rental Baju Tari</h2>
                                    <a href="shop.php" class="btn">Sewa Sekarang</a>

                                </div>
                                <!--Hero Content end-->
                            </div>
                        </div>
                    </div>
                </div>
                <!--Hero Item end-->

            </div>
        </div>
        <!--slider section end-->




        <!--Product section start-->
        <div
            class="product-section section pt-70 pt-lg-50 pt-md-40 pt-sm-30 pt-xs-20 pb-55 pb-lg-35 pb-md-25 pb-sm-15 pb-xs-5">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="section-title text-center mb-15">
                            <h2>Mungkin Kamu Tertarik</h2>
                        </div>
                    </div>
                </div>
                <div class="tab-content">
                    <div id="home" class="tab-pane fade active show">
                        <div class="row">
                            <?php while($barang = mysqli_fetch_object($result)) { ?>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <!--  Single Grid product Start -->
                                <div class="single-grid-product mb-40">
                                    <div class="product-image">

                                        <a href="single-product.php?kode_barang=<?php echo $barang->kd_barang; ?>">
                                            <img src="./assets/images/pic/<?php echo $barang->foto; ?>"
                                                class="img-fluid" alt="">                      
                                        </a>
                                        <div class="product-action">
                                            <ul>
                                                <li> <a
                                                        href="cart.php?id=<?php echo $barang->kd_barang; ?> &action=add"><i
                                                            class="fa fa-cart-plus"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h3 class="title"> <a
                                                href="single-product.php"><?php echo $barang->nama_barang; ?></a></h3>
                                        <p class="product-price"><span class="discounted-price">Rp.
                                                <?php echo $barang->harga_barang; ?></span>
                                        </p>
                                    </div>
                                </div>
                                <!--  Single Grid product End -->
                            </div>
                            <?php } ?>

                        </div>
                    </div>
                </div>


            </div>
        </div>
        <!--Product section end-->







        <!--Features section start-->

        <div class="features-section section pt-30 pt-lg-15 pt-md-0 pt-sm-0 pt-xs-15">
            <div class="container">
                <div class="row">

                    <div class="col-lg-4 col-md-6">
                        <!-- Single Feature Start -->
                        <div class="single-feature mb-30">

                            <div class="feature-image">
                                <img src="./assets/images/icons/feature-1.png" class="img-fluid" alt="">
                            </div>
                            <div class="feature-content">
                                <h4 class="title">Ambil di Tempat Kami</h4>
                                <p class="short-desc">Jl.Argopuro 3 C-4</p>
                            </div>
                        </div>
                        <!-- Single Feature End -->
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <!-- Single Feature Start -->
                        <div class="single-feature mb-30">
                            <div class="feature-image">
                                <img src="./assets/images/icons/feature-2.png" class="img-fluid" alt="">
                            </div>
                            <div class="feature-content">
                                <h4 class="title">Kualitas Produk</h4>
                                <p class="short-desc">Kualitas dan Bahan Terbaik</p>
                            </div>
                        </div>
                        <!-- Single Feature End -->
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <!-- Single Feature Start -->
                        <div class="single-feature mb-30">
                            <div class="feature-image">
                                <img src="./assets/images/icons/feature-3.png" class="img-fluid" alt="">
                            </div>
                            <div class="feature-content">
                                <h4 class="title">Murah</h4>
                                <p class="short-desc">Sewa Baju Termurah</p>
                            </div>
                        </div>
                        <!-- Single Feature End -->
                    </div>

                </div>
            </div>
        </div>

        <!--Features section end-->

        <!-- FOOTER -->
        <?php include "footer.php" ?>


    </div>

    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- All jquery file included here -->
    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="assets/js/vendor/popper.min.js"></script>
    <script src="assets/js/vendor/bootstrap.min.js"></script>
    <script src="assets/js/plugins/plugins.js"></script>
    <script src="assets/js/main.js"></script>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="/Shop/static/client/img/logo.png">
<!-- Author Meta -->
<meta name="author" content="CodePixar">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>Shop</title>

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
<!--
			CSS
			============================================= -->
<link rel="stylesheet" href="/Shop/static/client/css/linearicons.css">
<link rel="stylesheet"
	href="/Shop/static/client/css/font-awesome.min.css">
<link rel="stylesheet" href="/Shop/static/client/css/nice-select.css">
<link rel="stylesheet"
	href="/Shop/static/client/css/ion.rangeSlider.css" />
<link rel="stylesheet"
	href="/Shop/static/client/css/ion.rangeSlider.skinFlat.css" />
<link rel="stylesheet" href="/Shop/static/client/css/bootstrap.css">
<link rel="stylesheet" href="/Shop/static/client/css/main.css">
</head>
<body>
	<jsp:include page="./headerClient.jsp"></jsp:include>
	<section class="banner-area relative" id="home">
		<div class="container-fluid">
			<div class="row fullscreen align-items-center justify-content-center">
				<div
					class="col-lg-6 col-md-12 d-flex align-self-end img-right no-padding">
					<img class="img-fluid" src="/Shop/static/client/img/header-img.png"
						alt="">
				</div>
				<div class="banner-content col-lg-6 col-md-12">
					<h1 class="title-top">
						<span>Flat</span> 75%Off
					</h1>
					<h1 class="text-uppercase">
						It’s Happening <br> this Season!
					</h1>
					<button class="primary-btn text-uppercase">
						<a href="#">Purchase Now</a>
					</button>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

	<!-- Start category Area -->
	<section class="category-area section-gap section-gap" id="catagory">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-40">
					<div class="title text-center">
						<h1 class="mb-10">Shop for Different Categories</h1>
						<p>Who are in extremely love with eco friendly system.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 col-md-8 mb-10">
					<div class="row category-bottom">
						<div class="col-lg-6 col-md-6 mb-30">
							<div class="content">
								<a href="#" target="_blank">
									<div class="content-overlay"></div> <img
									class="content-image img-fluid d-block mx-auto"
									src="/Shop/static/client/img/c1.jpg" alt="">
									<div class="content-details fadeIn-bottom">
										<h3 class="content-title">Product for Women</h3>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 mb-30">
							<div class="content">
								<a href="#" target="_blank">
									<div class="content-overlay"></div> <img
									class="content-image img-fluid d-block mx-auto"
									src="/Shop/static/client/img/c2.jpg" alt="">
									<div class="content-details fadeIn-bottom">
										<h3 class="content-title">Product for Couple</h3>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="content">
								<a href="#" target="_blank">
									<div class="content-overlay"></div> <img
									class="content-image img-fluid d-block mx-auto"
									src="/Shop/static/client/img/c3.jpg" alt="">
									<div class="content-details fadeIn-bottom">
										<h3 class="content-title">Shop Now</h3>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 mb-10">
					<div class="content">
						<a href="#" target="_blank">
							<div class="content-overlay"></div> <img
							class="content-image img-fluid d-block mx-auto"
							src="/Shop/static/client/img/c4.jpg" alt="">
							<div class="content-details fadeIn-bottom">
								<h3 class="content-title">Product For Men</h3>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End category Area -->

	<!-- Start men-product Area -->
	<section class="men-product-area section-gap relative" id="men">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-40">
					<div class="title text-center">
						<h1 class="text-white mb-10">New realeased Products for Men</h1>
						<p class="text-white">Who are in extremely love with eco
							friendly system.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 single-product">
					<div class="content">
						<div class="content-overlay"></div>
						<img class="content-image img-fluid d-block mx-auto"
							src="/Shop/static/client/img/l1.jpg" alt="">
						<div class="content-details fadeIn-bottom">
							<div
								class="bottom d-flex align-items-center justify-content-center">
								<a href="#"><span class="lnr lnr-heart"></span></a> <a href="#"><span
									class="lnr lnr-layers"></span></a> <a href="#"><span
									class="lnr lnr-cart"></span></a> <a href="#" data-toggle="modal"
									data-target="#exampleModal"><span
									class="lnr lnr-frame-expand"></span></a>
							</div>
						</div>
					</div>
					<div class="price">
						<h5 class="text-white">Long Sleeve shirt</h5>
						<h3 class="text-white">$150.00</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-product">
					<div class="content">
						<div class="content-overlay"></div>
						<img class="content-image img-fluid d-block mx-auto"
							src="/Shop/static/client/img/l2.jpg" alt="">
						<div class="content-details fadeIn-bottom">
							<div
								class="bottom d-flex align-items-center justify-content-center">
								<a href="#"><span class="lnr lnr-heart"></span></a> <a href="#"><span
									class="lnr lnr-layers"></span></a> <a href="#"><span
									class="lnr lnr-cart"></span></a> <a href="#" data-toggle="modal"
									data-target="#exampleModal"><span
									class="lnr lnr-frame-expand"></span></a>
							</div>
						</div>
					</div>
					<div class="price">
						<h5 class="text-white">Long Sleeve shirt</h5>
						<h3 class="text-white">$150.00</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-product">
					<div class="content">
						<div class="content-overlay"></div>
						<img class="content-image img-fluid d-block mx-auto"
							src="/Shop/static/client/img/l3.jpg" alt="">
						<div class="content-details fadeIn-bottom">
							<div
								class="bottom d-flex align-items-center justify-content-center">
								<a href="#"><span class="lnr lnr-heart"></span></a> <a href="#"><span
									class="lnr lnr-layers"></span></a> <a href="#"><span
									class="lnr lnr-cart"></span></a> <a href="#" data-toggle="modal"
									data-target="#exampleModal"><span
									class="lnr lnr-frame-expand"></span></a>
							</div>
						</div>
					</div>
					<div class="price">
						<h5 class="text-white">Long Sleeve shirt</h5>
						<h3 class="text-white">$150.00</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-product">
					<div class="content">
						<div class="content-overlay"></div>
						<img class="content-image img-fluid d-block mx-auto"
							src="/Shop/static/client/img/l4.jpg" alt="">
						<div class="content-details fadeIn-bottom">
							<div
								class="bottom d-flex align-items-center justify-content-center">
								<a href="#"><span class="lnr lnr-heart"></span></a> <a href="#"><span
									class="lnr lnr-layers"></span></a> <a href="#"><span
									class="lnr lnr-cart"></span></a> <a href="#" data-toggle="modal"
									data-target="#exampleModal"><span
									class="lnr lnr-frame-expand"></span></a>
							</div>
						</div>
					</div>
					<div class="price">
						<h5 class="text-white">Long Sleeve shirt</h5>
						<h3 class="text-white">$150.00</h3>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End men-product Area -->

	<!-- Start women-product Area -->
	<section class="women-product-area section-gap" id="women">
		<div class="container">
			<div class="countdown-content pb-40">
				<div class="title text-center">
					<h1 class="mb-10">New realeased Products for Women</h1>
					<p>Who are in extremely love with eco friendly system.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 single-product">
					<div class="content">
						<div class="content-overlay"></div>
						<img class="content-image img-fluid d-block mx-auto"
							src="/Shop/static/client/img/l5.jpg" alt="">
						<div class="content-details fadeIn-bottom">
							<div
								class="bottom d-flex align-items-center justify-content-center">
								<a href="#"><span class="lnr lnr-heart"></span></a> <a href="#"><span
									class="lnr lnr-layers"></span></a> <a href="#"><span
									class="lnr lnr-cart"></span></a> <a href="#" data-toggle="modal"
									data-target="#exampleModal"><span
									class="lnr lnr-frame-expand"></span></a>
							</div>
						</div>
					</div>
					<div class="price">
						<h5>Long Sleeve shirt</h5>
						<h3>$150.00</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-product">
					<div class="content">
						<div class="content-overlay"></div>
						<img class="content-image img-fluid d-block mx-auto"
							src="/Shop/static/client/img/l6.jpg" alt="">
						<div class="content-details fadeIn-bottom">
							<div
								class="bottom d-flex align-items-center justify-content-center">
								<a href="#"><span class="lnr lnr-heart"></span></a> <a href="#"><span
									class="lnr lnr-layers"></span></a> <a href="#"><span
									class="lnr lnr-cart"></span></a> <a href="#" data-toggle="modal"
									data-target="#exampleModal"><span
									class="lnr lnr-frame-expand"></span></a>
							</div>
						</div>
					</div>
					<div class="price">
						<h5>Long Sleeve shirt</h5>
						<h3>$150.00</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-product">
					<div class="content">
						<div class="content-overlay"></div>
						<img class="content-image img-fluid d-block mx-auto"
							src="/Shop/static/client/img/l7.jpg" alt="">
						<div class="content-details fadeIn-bottom">
							<div
								class="bottom d-flex align-items-center justify-content-center">
								<a href="#"><span class="lnr lnr-heart"></span></a> <a href="#"><span
									class="lnr lnr-layers"></span></a> <a href="#"><span
									class="lnr lnr-cart"></span></a> <a href="#" data-toggle="modal"
									data-target="#exampleModal"><span
									class="lnr lnr-frame-expand"></span></a>
							</div>
						</div>
					</div>
					<div class="price">
						<h5>Long Sleeve shirt</h5>
						<h3>$150.00</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-product">
					<div class="content">
						<div class="content-overlay"></div>
						<img class="content-image img-fluid d-block mx-auto"
							src="/Shop/static/client/img/l8.jpg" alt="">
						<div class="content-details fadeIn-bottom">
							<div
								class="bottom d-flex align-items-center justify-content-center">
								<a href="#"><span class="lnr lnr-heart"></span></a> <a href="#"><span
									class="lnr lnr-layers"></span></a> <a href="#"><span
									class="lnr lnr-cart"></span></a> <a href="#" data-toggle="modal"
									data-target="#exampleModal"><span
									class="lnr lnr-frame-expand"></span></a>
							</div>
						</div>
					</div>
					<div class="price">
						<h5>Long Sleeve shirt</h5>
						<h3>$150.00</h3>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End women-product Area -->

	<!-- Start Count Down Area -->
	<div class="countdown-area">
		<div class="container">
			<div class="countdown-content">
				<div class="title text-center">
					<h1 class="mb-10">Exclusive Hot Deal Ends in:</h1>
					<p>Who are in extremely love with eco friendly system.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-4 col-lg-4"></div>
				<div class="col-xl-6 col-lg-7">
					<div
						class="countdown d-flex justify-content-center justify-content-md-end"
						id="js-countdown">
						<div class="countdown-item">
							<div class="countdown-timer js-countdown-days time"
								aria-labelledby="day-countdown"></div>

							<div class="countdown-label" id="day-countdown">Days</div>
						</div>

						<div class="countdown-item">
							<div class="countdown-timer js-countdown-hours"
								aria-labelledby="hour-countdown"></div>

							<div class="countdown-label" id="hour-countdown">Hours</div>
						</div>

						<div class="countdown-item">
							<div class="countdown-timer js-countdown-minutes"
								aria-labelledby="minute-countdown"></div>

							<div class="countdown-label" id="minute-countdown">Minutes</div>
						</div>

						<div class="countdown-item">
							<div class="countdown-timer js-countdown-seconds"
								aria-labelledby="second-countdown"></div>

							<div class="countdown-label text" id="second-countdown">Seconds</div>
						</div>
						<a href="#" class="view-btn primary-btn2"><span>Shop
								Now</span></a> <img src="/Shop/static/client/img/cd.png"
							class="img-fluid cd-img" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Count Down Area -->

	<!-- Start related-product Area -->
	<section class="related-product-area section-gap" id="latest">
		<div class="container">
			<div class="related-content">
				<div class="title text-center">
					<h1 class="mb-10">Related Searched Products</h1>
					<p>Who are in extremely love with eco friendly system.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-4 col-sm-6 mb-20">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r1.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-20">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r2.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-20">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r3.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-20">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r4.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-20">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r5.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-20">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r6.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-20">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r7.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mb-20">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r8.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r9.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r10.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r11.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="single-related-product d-flex">
						<a href="#"><img src="/Shop/static/client/img/r12.jpg" alt=""></a>
						<div class="desc">
							<a href="#" class="title">Black lace Heels</a>
							<div class="price">
								<span class="lnr lnr-tag"></span> $189.00
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- End related-product Area -->

	<!-- Start brand Area -->
	<section class="brand-area pb-100">
		<div class="container">
			<div class="row logo-wrap">
				<a class="col single-img" href="#"> <img class="d-block mx-auto"
					src="/Shop/static/client/img/br1.png" alt="">
				</a> <a class="col single-img" href="#"> <img
					class="d-block mx-auto" src="/Shop/static/client/img/br2.png"
					alt="">
				</a> <a class="col single-img" href="#"> <img
					class="d-block mx-auto" src="/Shop/static/client/img/br3.png"
					alt="">
				</a> <a class="col single-img" href="#"> <img
					class="d-block mx-auto" src="/Shop/static/client/img/br4.png"
					alt="">
				</a> <a class="col single-img" href="#"> <img
					class="d-block mx-auto" src="/Shop/static/client/img/br5.png"
					alt="">
				</a>
			</div>
		</div>
	</section>
	<!-- End brand Area -->

	<!-- start footer Area -->
	<jsp:include page="./footer.jsp" />
	<!-- End footer Area -->

	<script src="/Shop/static/client/js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="/Shop/static/client/https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="/Shop/static/client/js/vendor/bootstrap.min.js"></script>
	<script src="/Shop/static/client/s/jquery.ajaxchimp.min.js"></script>
	<script src="/Shop/static/client/js/jquery.nice-select.min.js"></script>
	<script src="/Shop/static/client/js/jquery.sticky.js"></script>
	<script src="/Shop/static/client/js/ion.rangeSlider.js"></script>
	<script src="/Shop/static/client/js/jquery.magnific-popup.min.js"></script>
	<script src="/Shop/static/client/js/owl.carousel.min.js"></script>
	<script src="/Shop/static/client/js/main.js"></script>
</body>
</html>
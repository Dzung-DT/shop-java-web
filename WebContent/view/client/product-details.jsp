<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Shop-Product Details</title>

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
<style>
	#product-thumbnail {
		max-width: 400px;
		max-height: 400px;
		min-width: 400px;
		min-height: 400px;
	}
</style>
</head>
<body>
	<jsp:include page="./menuClient.jsp" />
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center">
				<div class="col-first">
					<h1>Single Product Page</h1>
					<nav class="d-flex align-items-center justify-content-start">
						<a href="index.html">Home<i class="fa fa-caret-right"
							aria-hidden="true"></i></a> <a href="single.html">Single Product
							Page</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- Start Product Details -->
	<div class="container">
		<div class="product-quick-view">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<c:url value="/imageProduct?fileName=${product.productFileName }"
						var="imgUrl"></c:url>
					<img class="img-responsive sm-margin-bottom-20" src="${imgUrl}" id="product-thumbnail" class="rounded img-thumbnail"
						alt=""></a>
				</div>

				<div class="col-lg-6">
					<div class="quick-view-content">
						<div class="top">
							<h3>${product.name }</h3>
							<hr>
							<div class="price d-flex align-items-center">
								<span class="lnr lnr-tag"></span> <span class="ml-10">${product.price }
									$</span>
							</div>
							<div class="category">
								Category: <span>${product.category.name }</span>
							</div>
						</div>
						<div class="middle">
							<p class="content">Mill Oil is an innovative oil filled
								radiator with the most modern technology. If you are looking for
								something that can make your interior look awesome, and at the
								same time give you the pleasant warm feeling during the winter.</p>
						</div>
						<div>
							<div class="quantity-container d-flex align-items-center mt-15">
								<form method="get"
									action="/Shop/client/cart-item/add">
									<input type="text" value="${product.id }" name="productId" hidden=""
										class="quantity-amount ml-15">
									<button type='button' class="quantity-button" name='subtract'
										onclick='javascript: subtractQty();' value='-'>-</button>
									<input type='text' class="quantity-field" name='quantity'
										value="1" id='qty' />
									<button type='button' class="quantity-button" name='add'
										onclick='javascript: document.getElementById("qty").value++;'
										value='+'>+</button>
									<button type="submit" class="btn-u btn-u-sea-shop btn-u-lg">Add
										to Cart</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- start footer Area -->
	<jsp:include page="./footer.jsp" />
	<!-- End footer Area -->
	<!-- Modal Quick Product View -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="container relative">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="product-quick-view">
					<div class="row align-items-center">
						<div class="col-lg-6">
							<div class="quick-view-carousel">
								<div class="item"
									style="background: url(img/organic-food/q1.jpg);"></div>
								<div class="item"
									style="background: url(img/organic-food/q1.jpg);"></div>
								<div class="item"
									style="background: url(img/organic-food/q1.jpg);"></div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="quick-view-content">
								<div class="top">
									<h3 class="head">Mill Oil 1000W Heater, White</h3>
									<div class="price d-flex align-items-center">
										<span class="lnr lnr-tag"></span> <span class="ml-10">$149.99</span>
									</div>
									<div class="category">
										Category: <span>Household</span>
									</div>
									<div class="available">
										Availibility: <span>In Stock</span>
									</div>
								</div>
								<div class="middle">
									<p class="content">Mill Oil is an innovative oil filled
										radiator with the most modern technology. If you are looking
										for something that can make your interior look awesome, and at
										the same time give you the pleasant warm feeling during the
										winter.</p>
									<a href="#" class="view-full">View full Details <span
										class="lnr lnr-arrow-right"></span></a>
								</div>
								<div class="bottom">
									<div class="color-picker d-flex align-items-center">
										Color: <span class="single-pick"></span> <span
											class="single-pick"></span> <span class="single-pick"></span>
										<span class="single-pick"></span> <span class="single-pick"></span>
									</div>
									<div class="quantity-container d-flex align-items-center mt-15">
										Quantity: <input type="text" class="quantity-amount ml-15"
											value="1" />
										<div class="arrow-btn d-inline-flex flex-column">
											<button class="increase arrow" type="button"
												title="Increase Quantity">
												<span class="lnr lnr-chevron-up"></span>
											</button>
											<button class="decrease arrow" type="button"
												title="Decrease Quantity">
												<span class="lnr lnr-chevron-down"></span>
											</button>
										</div>

									</div>
									<div class="d-flex mt-20">
										<a href="/Shop/client/cart-item/add" class="view-btn color-2"><span>Add to
												Cart</span></a> <a href="#" class="like-btn"><span
											class="lnr lnr-layers"></span></a> <a href="#" class="like-btn"><span
											class="lnr lnr-heart"></span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="/Shop/static/client/js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="/Shop/static/client/js/vendor/bootstrap.min.js"></script>
	<script src="/Shop/static/client/js/jquery.ajaxchimp.min.js"></script>
	<script src="/Shop/static/client/js/jquery.nice-select.min.js"></script>
	<script src="/Shop/static/client/js/jquery.sticky.js"></script>
	<script src="/Shop/static/client/js/ion.rangeSlider.js"></script>
	<script src="/Shop/static/client/js/jquery.magnific-popup.min.js"></script>
	<script src="/Shop/static/client/js/owl.carousel.min.js"></script>
	<script src="/Shop/static/client/js/main.js"></script>
</body>
</html>
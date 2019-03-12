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
<title>Shop</title>

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
<!--
            CSS
            ============================================= -->
<link rel="stylesheet" href="/Shop/static/client/css/linearicons.css">
<link rel="stylesheet" href="/Shop/static/client/css/owl.carousel.css">
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
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center">
				<div class="col-first">
					<h1>Product Checkout</h1>
					<nav class="d-flex align-items-center justify-content-start">
						<a href="index.html">Home<i class="fa fa-caret-right"
							aria-hidden="true"></i></a> <a href="checkout.html">Product
							Checkout</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<div class="container">
		<form action="/Shop/client/informationBill" class="billing-form" method="post">
			<div class="row">
				<div class="col-lg-8 col-md-6">
					<h3 class="billing-title mt-20 mb-10">Billing Details</h3>				
					<div class="row">
						<div class="col-lg-6">
							<input type="text" name= "firstname" placeholder="First name*"
								onfocus="this.placeholder=''"
								onblur="this.placeholder = 'First name*'" required
								class="common-input" >
						</div>
						<div class="col-lg-6">
							<input type="text" name="lastname" placeholder="Last name*"
								onfocus="this.placeholder=''"
								onblur="this.placeholder = 'Last name*'" required
								class="common-input">
						</div>	
						<div class="col-lg-6">
							<input type="text" name= "phoneOrder" placeholder="Phone number*"
								onfocus="this.placeholder=''"
								onblur="this.placeholder = 'Phone number*'" required
								class="common-input">
						</div>
						<div class="col-lg-6">
							<input type="email" name= "emailOrder" placeholder="Email Address*"
								onfocus="this.placeholder=''"
								onblur="this.placeholder = 'Email Address*'" required
								class="common-input">
						</div>
						<div class="col-lg-12">
							<input type="text" name= "deliveryAddress" placeholder="Delivery Address"
								onfocus="this.placeholder=''"
								onblur="this.placeholder = 'Delivery Address'" required
								class="common-input">
						</div>
						<button class="view-btn color-2 w-100 mt-20" type="submit">
								<span>Proceed to Checkout</span>
							</button>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="order-wrapper mt-50">
						<h3 class="billing-title mb-10">Your Order</h3>
						<div class="order-list">
							<div class="list-row d-flex justify-content-between">
								<div>Product</div>
								<div>Quantity</div>
								<div>Total</div>
							</div>
							<c:forEach items="${sessionScope.cart }" var="itemMap">
							<div class="row">
														
									<div class="col-sm-7">${itemMap.value.product.name }</div>
									<div class="col-sm-2">${itemMap.value.buyQuantity }</div>
									<div class="col-sm-3">${itemMap.value.sellPrice * itemMap.value.buyQuantity } $</div>
								
								</div>
							</c:forEach>
							<div class="list-row d-flex justify-content-between">
								<h6>Total</h6>
								<div class="total">${sessionScope.sum } $</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<hr>
	<hr>
	
	<script src="/Shop/static/client/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="/Shop/static/client/js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="/Shop/static/client/js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="/Shop/static/client/js/plugins.js"></script>
	<!-- Active js -->
	<script src="/Shop/static/client/js/active.js"></script>
</body>
</html>
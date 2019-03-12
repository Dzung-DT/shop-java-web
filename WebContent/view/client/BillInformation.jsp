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
<title>Shop | Bill Information</title>

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
						<a href="checkout.html"></a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	</div>
	<div class="container">
		<div class="card">
			<div class="card-header">
				Invoice <strong>01/01/01/2018</strong> <span class="float-right">
					<strong>Status:</strong> Pending
				</span>

			</div>
			<div class="card-body">
				<div class="row mb-4">
					<div class="col-sm-6">
						<h6 class="mb-3">From:</h6>
						<div>
							<strong>MeoMeo Clothes Store</strong>
						</div>
						<div>Ha Noi</div>
						<div>232 Nguyen Trai, Ha Dong</div>
						<div>Email: meomeo@gmail.com</div>
						<div>Phone: 113114115</div>
					</div>

					<div class="col-sm-6">
						<h6 class="mb-3">To:</h6>
						<div>
							<strong>Buyer : ${fullname }</strong>
						</div>
						<div>Address: ${deliveryAdd }</div>
						<div>Email: ${emailO }</div>
						<div>Phone: ${phoneO }</div>
					</div>
				</div>		
				<div class="table-responsive-sm">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Product</th>
								<th class="center">Quantity</th>
								<th class="right">Price</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${sessionScope.cart }" var="itemMap">
							<tr>
								<td class="left strong">${itemMap.value.product.name }</td>
								<td class="center">${itemMap.value.buyQuantity }</td>
								<td class="right">${itemMap.value.sellPrice * itemMap.value.buyQuantity } $</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
				<form action="/Shop/client" class="billing-form">
				<div class="row">
					<div class="col-lg-4 col-sm-5 ml-auto">
						<table class="table table-clear">
							<tbody>
								<tr>
									<td class="left"><strong>Total</strong></td>
									<td class="right"><strong>${sessionScope.sum }$</strong></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<button class="view-btn color-2 w-100 mt-20" type="submit">
							<span>DONE</span>
						</button>
				</form>
				</div>
			</div>
		</div>
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
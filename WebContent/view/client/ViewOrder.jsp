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
<link rel="shortcut icon" href="img/fav.png">
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
<style>
#product-thumbnail {
	max-width: 200px;
	max-height: 200px;
	min-width: 200px;
	min-height: 200px;
}
</style>
</head>
<body>
	<jsp:include page="./headerClient.jsp"></jsp:include>

	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center">
				<div class="col-first">
					<h1>Product Order</h1>
					<nav class="d-flex align-items-center justify-content-start">
						<a href="index.html">Home<i class="fa fa-caret-right"
							aria-hidden="true"></i></a> <a href="cart.html">Product Order</a>
					</nav>
				</div>
			</div>
		</div>
	</section>

	<div class="container">
		<div class="cart-title">
			<div class="row">
				<div class="col-md-4">
					<h6 class="ml-15">Product</h6>
				</div>
				<div class="col-md-2">
					<h6>Price</h6>
				</div>
				<div class="col-md-2">
					<h6>Buy</h6>
				</div>
				<div class="col-md-2">
					<h6>Total</h6>
				</div>
				<div class="col-md-2">
					<h6>Select</h6>
				</div>
			</div>
		</div>
		<div class="cart-single-item">
			<c:forEach items="${sessionScope.cart }" var="itemMap">
				<div class="row align-items-center">

					<c:url
						value='/imageProduct?fileName=${itemMap.value.product.productFileName }'
						var="imgUrl" />
					<div class="col-md-4 col-12">
						<div class="product-item d-flex align-items-center">
							<img src="${imgUrl}" id="product-thumbnail"
								class="rounded img-thumbnail">
							<h4>${itemMap.value.product.name }</h4>
						</div>
					</div>
					<div class="col-md-1 col-6">
						<div class="price">${itemMap.value.sellPrice }$</div>
					</div>
					<div class="col-md-1 col-6">
						<div class="price">${itemMap.value.buyQuantity }</div>
					</div>
					<div class="col-md-2 col-12">
						<div class="total">${itemMap.value.sellPrice * itemMap.value.buyQuantity }
							$</div>
					</div>
					<div class="col-md-1 col-12">
						<a
							href="<c:url value='/client/cart-item/delete?productId=${itemMap.key}'/>">Delete</a>
					</div>
					<div class="col-md-3 col-6">
						<div class="quantity-container d-flex align-items-center mt-15">
							<form method="get" action="/Shop/client/cart-item/add">
								<input type="text" value="${itemMap.value.product.id }"
									name="productId" hidden="" class="quantity-amount ml-15">
								<input type='text' class="quantity-field" name='quantity'
									value="0" id='qty' />
								<button type="submit" class="btn-u btn-u-sea-shop btn-u-lg">Add</button>
							</form>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div
			class="cupon-area d-flex align-items-center justify-content-between flex-wrap">
			<div class="row">
				<div class="col-md-10"></div>
				<div class="col-md-2">
					<!--  <input class="btn btn-primary" type="submit" value="Order">-->
					<c:url value="/client/order/add" var="url" />
					<form action="${url }" method="post">
						<hr>
						<input class="btn btn-primary" type="submit" value="Order">
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="./footer.jsp"></jsp:include>

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
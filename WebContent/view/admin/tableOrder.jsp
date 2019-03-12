<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table Orders</title>
<link rel="apple-touch-icon" sizes="76x76"
	href="/Shop/static/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/Shop/static/admin/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="/Shop/static/admin/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="/Shop/static/admin/css/animate.min.css" rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link href="/Shop/static/admin/css/paper-dashboard.css" rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="/Shop/static/admin/css/demo.css" rel="stylesheet" />


<!--  Fonts and icons     -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="/Shop/static/admin/css/themify-icons.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="./menuAdmin.jsp" />
	<div class="main-panel">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
						<span class="icon-bar bar3"></span>
					</button>
					<a class="navbar-brand" href="#">Cart Items</a>
				</div>
			</div>
		</nav>
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="content table-responsive table-full-width">
								<table class="table table-striped">
									<thead>
										<th>STT</th>
										<th>ID</th>
										<th>Buyer</th>
										<th>Date</th>
										<th>Product</th>
										<th>Quantity</th>
										<th>Price</th>
										<th>Sum</th>
										<th>Action</th>
									</thead>
									<tbody>
										<c:set var="index" value="${0}" />
										<c:forEach items="${listCartItem }" var="list">
											<tr>
												<c:set var="index" value="${index + 1}" />
												<td>${index }</td>
												<td>${list.id }</td>
												<td>${list.cart.buyer.username }</td>
												<td>${list.cart.buyDate}</td>
												<td>${list.product.name}</td>
												<td>${list.buyQuantity}</td>
												<td>${list.product.price} $</td>
												<td>${list.buyQuantity * list.product.price } $</td>
												<td><a
													href="<c:url value='/admin/order/edit?id=${list.id}'/>">Edit</a>
													</a>| <a
													href="<c:url value='/admin/order/delete?id=${list.id }'/>">Delete</a>					
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<hr>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="footer">
			<div class="container-fluid">
				<nav class="pull-left">
					<ul>

						<li><a href="#"> Do Trong Dung </a></li>
						<li><a href="#"> Blog </a></li>
						<li><a href="#"> Licenses </a></li>
					</ul>
				</nav>
				<div class="copyright pull-right">
					&copy;
					<script>
						document.write(new Date().getFullYear())
					</script>
					, made with <i class="fa fa-heart heart"></i> by <a href="#">Do
						Trong Dung</a>
				</div>
			</div>
		</footer>
	
</body>
</html>
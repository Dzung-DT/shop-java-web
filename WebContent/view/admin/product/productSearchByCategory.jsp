<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Products Search By Category</title>
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
<style>
	#product-thumbnail {
		max-width: 150px;
		max-height: 150px;
		min-width: 150px;
		min-height: 150px;
	}
</style>
</head>
<body>
	<jsp:include page="../menuAdmin.jsp" />
	<div class="main-panel">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
						<span class="icon-bar bar3"></span>
					</button>
					<a class="navbar-brand" href="#">List Products</a>
				</div>
			</div>
		</nav>
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="header">
								<div class="row">
									<div class="col-sm-4">
										<li class="sort-list-btn">
											<div class="btn-group">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">Category</button>
												<ul class="dropdown-menu" role="menu">
													<li><a class="dropdown-item" href="/Shop/product/category?cate_id=12">May anh chuyen nghiep</a></li>
													<li><a class="dropdown-item" href="/Shop/product/category?cate_id=13">May anh du lich</a></li>
													<li><a class="dropdown-item" href="/Shop/product/category?cate_id=14">May anh sieu zoom</a></li>
													<li><a class="dropdown-item" href="/Shop/product/category?cate_id=16">May anh mirrorless</a></li>
													<li><a class="dropdown-item" href="/Shop/product/category?cate_id=17">May anh chup lay ngay</a></li>
												</ul>
											</div>
										</li>
									</div>
									<div class="col-sm-4">
										<h4 class="title">
											<label>Add Product</label>
											<button class="btn btn-default" type="button"
												onclick="location.href='<c:url value='/admin/product/add'/>'"
												type="button">
												<i class="ti-plus"></i>
											</button>
									</div>
									<div class="col-sm-4">
										<h4 class="title">
											<c:url value='/admin/product/search' var="url" />
											<form action="${url}" method="post">
												<div class="input-group input-group-lg">
													<input type="text" class="form-control" name="nameProduct"
														placeholder="Search product by name...">
													<div class="input-group-btn">
														<button class="btn btn-default" type="submit">
															<i class="ti-search"></i>
														</button>
													</div>
												</div>
											</form>
									</div>
								</div>
							</div>
							<div class="content table-responsive table-full-width">
								<table class="table table-striped">
									<thead>
										<th>ID</th>
										<th>Image</th>
										<th>Name</th>
										<th>Quantity</th>
										<th>Price</th>
										<th>Category</th>
										<th>Description</th>
										<th>Select</th>
									</thead>
									<tbody>
										<c:forEach items="${productSeachByCategory}" var="p">
											<tr>
												<td>${p.id }</td>
												<c:url value='/imageProduct?fileName=${p.productFileName }'
													var="imgUrl" />
												<td><img src="${imgUrl}" id="product-thumbnail" class="rounded img-thumbnail"/></td>
												<td>${p.name }</td>
												<td>${p.quantity }</td>
												<td>${p.price }</td>
												<td>${p.category.name }</td>
												<td>${p.description }</td>
												<td><a
													href="<c:url value='/admin/product/delete?pid=${p.id }'/>">DELETE</a>
													| <a
													href="<c:url value='/admin/product/edit?pid=${p.id }'/>">EDIT</a>
													| <a
													href="<c:url value='/admin/cart-item/add?productId=${p.id }'/>">Add To Cart</a>
												</td>	
											</tr>
										</c:forEach>
									</tbody>
								</table>
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
					<script>document.write(new Date().getFullYear())</script>
					, made with <i class="fa fa-heart heart"></i> by <a href="#">Do
						Trong Dung</a>
				</div>
			</div>
		</footer>

	</div>
	</div>
	<!--   Core JS Files   -->
	<script src="/Shop/static/admin/js/jquery.min.js"
		type="text/javascript"></script>
	<script src="/Shop/static/admin/js/bootstrap.min.js"
		type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="/Shop/static/admin/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="/Shop/static/admin/js/chartist.min.js"></script>

	<!--  Notifications Plugin    -->
	<script src="/Shop/static/admin/js/bootstrap-notify.js"></script>

	<!--  Google Maps Plugin    -->
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js"></script>

	<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="/Shop/static/admin/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="/Shop/static/admin/js/demo.js"></script>

</body>
</html>
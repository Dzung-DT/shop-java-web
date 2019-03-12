<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDIT PRODUCT</title>
<link rel="apple-touch-icon" sizes="76x76"
	href="/Shop/static/admin/img/apple-icon.png">
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
					<a class="navbar-brand" href="#">Edit Product</a>
				</div>
			</div>
		</nav>
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">						
							<div class="content table-responsive table-full-width">
								<div>
									<div class="wrapper">
						 				<c:url value="/admin/product/edit" var="url"/>
										    <form class="form-signin" action="${url}" method="post"  enctype="multipart/form-data">
										    <div>${msg}</div>						       
										      <h4 class="form-signin-heading" style="text-align: center;">EDIT PRODUCT</h4>
										      <input type="hidden" name="id" value="${product.id }"/>
										      <label>Name:</label>
										      <input type="text" class="form-control" name="name" value="${product.name}"/>			
										      <label>Quantity:</label>
										      <input class="form-control" name="quantity" type="text" value="${product.quantity}"/>  				       
										      <label>Price:</label>
										      <input type="text" class="form-control" name="price" value="${product.price}"/>  
										      <div class="form-group">
												<label>Category</label>
												<div class="checkbox" >
													<select name="category">
														<c:forEach items="${categories}" var="c">
															<option value="${c.name}">${c.name}</option>
														</c:forEach>
													</select>
												</div>

											</div>
										      <label>Description:</label>
										      <input type="text" class="form-control" name="description" value="${product.description}"/>  	
										      <label>Image:</label>
												<input type="file" class="form-control" name="productFile" value="${product.productFileName }" />		   
										      <button class="btn btn-lg btn-primary btn-block" type="submit">Edit Product</button>   
										    </form>
									  </div>
								</div>
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
</body>
<!--   Core JS Files   -->
<script src="/Shop/static/admin/js/jquery.min.js" type="text/javascript"></script>
<script src="/Shop/static/admin/js/bootstrap.min.js" type="text/javascript"></script>

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

<script type="text/javascript">
	$(document).ready(function() {

		demo.initChartist();

		$.notify({
			icon : 'ti-gift',
			message : "Hello, welcome to edit user page- Do Trong Dung"

		}, {
			type : 'success',
			timer : 4000
		});

	});
</script>
</html>
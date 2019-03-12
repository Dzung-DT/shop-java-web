<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List User</title>
<link rel="apple-touch-icon" sizes="76x76" href="/Shop/static/admin/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/Shop/static/admin/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="/Shop/static/admin/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="/Shop/static/admin/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="/Shop/static/admin/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="/Shop/static/admin/css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="/Shop/static/admin/css/themify-icons.css" rel="stylesheet">
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
	<jsp:include page="../menuAdmin.jsp" />
	<div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                 <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">List Users</a>               
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
                            		<div class="col-sm-4"><h4 class="title">User Information</h4></div>
                            		
                            		<div class="col-sm-4"><h4 class="title">                     										   
										      <label>Add User</label>						     
										      <button class="btn btn-default" type="button"
										     	onclick="location.href='<c:url value='/admin/user/add'/>'" type="button"> 																						      
										      	<i class="ti-plus"></i>
										      </button>									  									      							   
										</form>					   
                            		</div>
                            		<div class="col-sm-4"><h4 class="title">
                            			<c:url value='/admin/user/search' var="url" />	
										<form action="${url}" method="post">
										    <div class="input-group input-group-lg">
										      <input type="text" class="form-control" name="keyword" placeholder="Search user by name...">
										      <div class="input-group-btn">
										        <button class="btn btn-default" type="submit"><i class="ti-search"></i></button>
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
                                        <th>Avatar</th>
										<th>User Name</th>
										<th>Password</th>
										<th>Name</th>
										<th>Age</th>
										<th>Address</th>
										<th>Role</th>
										<th>Select</th>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${userList}" var="u">
										<tr>
											<td>${u.id }</td>
											<c:url value='/image?fileName=${u.avatarFileName }' var="imgUrl"/>
											<td><img src="${imgUrl}" id="product-thumbnail" class="rounded img-thumbnail"/></td>
											<td>${u.username }</td>
											<td>${u.password }</td>
											<td>${u.name }</td>
											<td>${u.age }</td>
											<td>${u.add }</td>
											<td>${u.role }</td>
											<td><a href="<c:url value='/admin/user/delete?uid=${u.id }'/>">DELETE</a> | <a href="<c:url value='/admin/user/edit?uid=${u.id }'/>">EDIT</a></td>
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

                        <li>
                            <a href="#">
                               Do Trong Dung
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Blog
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Licenses
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by <a href="#">Do Trong Dung</a>
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
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="/Shop/static/admin/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="/Shop/static/admin/js/demo.js"></script>

	<script type="text/javascript">
    	$(document).ready(function(){

        	demo.initChartist();

        	$.notify({
            	icon: 'ti-gift',
            	message: "Hello, welcome user profile - Do Trong Dung"

            },{
                type: 'success',
                timer: 4000
            });

    	});
	</script>
</html>
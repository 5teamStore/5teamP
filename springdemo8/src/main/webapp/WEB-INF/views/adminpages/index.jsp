<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>後臺 - 5Steam</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel='stylesheet' href="<c:url value='/css/styles.css' />"
	type="text/css" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<script src="<c:url value='/js/scripts.js' />"></script>

</head>

<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-lg-0 me-0 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fa-solid fa-bars fa-xl"></i>
		</button>
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-4"
			href="<c:url value='/adminpages/adminindex' />">5team</a>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto me-0 me-md-3 my-2 my-md-0">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#!">設定</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="<c:url value='/logout'/>">登出</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">總覽</div>
						<a class="nav-link"
							href="<c:url value='/adminpages/adminindex' />">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-house"></i><i class="bi bi-person-fill"></i>
							</div> 首頁
						</a> <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-people-group"></i>
							</div> 會員
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link"
									href="<c:url value='/adminpages/user/queryUser' />">會員查詢</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts2" aria-expanded="false"
							aria-controls="collapseLayouts2">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-briefcase"></i>
							</div> 員工
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>

						<div class="collapse" id="collapseLayouts2"
							aria-labelledby="headingthree" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link"
									href="<c:url value='/adminpages/employee/queryEmployee' />">員工管理</a>
								<a class="nav-link"
									href="<c:url value='/adminpages/employee/CreateEmployeeForm' />">新增員工</a>

							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts3" aria-expanded="false"
							aria-controls="collapseLayouts3">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-cart-shopping"></i>
							</div> 商品
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts3"
							aria-labelledby="headingthree" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link"
									href="<c:url value='/adminpages/item/queryItem' />">商品管理</a> <a
									class="nav-link"
									href="<c:url value='/adminpages/item/CreateItemForm' />">新增商品</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts4" aria-expanded="false"
							aria-controls="collapseLayouts4">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-envelope"></i>
							</div> 郵件
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts4"
							aria-labelledby="headingthree" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="">寄送郵件</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> 保留
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseAuth" aria-expanded="false"
									aria-controls="pagesCollapseAuth"> Authentication
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseAuth"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="login.html">Login</a> <a
											class="nav-link" href="register.html">Register</a> <a
											class="nav-link" href="password.html">Forgot Password</a>
									</nav>
								</div>
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError"> Error
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseError"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="401.html">401 Page</a> <a
											class="nav-link" href="404.html">404 Page</a> <a
											class="nav-link" href="500.html">500 Page</a>
									</nav>
								</div>
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading"></div>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">目前用戶:</div>
					<div>${sessionScope.myUser.username}</div>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
		
		
		
			<main>


				<div class="container-fluid px-4">
					<h1 class="mt-4">資訊總覽</h1>

					<div class="row">
						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">
												收益 (月份)</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-calendar fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-success shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-success text-uppercase mb-1">
												收益 (年度)</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>


						<!-- Pending Requests Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-warning shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-warning text-uppercase mb-1">
												近期會員註冊數</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-comments fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Area Chart -->
					<div class="col-xl-8 col-lg-7">
						<div class="card shadow mb-4">
							<!-- Card Header - Dropdown -->
							<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
								<h6 class="m-0 font-weight-bold text-primary">收益總覽</h6>
								<div class="dropdown no-arrow">
									<a class="dropdown-toggle" href="#" role="button"
										id="dropdownMenuLink" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> <i
										class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
									</a>
									<div
										class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
										aria-labelledby="dropdownMenuLink">
										<div class="dropdown-header">Dropdown Header:</div>
										<a class="dropdown-item" href="#">Action</a> <a
											class="dropdown-item" href="#">Another action</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="#">Something else here</a>
									</div>
								</div>
							</div>
							<!-- Card Body -->
							<div class="card-body">
								<div class="chart-area">
									<canvas id="myAreaChart"></canvas>
								</div>
							</div>
						</div>
					</div>

				</div>
		</div>


		</main>
		
		
		
		<footer class="py-4 bg-light mt-auto">
			<div class="container-fluid px-4">
				<div class="d-flex align-items-center justify-content-between small">
					<div class="text-muted">Copyright &copy; 5team 2023</div>

				</div>
			</div>
		</footer>
	</div>
	</div>
</body>

</html>
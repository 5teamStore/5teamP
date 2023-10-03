<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>後臺 - 5Steam</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel='stylesheet' href="<c:url value='/css/custom2.css' />"
	type="text/css" />
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
		<a class="navbar-brand ps-4" href="<c:url value='/adminpages/adminindex' />">5team</a>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto me-0 me-md-3 my-2 my-md-0">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#!">設定</a></li>
					<li>
						<hr class="dropdown-divider" />
					</li>
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
						<a class="nav-link" href="<c:url value='/adminpages/adminindex' />">
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
								<a class="nav-link" href="<c:url value='/adminpages/user/queryUser' />">會員查詢</a> 
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
								<a class="nav-link" href="<c:url value='/adminpages/employee/queryEmployee' />">員工管理</a> 
								<a class="nav-link" href="<c:url value='/adminpages/employee/CreateEmployeeForm' />">新增員工</a> 
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
								<a class="nav-link" href="<c:url value='/adminpages/item/queryItem' />">商品管理</a> 
								<a class="nav-link" href="<c:url value='/adminpages/item/CreateItemForm' />">新增商品</a> 
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
				<div class="main-content">
					<div class="row">
						<div class="col-md-12">
							<div class="table-title">
								<div class="row">
									<div
										class="col-sm-6 p-0 d-flex justify-content-lg-start justify-content-lg-start">
										<h2 class="ml-lg-2">編輯會員資料</h2>
									</div>

								</div>
							</div>
							<table class="table">
								<tbody>
									<tr>
										<td colspan="2" class="table-active">會員編號</td>
										<th scope="row"><input type="text" placeholder="編號"
											class="form-control" disabled></th>
										<td colspan="2" class="table-active">創建日期</td>
										<th scope="row"><input type="text" placeholder="創建日期"
											class="form-control" disabled></th>
									</tr>
									<tr>
										<td colspan="2" class="table-active">會員帳號</td>
										<th scope="row"><input type="text" placeholder="帳號"
											class="form-control" disabled></th>
										<td colspan="2" class="table-active">會員密碼</td>
										<th scope="row"><input type="password"
											class="form-control" placeholder="密碼"></th>
									</tr>
									<tr>
										<td colspan="2" class="table-active">姓名</td>
										<th scope="row"><input type="text" placeholder="姓名"
											class="form-control" required></th>
										<td colspan="2" class="table-active">生日</td>
										<th scope="row"><input type="date" placeholder="生日"
											class="form-control" required></th>
									</tr>
									<tr>
										<td colspan="2" class="table-active">Email</td>
										<th colspan="4" scope="row"><input type="text"
											placeholder="Email" class="form-control" required></th>
									</tr>
									<tr>
										<td colspan="2" class="table-active">性別</td>
										<th colspan="4" scope="row">
											<div class="col-sm-6">
												<div class="col-sm-12">
													<lable>男</lable>
													<input type="radio" name="gender">
													<lable>女</lable>
													<input type="radio" name="gender">
												</div>
											</div>
										</th>
									</tr>
									<tr>
										<td colspan="2" class="table-active">會員等級</td>
										<th colspan="4" scope="row"><select
											class="form-select form-select-sm"
											aria-label="Small select example">
												<option selected value="1">銅牌</option>
												<option value="2">銀牌</option>
												<option value="3">金牌</option>
												<option value="4">鑽石</option>
										</select></th>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="row" style="text-align: center;">
							<div>
								<button type="submit" class="btn btn-primary"
									style="width: 100px;">確認送出</button>
							</div>
						</div>
					</div>
				</div>
			</main>


			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2023</div>

					</div>
				</div>
			</footer>
		</div>
	</div>
</body>

</html>
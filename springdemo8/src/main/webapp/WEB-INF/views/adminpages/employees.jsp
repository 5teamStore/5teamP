<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<link rel='stylesheet' href="<c:url value='/css/custom.css' />"
	type="text/css" />
<link rel='stylesheet' href="<c:url value='/css/styles.css' />"
	type="text/css" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<script src="<c:url value='/js/scripts.js' />"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	function deleteEmployee(ids, empno) {
		if (confirm('確定要刪除員工編號為: ' + empno + ' 這筆紀錄?')) {
			let url = "<c:url value='/adminpages/employee/EmployeeDelete' />"
					+ "/" + ids;

			// 创建一个表单并设置属性
			let form = document.createElement('form');
			form.method = 'POST';
			form.action = url;

			// 添加 empNo 字段
			let input1 = document.createElement("input");
			input1.type = "hidden";
			input1.name = "empNo";
			input1.value = empno;
			form.appendChild(input1);

			// 添加 _method 字段
			let input2 = document.createElement("input");
			input2.type = "hidden";
			input2.name = "_method";
			input2.value = "DELETE";
			form.appendChild(input2);

			// 添加 CSRF 令牌字段
			let csrfInput = document.createElement("input");
			csrfInput.type = "hidden";
			csrfInput.name = "${_csrf.parameterName}";
			csrfInput.value = "${_csrf.token}";
			form.appendChild(csrfInput);

			document.body.appendChild(form); // 将表单添加到页面中
			form.submit(); // 提交表单

			return true;
		} else {
			return false;
		}
	}

	function queryEmployeeByKeyword() {
		var keyword = document.getElementById('form1').value;
		window.location.href = '/adminpages/employee/queryEmployeeByKeyword?keyword=' + keyword;
	}
</script>

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




			<div class="input-group">
				<div class="form-outline">
					<input type="search" id="form1" class="form-control"
						placeholder="搜尋" />
				</div>
				<button type="button" class="btn btn-primary"
					onclick="queryEmployeeByKeyword()">
					<i class="fas fa-search"></i>
				</button>
			</div>





			<main>
				<div class="main-content">
					<div class="row">
						<div class="col-md-12">
							<div class="table-title">
								<div class="row">
									<div
										class="col-sm-6 p-0 d-flex justify-content-lg-start justify-content-lg-start">
										<h2 class="ml-lg-2">員工資料管理</h2>
									</div>
									<div
										class="col-sm-6 p- d-md-inline-block justify-content-lg-end justify-content-lg-end">

										<a
											href="<c:url value='/adminpages/employee/CreateEmployeeForm' />"
											class="btn btn-success" data-toggle="modal"> <i
											class="fa-sharp fa-light fa-square-plus" id="material-icons"></i>
											<b>新增員工</b>
										</a>

									</div>
								</div>
							</div>


							<!-- Modal -->
							<div class="modal fade" id="successModal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<p>${message}</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">關閉</button>
										</div>
									</div>
								</div>
							</div>


							<table class="table table-striped table-hover">
								<thead>
									<tr>
										<th>員工編號</th>
										<th>姓名</th>
										<th>Email</th>
										<th>圖片</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>


									<c:forEach var='employee' items='${employeeList}'>
										<tr>
											<td>${employee.employeeId}</td>
											<td>${employee.name}</td>
											<td>${employee.email}</td>
											<td><img width='50' height='60'
												src='${employee.dataUri}'></td>
											<td><a class="edit"
												href="<c:url value='/adminpages/employee/findById/${employee.id}' />">
													<i class="fa-sharp fa-light fa-pen" id="material-icons"></i>
											</a> <a class="delete"
												onclick="return deleteEmployee('${employee.id}', '${employee.employeeId}');">
													<i class="fa-sharp fa-light fa-trash" id="material-icons"></i>
											</a></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>


							<!-- 分頁控制 -->
							<div class="clearfix">
								<div class="hint-text">
									<!-- 顯示當前頁數範圍與總數量 -->
									顯示第 <b id="start">${startIndex + 1}</b> 至 <b id="end">${endIndex + 1}</b>
									筆，共有 <b id="total">${fn:length(employeeList)}</b> 筆
								</div>
								<ul class="pagination">
									<!-- 上一頁按鈕 -->
									<li class="page-item ${currentPage == 1 ? 'disabled' : ''}"
										id="previousPage"><c:if test="${currentPage != 1}">
											<a href="?page=${currentPage - 1}" class="page-link">上一頁</a>
										</c:if></li>

									<!-- 頁碼按鈕 -->
									<c:forEach var="page" begin="1" end="${totalPages}"
										varStatus="status">
										<li class="page-item ${currentPage == page ? 'active' : ''}">
											<c:if test="${currentPage != page}">
												<a href="?page=${page}" class="page-link">${page}</a>
											</c:if>
										</li>
									</c:forEach>

									<!-- 下一頁按鈕 -->
									<li
										class="page-item ${currentPage == totalPages ? 'disabled' : ''}"
										id="nextPage"><c:if test="${currentPage != totalPages}">
											<a href="?page=${currentPage + 1}" class="page-link">下一頁</a>
										</c:if></li>
								</ul>
							</div>


						</div>
					</div>
				</div>
			</main>
			<form action="#" method='POST'></form>

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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Quản lý danh mục sản phẩm</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

 	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminMenuQuanly.jsp"></jsp:include>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Quản lý danh mục sản phẩm</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item active">quản lý danh mục sản phẩm</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
     <p>
     <a href="Themdanhmucsanpham.jsp" class="btn btn-success">
         <i class="bi bi-file-earmark-text me-1"></i>Thêm danh mục</a>
 </p>
      <div class="row">
        <div class="col-12">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>ID</th>
                <th>Tên danh mục</th>
                <th>Thay đổi</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="category" items="${Dtcategory}">
                <tr>
                  <td>${category.categoryid}</td>
                  <td>${category.name}</td>
				  <td>
				  		<a href="AUpdateDanhmucServlet?ctid=${category.categoryid}" class="btn btn-primary btn-sm" title="Cập nhậtdanh mục sản phẩm"><i class="bi bi-pencil"></i></a> | 
						<a href="AdDeleteDanhmucServlet?ctid=${category.categoryid}" class="btn btn-danger btn-sm" title="Xóa danh mục sản phẩm"><i class="bi bi-trash"></i></a>
				 </td>
				</tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
 <jsp:include page="AdminFooter.jsp"></jsp:include>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
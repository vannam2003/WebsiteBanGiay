<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Thêm sản phẩm</title>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

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
      <h1>Thêm Sản Phẩm Mới</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item active">Thêm Sản Phẩm</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <form action="AaddProductServlet" method="get" enctype="multipart/form-data">

        <!-- Tên Sản Phẩm -->
        <div class="mb-3">
          <label for="productname" class="form-label">Tên Sản Phẩm</label>
          <input type="text" class="form-control" id="productname" name="productname" required>
        </div>

        <!-- Mô Tả Sản Phẩm -->
        <div class="mb-3">
          <label for="title" class="form-label">Mô Tả Sản Phẩm</label>
          <textarea class="form-control" id="title" name="title" rows="3" required></textarea>
        </div>

        <!-- Giá Sản Phẩm -->
        <div class="mb-3">
          <label for="price" class="form-label">Giá Sản Phẩm</label>
          <input type="number" class="form-control" id="price" name="price" required step="0.01">
        </div>

        <!-- Giảm giá -->
        <div class="mb-3">
          <label for="sale" class="form-label">Giảm Giá (%)</label>
          <input type="number" class="form-control" id="sale" name="sale" required min="0" max="100">
        </div>

        <!-- Chọn Danh Mục Sản Phẩm -->
        <div class="mb-3">
          <label for="categoryid" class="form-label">Loại danh mục</label>
          <input class="form-select" id="categoryid" name="categoryid" required>
          </input>
        </div>

        <!-- Hình ảnh sản phẩm -->
        <div class="mb-3">
          <label for="img" class="form-label">Ảnh Chính</label>
          <input type="file" class="form-control" id="img" name="img" required>
        </div>

        <!-- Ảnh Sản Phẩm 2 -->
        <div class="mb-3">
          <label for="img2" class="form-label">Ảnh Sản Phẩm 2</label>
          <input type="file" class="form-control" id="img2" name="img2">
        </div>

        <!-- Ảnh Sản Phẩm 3 -->
        <div class="mb-3">
          <label for="img3" class="form-label">Ảnh Sản Phẩm 3</label>
          <input type="file" class="form-control" id="img3" name="img3" >
        </div>

        <!-- Ảnh Sản Phẩm 4 -->
        <div class="mb-3">
          <label for="img4" class="form-label">Ảnh Sản Phẩm 4</label>
          <input type="file" class="form-control" id="img4" name="img4" >
        </div>

        <!-- Button Submit -->
        <button type="submit" class="btn btn-success">Thêm Sản Phẩm</button>
        <a class="btn btn-success" href="AdminQuanlysanpham">Quay lại</a>
      </form>
    </section>

  </main><!-- End #main -->

  <jsp:include page="AdminFooter.jsp"></jsp:include>

  <!-- JS Scripts -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/main.js"></script>

</body>

</html>

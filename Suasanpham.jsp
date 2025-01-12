<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
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
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <title>Cập nhật sản phẩm</title>
</head>
<body>
  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <jsp:include page="AdminMenuQuanly.jsp"></jsp:include>

  <main id="main" class="main">
	 <h2>Sửa Thông Tin Sản Phẩm</h2>

  <!-- Form Sửa Sản Phẩm -->
  <form action="AUpdateProductServlet" method="post">
    <div class="form-group">
      <label for="productName">Tên sản phẩm</label>
      <input type="text" class="form-control" id="productName" name="productName" value="${product.productname}" required>
    </div>
    <div class="form-group">
      <label for="title">Tiêu đề</label>
      <input type="text" class="form-control" id="title" name="title" value="${product.title}" required>
    </div>
    <div class="form-group">
      <label for="price">Giá sản phẩm</label>
      <input type="number" class="form-control" id="price" name="price" value="${product.price}" required>
    </div>
    <div class="form-group">
      <label for="img">Ảnh sản phẩm</label>
      <input type="text" class="form-control" id="img" name="img" value="${product.img}">
    </div>
    <div class="form-group">
      <label for="img2">Ảnh 2</label>
      <input type="text" class="form-control" id="img2" name="img2" value="${product.img2}">
    </div>
    <div class="form-group">
      <label for="img3">Ảnh 3</label>
      <input type="text" class="form-control" id="img3" name="img3" value="${product.img3}">
    </div>
    <div class="form-group">
      <label for="img4">Ảnh 4</label>
      <input type="text" class="form-control" id="img4" name="img4" value="${product.img4}">
    </div>
    <div class="form-group mb-4">
      <label for="sale">Khuyến mãi</label>
      <input type="number" class="form-control" id="sale" name="sale" value="${product.sale}">
    </div>
    
    <input type="hidden" name="productid" value="${product.productid}" />
    <button type="submit" class="btn btn-primary">Cập nhật</button>
    <a href="AdminQuanlysanpham">
    	<div class="btn btn-primary">Thoát</div>
    </a>
  </form>
  </main>

  <jsp:include page="AdminFooter.jsp"></jsp:include>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>

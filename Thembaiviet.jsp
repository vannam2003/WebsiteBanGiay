<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Thêm bài viết</title>
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
      <h1>Thêm bài viết mới</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item active">Thêm bài viết</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <form action="AaddNewsServlet" method="get" enctype="multipart/form-data">

        <div class="mb-3">
          <label for="productname" class="form-label">Tiêu đề bài viết</label>
          <input type="text" class="form-control" id="title" name="title" required>
        </div>

        <div class="mb-3">
          <label for="title" class="form-label">Tác giả</label>
          <textarea class="form-control" name="author" required></textarea>
        </div>       
        <div class="mb-3">
          <label for="img" class="form-label">Hình ảnh</label>
          <input type="file" class="form-control" id="img" name="img" required>
        </div>
			<div class="mb-3">
          <label for="title" class="form-label">Nội dung bài viết</label>
          <textarea class="form-control" name="contents" rows="5" required></textarea>
        </div>  

        <!-- Button Submit -->
        <button type="submit" class="btn btn-success">Thêm bài viết</button>
        <a class="btn btn-success" href="AdminQuanlybaiviet">Quay lại</a>
      </form>
    </section>

  </main><!-- End #main -->

  <jsp:include page="AdminFooter.jsp"></jsp:include>

  <!-- JS Scripts -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/main.js"></script>

</body>

</html>

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

  <title>Cập nhật bài viết</title>
</head>
<body>
  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <jsp:include page="AdminMenuQuanly.jsp"></jsp:include>

  <main id="main" class="main">
	 <h2>Sửa thông tin bài viết</h2>

  <!-- Form Sửa Sản Phẩm -->
  <form action="AUpdateNewsServlet" method="post">
    <div class="form-group">
      <label for="productName">Tiêu đề bài viết</label>
      <input type="text" class="form-control" name="title" value="${dtnews.title}" required>
    </div>
    <div class="form-group">
      <label for="title">Tác giả</label>
      <input type="text" class="form-control" name="author" value="${dtnews.author}" required>
    </div>
    <div class="form-group">
      <label for="img2">Hình ảnh</label>
      <input type="text" class="form-control"  name="img" value="${dtnews.img}">
    </div>
   
   <div class="form-group mb-4">
    <label for="contents">Nội dung bài viết</label>
    <textarea class="form-control" name="contents" rows="5">${dtnews.contents}</textarea>
</div>

    
    <input type="hidden" name="nid" value="${dtnews.newsid}" />
    <button type="submit" class="btn btn-primary">Cập nhật</button>
    <a href="AdminQuanlybaiviet">
    	<div class="btn btn-primary">Thoát</div>
    </a>
  </form>
  </main>

  <jsp:include page="AdminFooter.jsp"></jsp:include>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>

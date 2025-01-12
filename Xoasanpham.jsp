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

  <title>Xác nhận xóa sản phẩm</title>
</head>
<body>
  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <jsp:include page="AdminMenuQuanly.jsp"></jsp:include>

  <main id="main" class="main">
    <div class="container mt-4">
      <div class="card">
        <div class="card-header text-center bg-danger text-white">
          <h2>Xác nhận xóa sản phẩm</h2>
        </div>
        <div class="card-body">
          <p class="fw-bold">Thông tin sản phẩm:</p>
          <table class="table table-bordered">
            <tbody>
              <tr>
                <th scope="row" style="width: 30%;">Tên sản phẩm:</th>
                <td>${product.productname}</td>
              </tr>
              <tr>
                <th scope="row">Tiêu đề:</th>
                <td>${product.title}</td>
              </tr>
              <tr>
                <th scope="row">Giá:</th>
                <td>${product.price}.000 đ</td>
              </tr>
              <tr>
                <th scope="row">Ảnh sản phẩm:</th>
                <td><img src="img/product/${product.img}" alt="Product Image" class="img-thumbnail" style="max-width: 150px;"></td>
              </tr>
            </tbody>
          </table>
          <div class="text-center mt-4">
            <form action="AdDeleteProductServlet?pid=${product.productid}" method="post" class="d-inline">
              <button type="submit" class="btn btn-danger px-4">Xóa sản phẩm</button>
            </form>
            <form action="AdminQuanlysanpham" method="get" class="d-inline">
              <button type="submit" class="btn btn-secondary px-4">Hủy bỏ</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </main>

  <jsp:include page="AdminFooter.jsp"></jsp:include>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>

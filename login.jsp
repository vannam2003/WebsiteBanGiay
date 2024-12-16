<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="fonts/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/reponsive.css">
    <title>Đăng ký / Đăng nhập</title>
    <style>
        .modal-login {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .modal-dialog {
            max-width: 500px;
        }

        .is-invalid {
            color: red;
            display: none;
        }

            .is-invalid.show {
                display: block;
            }
            .oline img {
    width: 40px; /* Hoặc kích thước bạn muốn */
    height: 40px;
    object-fit: cover;
    border-radius: 50%; /* Nếu muốn các hình tròn */
    margin: 0 10px; /* Tạo khoảng cách giữa các biểu tượng */
}
            
    </style>
</head>
<body>
    <div class="modal-login">
        <div class="modal-dialog">
            <div class="modal-content">
               <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
    <li class="nav-item" role="presentation">
        <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Đăng nhập</button>
    </li>
    <li class="nav-item" role="presentation">
        <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Đăng ký</button>
    </li>
</ul>
<div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
        <!-- Nội dung Đăng nhập -->
		       <form action="LoginServlet" method="post">
		    <div class="modal-inner">
		        <!-- Hiển thị thông báo lỗi nếu có -->
		        <c:if test="${not empty mess}">
		            <div class="alert alert-danger" role="alert">
		                ${mess}
		            </div>
		        </c:if>
		
		        <input type="text" name="user" class="user-name" placeholder="Nhập tài khoản" required>
		        <input type="password" name="pass" class="pass" placeholder="Nhập mật khẩu" required>
		
		        <button type="submit" class="login">Đăng nhập</button>
		
		        <div class="row">
		            <div class="col-6 save">
		                <input type="checkbox"> Lưu mật khẩu
		            </div>
		            <div class="col-6 forget text-end">
		                <a href="">Quên mật khẩu</a>
		            </div>
		        </div>
		
		        <p class="text-center">Hoặc đăng nhập bằng</p>
		        <div class="oline d-flex justify-content-center">
		            <a href=""><img src="img/facebook.png" alt=""></a>
		            <a href=""><img src="img/google.png" alt=""></a>
		        </div>
		    </div>
		</form>
    </div>
    
   <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
    <!-- Nội dung Đăng ký -->
<div class="modal-inner">
    <form action="RegisterServlet" method="post" id="register-form">
        <div class="regis">
            <!-- Tài khoản -->
            <input type="text" id="username" name="user" class="user-name" placeholder="Tài khoản" required>
            <p id="wrong-user" class="wrong-user is-invalid">Tài khoản phải có độ dài 6-12 kí tự và không chứa kí tự đặc biệt</p>

            <!-- Mật khẩu -->
            <input type="password" id="password" name="pass" class="pass" placeholder="Mật khẩu" required>
            <p id="wrong-pass" class="wrong-pass is-invalid">Mật khẩu phải có độ dài 6-12 kí tự.</p>

            <!-- Nhập lại mật khẩu -->
            <input type="password" id="confirm-password" name="confirmPass" class="again" placeholder="Nhập lại mật khẩu" required>
            <p id="wrong-again" class="wrong-again is-invalid">Mật khẩu phải có độ dài 6-12 kí tự và khớp với mật khẩu trên.</p>

            <!-- Nút đăng ký -->
            <button type="submit" class="register-button">Đăng ký</button>
        </div>
    </form>
</div>

</div>

    
</div>

            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/favicon.png"
    type="image/x-icon" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="fonts/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" integrity="sha512-+EoPw+Fiwh6eSeRK7zwIKG2MA8i3rV/DGa3tdttQGgWyatG/SkncT53KHQaS5Jh9MNOT3dmFL0FjTY08And/Cw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/contact.css">
    <link rel="stylesheet" href="css/reponsive.css">
    <title>Liên hệ</title>
</head>
<body>
    <div class="container-fluid">
    
		<jsp:include page="Menu.jsp"></jsp:include>
		
        <div class="banner">
            <div class="inner">
                <div class="container text-center">
                    <p class="title-heading">Liên hệ</p>
                    <p class="intro">Trang chủ/Liên hệ</p>
                </div>
            </div>
        </div>
        <div class="contact-us">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="info">
                            <div class="info-heading">Thông tin</div>
                            <div class="addresss d-flex align-items-center">
                                <i class="fas fa-map-marked-alt"></i>
                                <p>51 Huỳnh Thúc Kháng - phường Bến Thủy - TP.Vinh - Nghệ An</p>
                            </div>
                            <hr class="dashed">
                            <div class="phone d-flex align-items-center">
                                <i class="fas fa-phone"></i>
                                <p>Mobile: (+84) 012.445.6789
       							</p>
                            </div>
                            <hr class="dashed">
                            <div class="email d-flex align-items-center">
                                <i class="fas fa-envelope"></i>
                                <p>vannam512003@gmail.com
                                    </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <p class="content">Nội dung liên hệ</p>
                        <div class="inputs">
                            <div class="name">
                                Họ tên 
                                <input type="text">
                            </div>
                            <div class="email">
                                Email
                                <input type="text">
                            </div>
                            <div class="title">
                                Tiêu đề
                                <input type="text">
                            </div>
                            <div class="message">
                                Tin nhắn
                                <textarea name="" id="textarea" cols="30" rows="10"></textarea>
                            </div>
                            <div class="text-center">
                                <button class="btn">Gửi</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="map text-center">
            <div class="container">
                <p class="map-title">Địa chỉ</p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14893.840085796315!2d105.72339285!3d21.0542813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1635956971552!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    
	<jsp:include page="Footer.jsp"></jsp:include>

    </div>
    <script>
        //reponsive
    document.querySelector('.navbar-toggler').addEventListener('click',()=>{
    document.querySelector('.responsive-navbar').classList.toggle('hide')
    })

    </script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="js/addcart.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js" integrity="sha512-IsNh5E3eYy3tr/JiX2Yx4vsCujtkhwl7SLqgnwLNgf04Hrt9BT9SXlLlZlWx+OK4ndzAoALhsMNcCmkggjZB1w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- <script src="js/cart.js"></script> -->
    <script src="js/validation.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="fonts/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="css/allnews.css">
    <link rel="stylesheet" href="css/reponsive.css">
    <title>Tin tức</title>
</head>

<body>
    <div class="container-fluid">
			<jsp:include page="Menu.jsp"></jsp:include>
        <div class="banner">
            <div class="inner">
                <div class="container text-center">
                    <p class="title-heading">Tin tức</p>
                    <p class="intro">
                        <a href="">Trang chủ </a>/<a href=""> Tin tức </a>
                    </p>
                </div>
            </div>
        </div>

        <div class="allnews">
            <div class="container">
                <div class="text-center">
                    <p class="new">Tin tức</p>
                </div>
                <div class="news">
             	<c:forEach items="${DataTrangtintuc }" var="listalltintuc">
             		  <div class="news1">
                        <a href="news1.html">
                            <div class="row">
                                <div class="col-lg-6">
                                    <img src="img/bangtin/${listalltintuc.img }" alt="">
                                </div>
                                <div class="col-lg-6">
                                    <div class="news-heading">${listalltintuc.title }
                                    </div>
                                    <p class="news-intro">${listalltintuc.contents }</p>
                                    <div class="author-news">
                                        <div class="row">
                                            <div class="col-lg-6 order-2 d-flex">
                                                <p>Tác giả:</p>
                                                <p class="name">${listalltintuc.author}</p>
                                            </div>
                                            <div class="col-lg-6 order-1">
                                                <i class="far fa-clock"></i>${listalltintuc.datetime}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
             	</c:forEach>
                 
                </div>
            </div>
        </div>
		<jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <script>
        //reponsive
        document.querySelector('.navbar-toggler').addEventListener('click', () => {
            document.querySelector('.responsive-navbar').classList.toggle('hide')
        })
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <!-- <script src="js/cart.js"></script> -->
    <script src="js/addcart.js"></script>
    <script src="js/validation.js"></script>
</body>

</html>
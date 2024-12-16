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
    <link rel="stylesheet" href="css/shop.css">
    <link rel="stylesheet" href="css/reponsive.css">
    <title>Sản phẩm</title>
</head>
<body>
    <div class="container-fluid">
    
		<jsp:include page="Menu.jsp"></jsp:include>
		 <div class="banner">
     <div class="inner">
         <div class="container text-center">
             <p class="title-heading">SẢN PHẨM</p>
             <p class="intro"><a href="index.html">Trang chủ</a>/ <a href="shop.html">Sản phẩm</a></p>
         </div>
     </div>
 </div>
        <div class="shop">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-12">
                        <div class="filter">
                           <jsp:include page="Category.jsp"></jsp:include>
                          
                        </div>
                       	<jsp:include page="SanPhamMoiNhat.jsp"></jsp:include>
                    </div>
                    <div class="col-lg-9 col-12">
                        <div class="boloc d-flex">
                            <p class="giacao"><i class="fas fa-sort-amount-up"></i>Giá cao</p>
                            <p class="giathap"><i class="fas fa-sort-amount-down-alt"></i>Giá thấp</p>
                            <p class="xemnhieu"><i class="fas fa-eye"></i>Xem nhiều</p>
                        </div>
                        <div class="trang1 trang">
                            <div class="row">
							
							<c:forEach items="${DataAllProduct }" var="listallproduct">
								 <div class="col-lg-4 col-md-6  nopadding ban">
                                    <div class="product">
                                        <a href="Detail?pid=${listallproduct.productid}&Cateid=${listallproduct.categoryid}">
                                            <img src="img/product/${listallproduct.img }" alt="" class="product-img">
                                            <div class="product-info">
                                                <p class="name-product text-center">${listallproduct.productname }</p>
                                                <div class="price-product text-center d-flex align-items-center">
                                                    <p class="price">${listallproduct.pricesale }.000 đ</p>
                                                    <p class="root-price">${listallproduct.price }.000 đ</p>
                                                </div>
                                                <div class="rate d-flex">
                                                    <div class="stars">
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                    </div>
                                                    <div class="rate-number">
                                                        <p>16 đánh giá</p>
                                                    </div>
                                                </div>
                                                <div class="buttons d-flex ">
                                                    <button class="addCart" onclick="addToCart('b3','Bàn Narro Black Side', 10,2200000, 'img/ban/ban3/ban3.1.webp',300000)"><i class="fas fa-cart-plus"></i>   Thêm vào giỏ</button>
                                                    <!-- <button class="buyNow">Mua ngay</button> -->
                                                </div>
                                            </div>
                                        </a>
                                        <div class="discount">
                                            ${listallproduct.sale}
                                        </div>
                                    </div>
                                </div> 
							</c:forEach>
							
							                         
                            </div>
                        </div>
                        <div class="pagination justify-content-center d-flex">
                            <div class="btn btn-prev align-items-center d-flex"><i class="fas fa-angle-double-left"></i></div>
                            <div class="btn btn-number" page="1">1</div>
                            <div class="btn btn-number" page="2">2</div>
                            <div class="btn btn-number" page="3">3</div>
                            <div class="btn btn-next align-items-center d-flex"><i class="fas fa-angle-double-right"></i></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      <jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <!-- <script src="js/addcart.js"></script> -->
    <script src="js/addcart.js"></script>
    <script src="js/shop.js"></script>
    <script src="js/validation.js"></script>
</body>
</html>
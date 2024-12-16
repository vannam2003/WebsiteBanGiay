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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="fonts/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/reponsive.css">
    <title>Trang chủ</title>
</head>
<body>
    <div class="container-fluid">
      <jsp:include page="Menu.jsp"></jsp:include>
        <div class="buy-success d-flex justify-content-center align-items-center hide">
            <p>Đặt hàng thành công</p>
        </div>
        <div class="banner text-center">
            <div class="inner">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <div
                                id="banner-carousel"
                                class="carousel slide"
                                data-bs-ride="carousel">
                                <div class="carousel-inner">
                                    <div
                                        class="carousel-item active"
                                        data-bs-interval="3000"
                                    >
                                        <p class="banner-sub-heading">
                                            Khuyến Mãi Lớn
                                        </p>
                                        <hr class="dashed" />
                                        <h2 class="banner-heading">
                                          (Giảm tới 50% tất cả các mặt hàng trong dịp đặc biệt nhằm chi ân khách hàng đã ủng hộ chúng tôi).
                                        </h2>
                                        
                                        <a href="#" class="btn btn-white btn-animated">Chi Tiết</a>
                                    </div>
          
                                    <div
                                        class="carousel-item"
                                        data-bs-interval="3000"
                                    >
                                        <p class="banner-sub-heading">
                                          THIẾT KẾ ẤN TƯỢNG,ĐỘC ĐÁO
                                        </p>
                                        <hr class="dashed" />
                                        <h2 class="banner-heading">
                                          Chúng tôi mang đến những thiết kế độc đáo cho không gian sống của bạn thêm mới mẻ
                                        </h2>
                                        
                                        <a href="#" class="btn btn-white btn-animated">Chi Tiết</a>
                                    </div>
          
                                    <div
                                        class="carousel-item"
                                        data-bs-interval="3000"
                                    >
                                        <p class="banner-sub-heading">
                                          SỰ KẾT HỢP MỚI MẺ
                                        </p>
                                        <hr class="dashed" />
                                        <h2 class="banner-heading">
                                            Với những sáng tạo không ngừng,chúng tôi luôn kết hợp các sản phẩm đẹp mắt,phù hợp và ấn tượng.
                                        </h2>
                                        
                                        <a href="#" class="btn btn-white btn-animated">Chi Tiết</a>
                                    </div>
          
                                    <div
                                        class="carousel-item"
                                        data-bs-interval="3000"
                                    >
                                        <p class="banner-sub-heading">
                                            PHONG CÁCH HỆN ĐẠI
                                        </p>
                                        <hr class="dashed" />
                                        <h2 class="banner-heading">
                                            Luôn cập nhập xu hướng mới nhất để đêm cho khách hàng sản phẩm tốt nhất phục vụ khách hàng
                                        </h2>
                                        
                                        <a href="#" class="btn btn-white btn-animated">Chi Tiết</a>
                                    </div>
                                </div>
          
                                <div class="carousel-indicators">
                                    <div
                                        class="indicator active"
                                        data-bs-target="#banner-carousel"
                                        data-bs-slide-to="0"
                                        aria-current="true"
                                        aria-label="Slide 1"
                                    >
                                        <div class="timmer"></div>
                                        <!-- <div class="text">
                                            <span class="slide-number">01</span>
                                            Intro
                                        </div> -->
                                    </div>
                                    <div
                                        class="indicator"
                                        data-bs-target="#banner-carousel"
                                        data-bs-slide-to="1"
                                        aria-label="Slide 2"
                                    >
                                        <div class="timmer"></div>
                                        <!-- <div class="text">
                                            <span class="slide-number">02</span>
                                            Intro
                                        </div> -->
                                    </div>
                                    <div
                                        class="indicator"
                                        data-bs-target="#banner-carousel"
                                        data-bs-slide-to="2"
                                        aria-label="Slide 3"
                                    >
                                        <div class="timmer"></div>
                                        <!-- <div class="text">
                                            <span class="slide-number">03</span>
                                            Intro
                                        </div> -->
                                    </div>
                                    <div
                                        class="indicator"
                                        data-bs-target="#banner-carousel"
                                        data-bs-slide-to="3"
                                        aria-label="Slide 4"
                                    >
                                        <div class="timmer"></div>
                                        <!-- <div class="text">
                                            <span class="slide-number">04</span>
                                            Intro
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="service text-center">
            <div class="container">
                <div class="service-slider">
                    <div class="service1">
                        <div class="service-icon">
                            <i class="fas fa-share"></i>
                          </div>
                          <div class="service-title">
                            Phương thức đổi trả
                          </div>
                          <hr class="slash">
                          <div class="service-text">
                            Đổi trả miễn phí trong vòng 30 ngày
                          </div>
                    </div>
                    <div class="service1">
                        <div class="service-icon">
                            <i class="fas fa-truck"></i>
                          </div>
                          <div class="service-title">
                            Miễn phí giao hàng
                          </div>
                          <hr class="slash">
                          <div class="service-text">
                            Áp dụng với tất cả các sản phẩm
                          </div>
                    </div>
                    <div class="service1">
                        <div class="service-icon">
                            <i class="fas fa-headphones-alt"></i>
                          </div>
                          <div class="service-title">
                            Hỗ trợ trực tuyến
                          </div>
                          <hr class="slash">
                          <div class="service-text">
                            Luôn hỗ trợ về mọi câu hỏi
                          </div>
                    </div>
                    <div class="service1">
                        <div class="service-icon">
                            <i class="fab fa-angellist"></i>
                          </div>
                          <div class="service-title">
                            Ưu đãi và khuyến mại
                          </div>
                          <hr class="slash">
                          <div class="service-text">
                            Luôn có nhiều mã giảm giá cho bạn
                          </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="feature-products text-center">
            <div class="container">
                <div class="feature-heading">Sản phẩm nổi bật</div>
                <div class="feature-intro">Các sản phẩm mới luôn có sẵn trong cửa hàng</div>
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Sản phẩm mới</button>
                    </li>
                    <li class="nav-item" role="presentation">
                      <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Đang khuyến mại</button>
                    </li>
                </ul>
                  <div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<div class="product-slider1">
							<div class="container">
								<div class="slider">
									<c:forEach items="${DataSanphammoi }" var="listsanphammoi">
										<div class="product">
											<a href="Detail?pid=${listsanphammoi.productid}&Cateid=${listsanphammoi.categoryid}"> <img
												src="img/product/${listsanphammoi.img }" alt=""
												class="product-img">
												<div class="product-info">
													<p class="name-product text-center">${listsanphammoi.productname }</p>
													<div
														class="price-product text-center d-flex align-items-center">
														<p class="price">${listsanphammoi.pricesale }.000 đ</p>
														<p class="root-price">${listsanphammoi.price }.000 đ</p>
													</div>
													<div class="rate d-flex">
														<div class="stars">
															<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
																class="fas fa-star"></i> <i class="fas fa-star"></i> <i
																class="fas fa-star"></i>
														</div>
														<div class="rate-number">
															<p>16 đánh giá</p>
														</div>
													</div>
													<div class="buttons d-flex ">
														<button class="addCart"
															onclick="addToCart('b3','Bàn Narro Black Side', 10,2200000, 'img/ban/ban3/ban3.1.webp',300000)">
															<i class="fas fa-cart-plus"></i> Thêm vào giỏ
														</button>
														<!-- <button class="buyNow">Mua ngay</button> -->
													</div>
												</div>
											</a>
											<!-- <div class="discount">
     											-20%
 											</div> -->
										</div>
									</c:forEach>

								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <div class="product-slider1">
							<div class="slider">
								
								<c:forEach items="${DataDanggiamgia }" var="listdanggiamgia">
									<div class="product">
									<a href="Detail?pid=${listdanggiamgia.productid}&Cateid=${listdanggiamgia.categoryid}"> <img src="img/product/${listdanggiamgia.img }"
										alt="" class="product-img">
										<div class="product-info">
											<p class="name-product text-center">${listdanggiamgia.productname }</p>
											<div
												class="price-product text-center d-flex align-items-center">
												<p class="price">${listdanggiamgia.pricesale }.000 đ</p>
												<p class="root-price">${listdanggiamgia.price }.000 đ</p>
											</div>
											<div class="rate d-flex">
												<div class="stars">
													<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
														class="fas fa-star"></i> <i class="fas fa-star"></i> <i
														class="fas fa-star"></i>
												</div>
												<div class="rate-number">
													<p>21 đánh giá</p>
												</div>
											</div>
											<div class="buttons d-flex ">
												<button class="addCart"
													onclick="addToCart('b1','Bàn Mara Walnut', 10,3700000,'img/ban/ban1/ban1.1.webp',300000)">
													<i class="fas fa-cart-plus"></i> Thêm vào giỏ
												</button>
												<!-- <button class="buyNow">Mua ngay</button> -->
											</div>
										</div>
									</a>
									<div class="discount">${listdanggiamgia.sale }</div>
								</div>
									
								</c:forEach>
							</div>

						</div>
                        </div>
                    </div>
                  </div>
            </div>
        </div>
		<div class="all-product text-center">
			<div class="container">
				<p class="all-heading">Sản phẩm</p>
				<p class="all-intro">Tất cả sản phẩm có sẵn tại cửa hàng</p>
				<div class="products">
					<div class="container">
						<div class="row">
							<c:forEach items="${DataProduc}" var="listproduct">
								<div class="col-lg-3 col-md-6 col-12 nopadding">
									<div class="product">
										<a href="Detail?pid=${listproduct.productid}&Cateid=${listproduct.categoryid}"> <img
											src="img/product/${listproduct.img }" alt=""
											class="product-img">
											<div class="product-info">
												<p class="name-product text-center">${listproduct.productname }</p>
												<div
													class="price-product text-center d-flex align-items-center">
													<p class="price">${listproduct.pricesale }.000đ</p>
													<p class="root-price">${listproduct.price}.000đ</p>
												</div>
												<div class="rate d-flex">
													<div class="stars">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="far fa-star"></i>
													</div>
													<div class="rate-number">
														<p>17 đánh giá</p>
													</div>
												</div>
												<div class="buttons d-flex ">
													<button class="addCart"
														onclick="addToCart('sofa4','Sofa Gỗ Olio Xanh', 10,15600000,'img/sofa/sofa4/sofa4.1.webp',0)">
														<i class="fas fa-cart-plus"></i> Thêm vào giỏ
													</button>
													<!-- <button class="buyNow">Mua ngay</button> -->
												</div>
											</div>
										</a>
										<!-- <div class="discount">
                                    -20%
                                </div> -->
									</div>
								</div>

							</c:forEach>
						</div>
					</div>
				</div>

				<a href="shop.html"><button class="all-button">Xem thêm</button></a>
			</div>
		</div>
<div class="home-discount text-center">
    <div class="container">
        <h2 class="title-discount">Khuyến mãi lớn</h2>
        <p class="discount-intro">Các đợt khuyến mãi vào thời điểm đặc biệt</p>
        <!-- <hr class="dashed-sale"> -->
        <div class="wrapper">
          <div class="row">
            <div class="col-lg-8 col-sm-12 order-2">
              <div class="list">
				<c:forEach items="${DataGiamgialon }" var="listgiamgialon">
				  <div class="product">
                    <a href="Detail?pid=${listgiamgialon.productid}&Cateid=${listgiamgialon.categoryid}">
                        <img src="img/product/${listgiamgialon.img}" alt="" class="product-img">
                        <div class="product-info">
                            <p class="name-product text-center">${listgiamgialon.productname }</p>
                            <div class="price-product text-center d-flex align-items-center">
                                <p class="price">${listgiamgialon.pricesale}.000 đ</p>
                                <p class="root-price">${listgiamgialon.price}.000 đ</p>
                            </div>
                            <div class="rate d-flex">
                                <div class="stars">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <div class="rate-number">
                                    <p>12 đánh giá</p>
                                </div>
                            </div>
                            <div class="buttons d-flex ">
                                <button class="addCart" onclick="addToCart('b6','Bàn Culla Walnut', 10,6000000,'img/ban/ban6/ban6.1.webp',3000000)"><i class="fas fa-cart-plus"></i>   Thêm vào giỏ</button>
                                <!-- <button class="buyNow">Mua ngay</button> -->
                            </div>
                        </div>
                    </a>
                    <div class="discount">
                        -50%
                    </div>
                </div>
           
				</c:forEach>
            </div>
              <div class="nav">
              <div class=""></div>
              <div class=""></div>
              <div class=""></div>
            </div>
            </div>
            <div class="col-lg-4 col-sm-12 order-1">
              <div class="onsale-right">
                <h3>KHUYẾN MÃI LỚN</h3>
                            <p>( giảm tới 50% nhân dịp năm mới )</p>
                <div class="countdown d-flex justify-content-center">
                                <div class="ngay">
                                    <div id="day">NA</div><p>Ngày</p>
                                </div>
                                <div class="gio">
                                    <div id="hour">NA</div><p>Giờ</p>
                                </div>
                                <div class="phut">
                                    <div id="minute">NA</div><p>Phút</p>
                                </div>
                                <div class="giay">
                                    <div id="second">NA</div><p>Giây</p>
                                </div>
                </div>
                <a href=""><button>Xem thêm</button></a>
              </div>
            </div>
          </div>
        </div>
    </div>
</div>
        <div class="comment text-center">
            <div class="container">
              <div class="row">
                <div class="col-lg-4 col-sm-12">
                  <div class="left">
                    <div class="open-shop">
                      <div class="open-title">GIỜ MỞ CỬA</div>
                      <ul class="open-list text-start">
                        <li class="open-item">Thứ 2 - Thứ 6 : 7h - 22h</li>
                        <li class="open-item">Thứ 7 - CN : 9h - 18h</li>
                        <li class="open-item">Ngày lễ : 9h - 18h</li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="col-lg-8 col-sm-12">
                  <div class="right">
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                      <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                      </div>
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                          <h2 class="comment-title">ĐÁNH GIÁ CỦA KHÁCH HÀNG</h2>
                         
                          <img src="img/portrait-user/comment1.jpg" alt="" class="comment-img">
                          <p class="comment-name"> Anh Lê Văn Linh - Hà Nam</p>
                          <p class="comment-text">“Tôi thực sự hài lòng với chất lượng cũng như mức giá của các sản phẩm mà Suplo cung cấp. Nhất định tôi sẽ còn quay lại Suplo nhiều lần nữa. Chúc cho Suplo sẽ ngày càng phát triển mạnh mẽ hơn.”</p>
                        </div>
                        <div class="carousel-item">
                          <h2 class="comment-title">ĐÁNH GIÁ CỦA KHÁCH HÀNG</h2>
                          
                          <img src="img/portrait-user/user2.png" alt="" class="comment-img">
                          <p class="comment-name"> Chị Nguyễn Thanh Thủy - Nam Định</p>
                          <p class="comment-text">“Tôi thích các sản phẩm chất lượng cũng như mức giá phù hợp mà Suplo cung cấp. Tôi sẽ gé thăm Suplo nhiều lần nữa. Chúc cho Suplo sẽ ngày càng phát triển.”</p>
                        </div>
                        <div class="carousel-item">
                          <h2 class="comment-title">ĐÁNH GIÁ CỦA KHÁCH HÀNG</h2>
                          
                          <img src="img/portrait-user/user1.png" alt="" class="comment-img">
                          <p class="comment-name"> Chị Phạm Nam - Hà nội</p>
                          <p class="comment-text">“Tôi ấn tượng va vô cùng hài lòng với chất lượng cũng như mức giá của các sản phẩm mà Suplo cung cấp. Tôi sẽ còn quay lại Suplo nhiều lần nữa. Chúc cho Suplo sẽ ngày càng phát triển.”</p>
                        </div>
                      </div>
                      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                      </button>
                      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="news text-center">
            <div class="container">
                <p class="feature-heading">Bảng tin</p>
                <p class="feature-intro">Tin tức về các sản phẩm nội thất</p>
                <div class="news-slider">
				<c:forEach items="${DataNews }" var="listnews">
					<div class="new news1">
						<a href="news1.html"> <img src="img/bangtin/${listnews.img }" alt="">
							<div class="news-footer">
								<p class="news-title">
								${listnews.title }
								</p>
								<div class="view-news d-flex">
									<div class="author">
										<i class="fas fa-user-edit"></i>${listnews.author }
									</div>
									<div class="comment-news">
										<i class="fas fa-comment"></i> 10
									</div>
								</div>
							</div>
							<div class="date">
								<p>${listnews.datetime }</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
            </div>
      </div>
        <div class="register text-center">
        <div class="container">
            <div class="register-inner">
                <h2 class="register-title">ĐĂNG KÝ NHẬN TIN</h2>
                <p class="register-text">Đăng ký với chúng tôi để nhận thông tin mới nhất về khuyến mãi, các sản phẩm mới và tin tức bạn cần. Nhập email tại đây</p>
                <div class="email">
                  <input type="text" class="email-dk" placeholder="Email của bạn">
                  <button class="email-btn">Gửi</button>
                </div>
            </div>
        </div>
        </div>
        
	<jsp:include page="Footer.jsp"></jsp:include>
	
          <div class="backtotop hide">
            <i class="fas fa-arrow-up"></i>
          </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="js/addcart.js"></script>
    <script src="js/index.js"></script>
    <script src="js/validation.js"></script>
</body>
</html>
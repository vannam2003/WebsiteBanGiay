<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/favicon.png"
    type="image/x-icon" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/fonts/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" integrity="sha512-+EoPw+Fiwh6eSeRK7zwIKG2MA8i3rV/DGa3tdttQGgWyatG/SkncT53KHQaS5Jh9MNOT3dmFL0FjTY08And/Cw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/detail.css">
    <link rel="stylesheet" href="css/reponsive.css">
    <title>Chi tiết</title>
</head>
<body>
    <div class="container-fluid">
        <jsp:include page="Menu.jsp"></jsp:include>
        <div class="banner">
            <div class="inner">
                <div class="container text-center">
                    <p class="title-heading">CHI TIẾT SẢN PHẨM</p>
                    <p class="intro"><a href="">Trang chủ</a>/ <a href="">Chi tiết sản phẩm</a></p>
                </div>
            </div>
        </div>
        <div class="detail">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="list-img">
                            <img src="img/product/${Detail.img }" alt=""  href='img/product/${Detail.img }'>
                            <div class="row">
                                <div class="col-4"><img src="img/product/${Detail.img2 }" alt="" href='img/product/${Detail.img2 }'></div>
                                <div class="col-4"><img src="img/product/${Detail.img3 }" alt="" href='img/product/${Detail.img3 }'></div>
                                <div class="col-4"><img src="img/product/${Detail.img4 }" alt="" href='img/product/${Detail.img4 }'></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="main-info">
                            <div class="product-info">
                                <p class="name-product">${Detail.productname }</p>
                                <div class="price-product text-center d-flex align-items-center">
                                    <p class="price">${Detail.pricesale }.000 đ</p>
                                    <p class="root-price">${Detail.price }.000 đ</p>
                                </div>
                                <p class="text-intro">${Detail.title}</p>
								<div class="soluong d-flex align-items-center">
									<p class="sl-text mb-0 me-2">Số lượng:</p>
									<input type="number" id="quantity" value="1" min="1"
										class="form-control w-25 mx-2 text-center">
								</div>

								<div class="chonsize d-flex align-items-center mb-4">
									<p class="sl-text mb-0 me-2">Chọn size:</p>
									<div id="size-buttons" class="btn-group" role="group"
										aria-label="Size selection">
										<button type="button"
											class="btn btn-outline-primary size-button" data-size="36">36</button>
										<button type="button"
											class="btn btn-outline-primary size-button" data-size="37">37</button>
										<button type="button"
											class="btn btn-outline-primary size-button" data-size="38">38</button>
										<button type="button"
											class="btn btn-outline-primary size-button" data-size="39">39</button>
										<button type="button"
											class="btn btn-outline-primary size-button" data-size="40">40</button>
										<button type="button"
											class="btn btn-outline-primary size-button" data-size="41">41</button>
									</div>
								</div>

								
                                <div class="buttons d-flex ">
                                    <button class="addCart" onclick="addToCart('b5','Bàn Vena Rectangular', 10,3100000, 'img/ban/ban5/ban5.1.webp',0)"><i class="fas fa-cart-plus"></i>   Thêm vào giỏ</button>
                                    <!-- <button class="buyNow">Mua ngay</button> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="uudai">
                            <p class="uudai-title">Ưu đãi thêm</p>
                            <p>Trừ 5% cho khách hàng đăng kí</p>
                            <p>Trừ 5% cho thanh toán qua thẻ</p>
                        </div>
                    </div>
                </div>
                <div class="product-intro">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                          <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Hướng dẫn chọn Size</button>
                        </li>
                        <li class="nav-item" role="presentation">
                          <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Đánh giá & Nhận xét</button>
                        </li>
                      </ul>
                      <div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<p>Chọn size giày và loại đế phù hợp giúp bạn cảm thấy thoải
								mái và tự tin khi di chuyển. Dưới đây là bảng hướng dẫn chọn
								size giày và loại đế phù hợp với từng bàn chân.</p>

							<h3 class="mt-5">Hướng dẫn chọn size</h3>
							<table class="table table-bordered table-striped mt-3">
								<thead>
									<tr>
										<th>Size Giày</th>
										<th>Chiều Dài Bàn Chân (cm)</th>
										<th>Phù Hợp Với</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>36</td>
										<td>22.5 - 23.0</td>
										<td>Phù hợp với những người có bàn chân nhỏ, thích sự nhẹ
											nhàng.</td>
									</tr>
									<tr>
										<td>37</td>
										<td>23.0 - 23.5</td>
										<td>Phù hợp với những người có bàn chân trung bình, dễ di
											chuyển.</td>
									</tr>
									<tr>
										<td>38</td>
										<td>23.5 - 24.0</td>
										<td>Phù hợp với những người cần sự hỗ trợ nhiều hơn khi
											đi bộ lâu.</td>
									</tr>
									<tr>
										<td>39</td>
										<td>24.0 - 24.5</td>
										<td>Phù hợp với những người thích đế dày cho sự thoải mái
											khi di chuyển dài.</td>
									</tr>
									<tr>
										<td>40</td>
										<td>24.5 - 25.0</td>
										<td>Phù hợp với những người có bàn chân lớn và cần đế
											vững chắc.</td>
									</tr>
									<tr>
										<td>41</td>
										<td>25.0 - 25.5</td>
										<td>Phù hợp với những người có bàn chân rộng và thích đế
											chắc chắn, bền.</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                            <div class="judge">
                                <div class="container">
                                    <div class=" d-flex flex-column">
                                        <p class="nhanxet">Đánh giá & nhận xét sản phẩm</p>
                                        <div class="input d-flex flex-column">
                                            <input type="text" class="input-name" placeholder="Họ và Tên">
                                            <input type="text" class="input-name" placeholder="Số điện thoại">
                                            <textarea name="" id="" cols="30" rows="10" placeholder="Chia sẻ về sản phẩm"></textarea>
                                        </div>
                                        
                                    </div>
                                    <div class="send">
                                        <p class="feel">Bạn cảm thấy như thế nào?</p>
                                        <div class="stars-judge d-flex justify-content-center">
                                           <div class="star1"><i class="fas fa-star"></i><p>Rất tệ</p></div>
                                           <div class="star1"><i class="fas fa-star"></i><p>Tệ</p></div>
                                           <div class="star1"><i class="fas fa-star"></i><p>Bình thường</p></div>
                                           <div class="star1"><i class="fas fa-star"></i><p>Tốt</p></div>
                                           <div class="star1"><i class="fas fa-star"></i><p>Rất tốt</p></div>
                                        </div>
                                    </div>
                                    <div class="submit text-center">
                                        <button class="btn">Gửi đánh giá</button>
                                    </div>
                                    <hr class="hr">
                                    <div class="comment text-start">
                                        <div class="row">
                                            <div class="col-1">
                                                <img src="img/portrait-user/comment1.jpg" alt="">
                                            </div>
                                            <div class="col-11">
                                                <div class="comment-name">Lê Văn Linh</div>
                                                Một sản phẩm tốt
                                                <div class="stars">
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="far fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-1">
                                                <img src="img/portrait-user/user2.png" alt="">
                                            </div>
                                            <div class="col-11">
                                                <div class="comment-name">Phạm Nam</div>
                                                Sản phẩm chất lượng
                                                <div class="stars">
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="far fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      </div>
                </div>
                <div class="suggest">
                    <div class="suggest-heading">Sản phẩm gợi ý</div>
                    <div class="slider">
                       
                       <c:forEach items="${DataSanphamgoiy }" var="spgy">
                       	 <div class="product">
                            <a href="details.html">
                                <img src="img/product/${spgy.img }" alt="" class="product-img">
                                <div class="product-info">
                                    <p class="name-product text-center">${spgy.productname }</p>
                                    <div class="price-product text-center d-flex align-items-center">
                                        <p class="price">${spgy.pricesale }.000 đ</p>
                                        <p class="root-price">${spgy.price}.000 đ</p>
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
                                ${spgy.sale}
                            </div>
                        </div>
                       </c:forEach>

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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js" integrity="sha512-IsNh5E3eYy3tr/JiX2Yx4vsCujtkhwl7SLqgnwLNgf04Hrt9BT9SXlLlZlWx+OK4ndzAoALhsMNcCmkggjZB1w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="js/addcart.js"></script>
    <script src="js/detail.js" type="module"></script>
    <!-- <script src="js/cart.js"></script> -->
    <script src="js/validation.js"></script>
</body>
</html>
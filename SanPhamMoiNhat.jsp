<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="selling-products">
	<p class="selling-title">Sản phẩm mới nhất</p>
	<hr>
	<c:forEach items="${DataSanphammoinhat }" var="listsanphammoinhat">
		<a href="detail3.html">
			<div class="row">
				<div class="col-5 ">
					<img src="img/product/${listsanphammoinhat.img }" alt="">
				</div>
				<div class="col-7">
					<div class="selling-name">${listsanphammoinhat.productname }</div>
					<div class="selling-price">${listsanphammoinhat.pricesale}.000 đ</div>
					<div class="selling-star">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i>
					</div>
				</div>
			</div>
		</a>
	</c:forEach>

</div>
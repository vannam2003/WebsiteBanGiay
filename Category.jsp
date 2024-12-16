<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="loaihang">
	<div class="accordion" id="accordionExample">
		<div class="accordion-item">
			<h2 class="accordion-header" id="headingOne">
				<button class="accordion-button" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseOne"
					aria-expanded="true" aria-controls="collapseOne">Loại sản
					phẩm</button>
			</h2>
			<div id="collapseOne" class="accordion-collapse collapse show"
				aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				<div class="accordion-body">
					<ul>
						<c:forEach items="${DataCategory }" var="listcategory">
							<li class="list-item text-white">
								<a href="Category?cid=${listcategory.categoryid }">${listcategory.name }</a>
							</li>
							<hr>
						</c:forEach>

					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

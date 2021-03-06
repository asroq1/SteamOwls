<%@page import="shop.steamowls.steam.admin.admin.vo.AdminVo"%>
<%@page import="shop.steamowls.steam.admin.product.vo.ProductVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@page import="shop.steamowls.common.LoginManager"%>

<%
LoginManager lm = LoginManager.getInstance();
String sq = lm.getMemberSq(session);
%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품등록화면</title>
<link href="/css/picture/icons8_owl.ico" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/admin/gotoAdmin.css">
<link rel="stylesheet" href="/css/admin/productAdd.css">
<script src="/js/admin/Padd.js" defer></script>
</head>
	<header>
		<jsp:include page="/views/common/adminHeader.jsp"></jsp:include>
	</header>
<body>
	<nav role="navigation">
		 <jsp:include page="/views/common/admin-nav.jsp"></jsp:include>	
	</nav>
	<section>
		<h1>상품 관리</h1>
		<form  action="/admin/PaddProc" id="ckpoint" method="post" enctype="multipart/form-data">
			<div>
				<label for="product_image">이미지</label> 
				<input type="file" name="product_image" id="product_image" multiple="multiple" max="5">
			</div>
			<div class="text__form">
				<label for="product_name">상품이름</label> <input type="text"
					placeholder="상품이름" name="product_name" id="product_name">
					 <label	for="product_detail">설명</label> 
					 <input type="text"	placeholder="상품설명" name="product_detail" id="product_detail">
			</div>
			<label for="product_price">가격</label>
			<input type="text" name="product_price" id="product_price" placeholder="가격">
			<label for="product_people">인원수</label>
			<input type="text" name="product_people" id="product_people" placeholder="인원수">
		</form>
		<button id="Padd" onclick="Padd()">상품추가</button>
	</section>
</body>

</html>
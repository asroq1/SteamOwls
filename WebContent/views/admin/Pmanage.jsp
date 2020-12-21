<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="shop.steamowls.steam.member.vo.MemberVo"%>

<%@page import="shop.steamowls.common.LoginManager"%>
<%
	MemberVo vo = (MemberVo) request.getAttribute("vo");
	LoginManager lm = LoginManager.getInstance();
	String sq = lm.getMemberSq(session);
%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>상품관리</title>
	<link rel="stylesheet" href="/css/base.css">
	<link rel="stylesheet" href="/css/admin/gotoAdmin.css">
	<link rel="stylesheet" href="/css/admin/productManage.css">
</head>

<body>
	<header>
		<div class="header__logo">
			<a href="/views/home/index.jsp">
				<img src="/css/picture/owls.PNG" alt="로고사진">
			</a>
		</div>
		<div class="header__signForm">
			<a href="/member/logout">로그아웃</a>
		</div>
	</header>
	<nav>
		<div class="nav__container">
			<a href="/admin/product/Pmanage">상품관리</a>
			<a href="/admin/booking/Bmanage">예약관리</a>
			<a href="/admin/sales/Smanage">매출관리</a>
			<a href="/admin/member/Mmanage">회원관리</a>
			<a href="/admin/question/QManage">문의관리</a>
		</div>
		<div class="sub__wrapper">
			<div class="nav__sub pm">
				<ul>
					<li><a href="#">상품추가</a></li>
					<li><a href="#">상품삭제</a></li>
					<li><a href="#">상품내역</a></li>
				</ul>
			</div>
			<div class="nav__sub bm">
				<ul>
					<li><a href="#">예약관리</a></li>
					<li><a href="#">예약취소</a></li>
				</ul>
			</div>
			<div class="nav__sub pm">
				<ul>
					<li><a href="#">매출관리</a></li>
				</ul>
			</div>
			<div class="nav__sub um">
				<ul>
					<li><a href="#">회원수정</a></li>
					<li><a href="#">회원탈퇴</a></li>
					<li><a href="#">회원내역</a></li>
				</ul>
			</div>
			<div class="nav__sub qm">
				<ul>
					<li><a href="#">문의내역</a></li>
					<li><a href="#">답변하기</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<section>
		<div class="update__container">
			<a href="/admin/product/Padd">상품추가</a>
			<a href="/admin/product/Pdelete">상품삭제</a>
		</div>
	</section>
	<section>
		<h1>판매상품내역</h1>
		<div class="form__container">
			<form action="/admin/product." class="booking__Form">
				<div class="booking_img">
					<img src="/css/picture/owls.PNG" alt="">
					<%-- <%=vo.getProduct_image()%> --%>
				</div>
				<div class="title__intro__container">
					<div class="booking__title">
						<h3>
							<%-- <%=vo.getProduct_name()%> --%>
						</h3>
					</div>
					<div class="booking__intro">
						<p>
							
							<%-- <%=vo.getProduct_detail()%> --%>
						</p>
					</div>
				</div>
				<div class="booking__price">
					<p>
						<%-- <%=vo.getProduct_price()%> --%>
					</p>
				</div>
			</div>
		</div>
		<div class="booking__confirm">
			<button class="confirm__add" onclick="location.href='/admin/product/PsellingButton' ">판매시작</button>
			<button class="confirm__delete" onclick="location.href='/admin/product/PstopButton' ">판매중지</button>
		</div>
	</section>
</body>

</html>
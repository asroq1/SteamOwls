<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 네비게이션</title>
<link rel="stylesheet" href="/css/admin/gotoAdmin.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>
<body>

</body>
</html>
		<ul id="main-menu">
			<li><a href="#">상품관리</a>
				<ul id="sub-menu">
					<li><a href="/admin/Padd" aria-label="subemnu">상품추가</a></li>
					<li><a href="/admin/Pdelete" aria-label="subemnu">상품삭제</a></li>
					<li><a href="/admin/Pmanage" aria-label="subemnu">상품관리</a></li>
				</ul>
			</li>
			<li><a href="#">예약관리</a>
				<ul id="sub-menu">
					<li><a href="/admin/Bmanage" aria-label="subemnu">예약내역</a></li>
				</ul>
			</li>
			<li><a href="#">매출관리</a>
				<ul id="sub-menu">
					<li><a href="admin/Smanage" aria-label="subemnu">매출내역</a></li>
				</ul>
			</li>
			<li><a href="#">회원관리</a>
				<ul id="sub-menu">
					<li><a href="/admin/Mmanage" aria-label="subemnu">회원내역</a></li>
				</ul>
			</li>
			<li><a href="#">문의관리</a>
				<ul id="sub-menu">
					<li><a href="/admin/Qmanage" aria-label="subemnu">문의내역</a></li>
				</ul>
			</li>
			<li><a href="#">리뷰관리</a>
				<ul id="sub-menu">
					<li><a href="/admin/Rmanage" aria-label="subemnu">리뷰내역</a></li>
				</ul>
			</li>
		</ul>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/admin/gotoAdmin.css">
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
					<li><a href="/admin/" aria-label="subemnu">회원탈퇴</a></li>
					<li><a href="/admin/Mmanage" aria-label="subemnu">회원내역</a></li>
				</ul>
			</li>
			<li><a href="#">문의관리</a>
				<ul id="sub-menu">
					<li><a href="/views/admin/Qmanage" aria-label="subemnu">문의내역</a></li>
					<li><a href="/views/admin/Qanswer" aria-label="subemnu">답변하기</a></li>
				</ul>
			</li>
		</ul>
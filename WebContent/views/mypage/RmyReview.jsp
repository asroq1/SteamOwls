<%@page import="shop.steamowls.common.LoginManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="shop.steamowls.steam.mypage.vo.MypageVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% ArrayList<MypageVo> list = (ArrayList<MypageVo>) request.getAttribute("list"); 
LoginManager lm = LoginManager.getInstance();
String sq = lm.getMemberSq(session);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>리뷰 게시판</h1>
	<br>
	<div>
		<tr>
			<th>문의번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>

	</div>


	<%
	for (int i = 0; i < list.size(); i++) {
	%>
	<tr>
		<td><%=list.get(i).getReview_sq()%></td>
		<td><a href="/mypage/RmyReviewDetail?review_sq=<%=list.get(i).getReview_sq()%>"><%=list.get(i).getReview_subject()%></a></td>
		<td><%=list.get(i).getId()%></td>
		<td><%=list.get(i).getReview_dttm()%></td>
		<br>
	</tr>
	<%
	}
	%>
</body>
</html>
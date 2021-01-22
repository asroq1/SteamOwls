<%@page import="shop.steamowls.common.LoginManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="shop.steamowls.steam.mypage.vo.BoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<BoardVo> list = (ArrayList<BoardVo>) request.getAttribute("list");
BoardVo boardVo = (BoardVo) request.getAttribute("boardVo");
BoardVo answerVo = (BoardVo) request.getAttribute("answerVo");
LoginManager lm = LoginManager.getInstance();
String sq = lm.getMemberSq(session);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지</title>
</head>
<body>
<header>
		<jsp:include page="/views/common/adminHeader.jsp"></jsp:include>
</header>
<h1>문의 관리</h1>
<br>
<h3>문의 번호 : <%=boardVo.getBoard_sq()%></h3>
<h3>문의 제목 : <%=boardVo.getBoard_subject()%></h3>
<h3>문의 내용 : <%=boardVo.getBoard_content()%></h3>
<h3>문의자 : <%=boardVo.getMember_id()%></h3>
<h3>문의 날짜 : <%=boardVo.getBoard_dttm()%></h3>
<h3>문의 답변 여부 : <%=answerVo.isAnswer_fl()%></h3>
<h3>문의 답변 내용 : <%=answerVo.getAnswer_content()%></h3>


<a href="/admin/QModify?board_sq=<%=boardVo.getBoard_sq()%>">답변 수정</a>
<a href="/admine/QDelete?board_sq=<%=boardVo.getBoard_sq()%>">답변 삭제</a>

<a href="/admin/Qmanage">돌아가기</a>
</body>
</html>
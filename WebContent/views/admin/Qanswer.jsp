<%@page import="shop.steamowls.steam.mypage.vo.BoardVo"%>
<%@page import="shop.steamowls.common.LoginManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%
    BoardVo vo = (BoardVo) request.getAttribute("vo");
	String board_sq = (String) request.getAttribute("board_sq");
    %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>문의답변</title>
	<%-- <script type="text/javascript">
		< % --
		let content = '<%=vo.getBoard_content()%>';
		-- % >
	</script> --%>
	<link rel="stylesheet" href="/css/base.css">
	<link rel="stylesheet" href="/css/admin/gotoAdmin.css">
	<script src="/js/mypage/Qwriting.js" type="text/javascript" defer></script>
</head>

<body>
	<header>
		<jsp:include page="/views/common/header-logout.jsp"></jsp:include>
	</header>
	<section>
		<!-- 제목 , 내용 ,게시판 sq -->
				<!-- 여기 action에 경로 수정해주세요 -->
		<form action="/admin/QanswerProc?board_sq=<%=board_sq %>" method="post" id="editorForm">
			<div>
				<jsp:include page="/editor/editorSkinForRegister.jsp" flush="false" />
			</div>
		</form>
		<button type="button" onclick="add()">등록</button>
	</section>

	<a href="/mypage/question">돌아가기</a>
</body>

</html>
<%@page import="shop.steamowls.steam.mypage.vo.BoardVo"%>
<%@page import="shop.steamowls.common.LoginManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%
    BoardVo vo = (BoardVo) request.getAttribute("vo");
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
</head>

<body>
	<h1>문의 관리</h1>
	<header>
		<jsp:include page="/views/common/adminHeader.jsp"></jsp:include>
	</header>
	<nav role="navigation">
		<jsp:include page="/views/common/admin-nav.jsp"></jsp:include>
	</nav>
	<form action="/admin/product/PaddProc" method="post" id="editorForm">
		<div>
			<jsp:include page="/editor/editorSkinForModify.jsp" flush="false" />
		</div>
	</form>
	<a href="/admin/admin/Qmanage">게시</a>
</body>

</html>
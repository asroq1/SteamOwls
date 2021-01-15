<%@page import="shop.steamowls.common.LoginManager"%>
<%@page import="shop.steamowls.steam.mypage.vo.MypageVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% MypageVo mypageVo = (MypageVo) request.getAttribute("vo"); 
    LoginManager lm = LoginManager.getInstance();
String sq = lm.getMemberSq(session);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
<script type="text/javascript" src="js/mypage/Rmodify.js"></script>
</head>
<body>
<section>
		<!-- 제목 , 내용 ,게시판 sq -->
				<!-- 여기 action에 경로 수정해주세요 -->
		<form action="/mypage/RmyReviewModifyProc?board_sq=<%=mypageVo.getReview_sq() %>" method="post" id="editorForm">
			<label for="title">제목</label>
			<input type="text" id="title" name="board_subject" value="<%=mypageVo.getReview_subject()%>"/>
			<br>
			<textarea rows="10" cols="30" id="review_content" name="review_content"><%=mypageVo.getReview_content()%></textarea>
			<br>
			<div class="review__rating">
            <span>
                <h2>별점</h2>
            </span>
            <div class="startRadio">
                <label class="startRadio__box">
                    <input type="radio" name="review_star" id="" value="0.5">
                    <span class="startRadio__img"><span class="blind">별 1개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="review_star" id="" value="1.0">
                    <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="review_star" id="" value="1.5">
                    <span class="startRadio__img"><span class="blind">별 2개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="review_star" id="" value="2.0">
                    <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="review_star" id="" value="2.5">
                    <span class="startRadio__img"><span class="blind">별 3개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="review_star" id="" value="3.0">
                    <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="review_star" id="" value="3.5">
                    <span class="startRadio__img"><span class="blind">별 4개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="review_star" id="" value="4.0">
                    <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="review_star" id="" value="4.5">
                    <span class="startRadio__img"><span class="blind">별 5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="review_star" id="" value="5.0">
                    <span class="startRadio__img"><span class="blind">별 5.5개</span></span>
                </label>
            </div>
        	</div>
		</form>
		<button  type="submit" id="submit__btn">수정</button>
	</section>

	<a href="/mypage/RmyReviewDetail?review_sq=<%=mypageVo.getReview_sq()%>">취소</a>

</body>
</html>
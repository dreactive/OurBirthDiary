<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="user.User"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기 | 마이페이지</title>
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/css/stylesMyPage.css" rel="stylesheet" >
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
</head>
<body>
	
	<!-- 1. 로딩 화면 -->
	<div id="loading-screen" style="position:fixed;top:0;left:0;width:100%;height:100%;background:white;z-index:9999;display:flex;align-items:center;justify-content:center;">
	  <div class="spinner"></div>
	</div>
	
	<!-- 2. 실제 페이지 내용 -->
	
<%
String userID = null;
if (session.getAttribute("userID")!=null) {
	userID = (String)session.getAttribute("userID");
}
User me = null;
if (userID != null) {
	me = new UserDAO().getUser(userID); // getUser는 userID로 User 객체를 반환하는 메서드여야 함
} else {
	out.println("<script>alert('로그인이 필요합니다.'); location.href='../userAuth/login.jsp';</script>");
	return;
}
%>

	<jsp:include page="../includes/nav.jsp" />
	<div class="structure">
        <div class="sidebar">
            <div class="sidebar-section">
                <div class="sidebar-profile">
                    <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEwMDZfMTYw%2FMDAxNjk2NTkwNDYzOTYx.__oofDcGEk1qelksfcJKxxwejnVX5bzufr-WLWforXkg.X9oVMwg9nWMTJpOAr3xA6SOK_6VHZJT8_82hBKnZy9sg.JPEG.tmvldkrk%2F28.jpg&type=sc960_832" alt="profile" class="profile-img">
            		<div class="username"><%= me.getUserName()%></div>
                </div>
                
                <div class="sidebar-menu">
                    <button class="btn-sidebar-menu" data-period="profile">
                    	<span class="material-symbols-outlined">badge</span>
                    	회원정보
                    </button>
                    <button class="btn-sidebar-menu" data-period="profileUpdate">
                    	<span class="material-symbols-outlined">edit</span>
                    	회원정보 수정
                    </button>
                    <button class="btn-sidebar-menu" data-period="calender">
                    	<span class="material-symbols-outlined">calendar_today</span>
                    	일정관리
                    </button>
                    <button class="btn-sidebar-menu" data-period="myDocView">
                    	<span class="material-symbols-outlined">edit_note</span>
                    	내가 쓴 글
                    </button>
                    <button class="btn-sidebar-menu" data-period="relHomepage">
                    	<span class="material-symbols-outlined">link</span>
                    	관련 홈페이지
                    </button>
                </div>
                <img id="sidebar-bookmark" src="../data/img/bookmark.png" alt="책갈피">
            </div>
        </div>
        
        <div data-period="profile" class="main">
        	<jsp:include page="./profile.jsp" />
        </div>
        
        <div data-period="profileUpdate" class="main inactive">
        	<jsp:include page="./profileUpdate.jsp" />
        </div>
        
        <div data-period="calender" class="main inactive">
        	<jsp:include page="./calender.jsp" />
        </div>
        
        <div data-period="myDocView" class="main inactive">
        	<jsp:include page="./myDocView.jsp" />
        </div>
        
        <div data-period="relHomepage" class="main inactive">
        	<jsp:include page="./relHomepage.jsp" />
        </div>
        
        
        
    </div>
    <script src="../js/myPage.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/includes/stylesNav.css" rel="stylesheet" >
	<link rel="stylesheet" href="https://fonts.googleapis.com/
css2?family=Material+Symbols+Outlined" />
		
</head>
<body>
<%
	String userID = null;
	if (session.getAttribute("userID")!=null) {
		userID = (String) session.getAttribute("userID");
	}
%>
	<nav class="navbar">
		<a href='<%= contextPath %>/main.jsp'>
			<img id='logo' alt="logo" src="<%= contextPath %>/data/img/logo.png">
		</a>
		<div class="nav-center">
				<button onclick="location.href='<%= contextPath %>/law/free.jsp'">
					법률상담
				</button>	
				
				<button onclick="location.href='<%= contextPath %>/workflow.jsp'">
					출생신고 로드맵
				</button>
					
				<button onclick="location.href='<%= contextPath %>/faq.jsp'">
					자주 묻는 질문
				</button>
				
		</div>
		<div class="dropdown-right">
			<div class="notificationBtn"> 
				<button onclick="openNotificationDiv()">
					<!-- <span class="material-symbols-outlined"  style='width:20%; height:30px;'>notifications</span>  -->
				</button>
			</div>
			<div class="dropdown">
				<button>
				내 계정
				<img src="<%= contextPath %>/data/svg/chevron.svg" >
				</button>
				<div class="dropdown-menu">
					<%
						if(userID==null) {
					%>
					<button onclick="location.href='<%= contextPath %>/userAuth/login.jsp'">로그인</button>
					<button onclick="location.href='<%= contextPath %>/userAuth/join1.jsp'">회원가입</button>
					<%
						}else {
					%>
					<button onclick="location.href='<%= contextPath %>/myPage/myPage.jsp'">나의 페이지</button>
					<button onclick="location.href='<%= contextPath %>/userAuth/logoutAction.jsp'">로그아웃</button>
					<%
						}
					%>
				</div>
			</div>
			
		</div>
	</nav>
	<div class="space-nav"></div>
	
	
	
</body>
</html>
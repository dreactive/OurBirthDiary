<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 진행중</title>
</head>
<body>
<%
	String userID = null;
	if (session.getAttribute("userID")!=null) {
		userID = (String)session.getAttribute("userID");
	}
	if (userID !=null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.href = '../main.jsp'");
		script.println("</script>");
	}
	UserDAO userDAO = new UserDAO();
	int result = userDAO.login(user.getUserID(),user.getUserPassword());
	if (result==1) {
		PrintWriter script = response.getWriter();
		session.setAttribute("userID", user.getUserID()); //세션을 제대로 안 넘겨줘서 로그인 이후 인식하지 못했다.
		script.println("<script>");
		script.println("location.href = '../main.jsp'");
		script.println("</script>");
	}
	else if (result==0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호를 틀렸습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(result ==-1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('없는 계정입니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if (result ==-2) { //놓친 부분
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류가 발생했습니다.')");
		script.println("history.back()"); // 이전 페이지로 돌려보내기. (로그인 페이지)
		script.println("</script>");
	}
%>
</body>
</html>
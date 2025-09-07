<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    

<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userWorkflow" />
<jsp:setProperty name="user" property="userID" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>워크플로우 업데이트 중</title>
</head>
<body>
<%
	UserDAO userDAO = new UserDAO();
	if(userDAO.updateWorkflow(user.getUserWorkflow(),user.getUserID())==-1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류입니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('성공적으로 저장되었습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
%>
</body>
</html>
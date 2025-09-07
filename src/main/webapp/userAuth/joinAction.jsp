<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userPassword2" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userPhone" />
<jsp:setProperty name="user" property="userAddress1" />
<jsp:setProperty name="user" property="userAddress2" />
<jsp:setProperty name="user" property="userBirth" />
<jsp:setProperty name="user" property="userType" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 진행중</title>
</head>
<body>
<%
	String userID = null;
	if (session.getAttribute("userID")!=null) {
		userID = (String) session.getAttribute("userID");
	}
	if(userID != null) { //로그인 되어 있는 상태라면
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.href = '../main.jsp'");
		script.println("</script>");
	}
	else {
		if (user.getUserID()==null||user.getUserPassword()==null||user.getUserPassword2()==null||
				user.getUserEmail()==null||user.getUserName()==null||user.getUserPhone()==null||
				user.getUserAddress1()==null||user.getUserAddress2()==null||user.getUserBirth()==null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('누락된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else {
			if(!user.getUserPassword().equals(user.getUserPassword2())) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('비밀번호와 비밀번호확인 값이 다릅니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else {
				UserDAO userDAO = new UserDAO();
				int result = userDAO.join(user);
				if (result==-1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('중복되는 아이디가 있습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				else {
					PrintWriter script = response.getWriter();
					session.setAttribute("userID", user.getUserID()); //놓친 부분.
					script.println("<script>");
					System.out.println(user.getUserType());
					if(user.getUserType().equals("SD")) {
						script.println("alert('미혼부 추가 설정 페이지로 이동합니다.')");
						script.println("location.href='./joinSD.jsp'");
					}
					else if (user.getUserType().equals("LE")) {
						script.println("alert('법률전문가 추가 설정 페이지로 이동합니다.')");
						script.println("location.href='./joinLE.jsp'");
					}
					else {
						script.println("alert('회원가입이 완료되었습니다.')");
						script.println("location.href='../main.jsp'");
					}
					
					script.println("</script>");
				}
			}
		}
	}
	
%>
</body>
</html>
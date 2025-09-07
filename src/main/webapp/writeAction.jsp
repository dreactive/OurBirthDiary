<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="bbs.BbsDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsType" />
<jsp:setProperty name="bbs" property="bbsContent" />
<jsp:setProperty name="bbs" property="bbsWorkflow" />
<jsp:setProperty name="bbs" property="bbsRangeView" />
<jsp:setProperty name="bbs" property="bbsRangeComment" />

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
BbsDAO bbsDAO = new BbsDAO();
int write = bbsDAO.write(bbs.getBbsType(), bbs.getBbsTitle(), userID, bbs.getBbsContent(), bbs.getBbsWorkflow(), bbs.getBbsRangeView(), bbs.getBbsRangeComment());

/*
//계속 NULL 값만 넘어왔던 이유는 form 요소 중 enctype을 사진 전용으로 해서 안 되었던 것이다. 도중에 중간중간 되었던 건, get 방식이었거나 post 할 때 해당 요소를 잠깐 뺐을 때 였던 것 같다..
System.out.println(bbs.getBbsType());
System.out.println(bbs.getBbsTitle());
System.out.println(bbs.getBbsContent());
*/
if (write == -1) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('데이터베이스 오류.')");
	script.println("history.back()");
	script.println("</script>");
	
}
else {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('글쓰기를 성공적으로 했습니다.')");
	script.println("location.href ='./main.jsp'");
	script.println("</script>");
}
%>
</body>
</html>
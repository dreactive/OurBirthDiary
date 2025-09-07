<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/css/stylesMyDocView.css" rel="stylesheet" >
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
  	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<div class="bg-transparent flex items-center justify-center min-h-screen">
	  <div class="flex flex-col items-center space-y-5">
	    
	    
	
	    <!-- Q & A -->
	    <a href="<%= contextPath %>/faq.jsp"
	       class="w-96 py-4 text-center bg-indigo-100 text-indigo-900 font-bold rounded-xl shadow-md hover:bg-indigo-200 transition duration-200">
	      FAQ
	    </a>
	
	    <!-- 1:1 문의 -->
	    <a href="contact.html"
	       class="w-96 py-4 text-center bg-indigo-100 text-indigo-900 font-bold rounded-xl shadow-md hover:bg-indigo-200 transition duration-200">
	      1:1 문의
	    </a>
	
	  </div>
	</div>
</body>
</html>
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
	  <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
	  <style>
	    .handwriting {
	      font-family: 'Nanum Pen Script', cursive;
	    }
	    .rel-container {
	    	margin-top:40px;
	    }
	  </style>
</head>
<body>
	<div class="bg-transparent min-h-screen p-6 rel-container">
	  <div class="bg-white rounded-2xl shadow-2xl p-10 max-w-3xl w-full">
	    <ul class="space-y-6 text-[25px] handwriting text-gray-600">
	      <li class="transition-transform duration-200 hover:scale-105">
	        여성가족부 : <a href="https://www.mogef.go.kr/" target="_blank" class="hover:underline">https://www.mogef.go.kr/</a>
	      </li>
	      <li class="transition-transform duration-200 hover:scale-105">
	        보건복지부 : <a href="https://www.mohw.go.kr/" target="_blank" class="hover:underline">https://www.mohw.go.kr/</a>
	      </li>
	      <li class="transition-transform duration-200 hover:scale-105">
	        국가법령정보센터 : <a href="https://www.law.go.kr/" target="_blank" class="hover:underline">https://www.law.go.kr/</a>
	      </li>
	      <li class="transition-transform duration-200 hover:scale-105">
	        대한민국 법원 : <a href="https://www.scourt.go.kr/scourt/index.html" target="_blank" class="hover:underline">https://www.scourt.go.kr/scourt/index.html</a>
	      </li>
	      <li class="transition-transform duration-200 hover:scale-105">
	        정부24 : <a href="https://www.gov.kr/portal/main/nologin" target="_blank" class="hover:underline">https://www.gov.kr/portal/main/nologin</a>
	      </li>
	      <li class="transition-transform duration-200 hover:scale-105">
	        국민건강보험공단 : <a href="https://www.longtermcare.or.kr/npbs/indexr.jsp" target="_blank" class="hover:underline">https://www.longtermcare.or.kr/npbs/indexr.jsp</a>
	      </li>
	      <li class="transition-transform duration-200 hover:scale-105">
	        아빠의 품 : <a href="https://apum.modoo.at/" target="_blank" class="hover:underline">https://apum.modoo.at/</a>
	      </li>
	    </ul>
	  </div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/css/stylesMyDocView.css" rel="stylesheet" >
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.css" />
    <link rel="stylesheet" href="../css/stylesCalender.css" />
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
</head>
<body>
	<div class="calendar-wrapper">
	        <div id="calendar"></div>
	    </div>
	
	    <!-- 플로팅 일정 등록 폼 (우상단에 작게 표시) -->
	    <div id="inline-form" class="popup-form hidden">
	        <h3 id="form-title">일정 등록</h3>
	        <input type="text" id="event-title" placeholder="제목" />
	        <input type="date" id="event-start" />
	        <input type="date" id="event-end" />
	        <input type="text" id="event-color" placeholder="예: 빨강, 파랑, #ffaa00" />
	        <div class="form-buttons">
	            <button id="save-event">등록</button>
	            <button id="delete-event" class="delete hidden">삭제</button>
	            <button id="cancel-event">취소</button>
	        </div>
	    </div>
	
	    <!-- 우하단 버튼 -->
	    <button id="toggle-form" class="floating-button">＋ 일정 등록하기</button>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="user.User"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기 | 사선 변호사 연결</title>
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/css/stylesLawyer.css" rel="stylesheet" >
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
</head>
<body>

<%
String userID = null;
if (session.getAttribute("userID")!=null) {
	userID = (String)session.getAttribute("userID");
}
User me = null;
if (userID != null) {
	me = new UserDAO().getUser(userID); // getUser는 userID로 User 객체를 반환하는 메서드여야 함
}
%>

	<jsp:include page="/includes/nav.jsp" />
	<header class="header">
  <nav class="header-nav">
    <a href="./free.jsp" class="header-link">소송구조 신청</a>
    <span class="header-separator">|</span>
    <a href="#" class="header-link">사선 변호사 연결</a>
  </nav>
</header>

<div class="filter-section">
  <!-- 1행: 지역 / 분야 / 변호사 찾기 -->
  <div class="filter-row">
    <!-- 지역 -->
    <div class="filter-group location">
      <label for="city">지역</label>
      <div class="location-group">
        <select id="city" name="city">
            <option>시/도</option>
        </select>
        <select id="district" name="district">
          <option>구/군</option>
          <!-- ... -->
        </select>
      </div>
    </div>

    <!-- 분야 -->
    <div class="filter-group">
      <label for="field">분야</label>
      <select id="field" name="field">
        <option>분야 선택</option>
        <!-- ... -->
      </select>
    </div>

    <!-- 변호사 찾기 버튼 -->
    <button type="button" class="action-btn">변호사 찾기</button>
  </div>

  <!-- 2행: 상담 방법 / 가능 시간대 / 등록 -->
  <div class="filter-row">
    <!-- 상담 방법 -->
    <div class="filter-group">
      <label for="method">상담 방법</label>
      <select id="method" name="method">
        <option>전화</option>
        <option>미팅</option>
        <!-- ... -->
      </select>
    </div>

    <!-- 가능 시간대 -->
    <div class="filter-group">
      <label for="time">가능 시간대</label>
      <select id="time" name="time">
        <option>가능 시간대</option>
        <option>평일 오전</option>
        <option>평일 오후</option>
        <option>주말 오전</option>
        <option>주말 오후</option>
        <!-- ... -->
      </select>
    </div>

  </div>
</div>

<!-- 변호사 카드 그리드 -->
<div class="lawyer-grid">
  <!-- 카드 템플릿 -->
  <div class="lawyer-card" data-id="lawyer_1">
    <img src="../data/img/변호사1.png" alt="변호사 사진">
    <div class="lawyer-info">
      <h3>장혜원 변호사</h3>
      <p>법무법인 청룡</p>
      <ul>
        <li>가사소송 승소 이력 10회</li>
        <li>친생자 소송 승소 이력 6회</li>
        <li>가사전담 경력 4년차</li>
      </ul>
    </div>
  </div>

  <!-- 반복: 최해학, 최배열, 최희열 -->
  <div class="lawyer-card" data-id="lawyer_2">
    <img src="../data/img/변호사2.png" alt="변호사 사진">
    <div class="lawyer-info">
      <h3>송유석 변호사</h3>
      <p>법무법인 주작</p>
      <ul>
        <li>가사소송 승소 이력 10회</li>
        <li>친생자 소송 승소 이력 6회</li>
        <li>가사전담 경력 4년차</li>  
        
        
      </ul>
    </div>
  </div>
  <div class="lawyer-card" data-id="lawyer_3">
    <img src="../data/img/변호사3.png" alt="변호사 사진">
    <div class="lawyer-info">
      <h3>최혜열 변호사</h3>
      <p>법무법인 백호</p>
      <ul>
        <li>가사소송 승소 이력 10회</li>
        <li>친생자 소송 승소 이력 6회</li>
        <li>가사전담 경력 4년차</li>
      </ul>
    </div>
  </div>
  <div class="lawyer-card" data-id="lawyer_4">
    <img src="../data/img/변호사4.png" alt="변호사 사진">
    <div class="lawyer-info">
      <h3>이하경 변호사</h3>
      <p>법무법인 현무</p>
      <ul>
        <li>가사소송 승소 이력 10회</li>
        <li>친생자 소송 승소 이력 6회</li>
        <li>가사전담 경력 4년차</li>
      </ul>
    </div>
  </div>
</div>

<div id="lawyer-modal" class="modal hidden" role="dialog" aria-hidden="true">
    <div class="modal-content">
      <button class="modal-close" aria-label="닫기">&times;</button>
      <div id="lawyer-details"><!-- 상세 내용 렌더링 --></div>
    </div>
  </div>
  

<%
if(userID!=null && "LE".equals(me.getUserType())) {
%>
  
  
<button
  type="button"
  class="action-btn fixed-register-btn"
  onclick="window.location.href='lawyerJoin.jsp';"
> <img src="../data/svg/등록.svg">
</button>

<% } %>
<script src="lawyer.js"></script>
  
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="user.User"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/css/stylesProfileUpdate.css" rel="stylesheet" >
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
    <link rel="stylesheet" href="../css/stylesProfile.css">
</head>
<body>
<!-- ─── 프로그레스 바 ─── -->
  <div class="progress">
    <div class="step" data-step="1">1</div>
    <div class="step" data-step="2">2</div>
    <div class="step" data-step="3">3</div>
  </div>

  <!-- ─── 카드 컨테이너 ─── -->
  <div class="card">
    <!-- 헤더 -->
    <div class="header">
      <div class="icon-circle">✔︎</div>
      <h2 id="header-title">출생신고 신청</h2>
    </div>

    <!-- 1단계 콘텐츠 -->
    <div id="content-1" class="content">
      <p>
        <strong>1단계:</strong>
        가정법원에 출생신고를 위한 확인신청서 및 자료 제출
      </p>
      <ul>
        <li class="toggleable">
          출생 신고 신청 절차
          <button class="nested-complete-btn">완료</button>
          <ul class="nested">
            <li>친생자 출생신고를 위한 확인 신청서(붙임)</li>
            <li>유전자 검사 결과지</li>
            <li>신청인의 주민등록(초)본</li>
            <li>가족관계증명서(상세)</li>
            <li>기본증명서(상세)</li>
            <li>혼인관계증명서(상세)</li>
          </ul>
        </li>
        <li class="toggleable">
          특별 대리인 신청
          <button class="nested-complete-btn">완료</button>
          <ul class="nested">
            <li>가족관계증명서</li>
            <li>주민등록등본</li>
            <li>인감증명서</li>
            <li>특별대리인 신청서</li>
          </ul>
        </li>
        <li class="toggleable">
          인지신고, 친모 동의(1개월)
          <button class="nested-complete-btn">완료</button>
          <ul class="nested">
            <li>인지신고서(붙임)</li>
            <li>피인지자의 출생증명서</li>
            <li>…기타 서류</li>
          </ul>
        </li>
        <li class="toggleable">
          유전자 검사 절차
          <button class="nested-complete-btn">완료</button>
        </li>
        <li class="toggleable">
          출생 확인서
          <button class="nested-complete-btn">완료</button>
        </li>
      </ul>
    </div>

    <!-- 2단계 콘텐츠 -->
    <div id="content-2" class="content">
      <p>
        <strong>2단계:</strong>
        사회복지 관리번호 발급
      </p>
      <ul>
        <li class="toggleable">신생아 특례 대출 <button class="nested-complete-btn">완료</button></li>
        <li class="toggleable">
          국민 건강 보험 신청
          <button class="nested-complete-btn">완료</button>
          <ul class="nested">
            <li>신분증</li>
            <li>지역가입자 자격취득/변동 신고서(붙임)</li>
          </ul>
        </li>
        <li class="toggleable">
          사회 복지 시설 연동
          <button class="nested-complete-btn">완료</button>
          <ul class="nested">
            <li>사회 복지 시설 입소 서류(붙임)</li>
          </ul>
        </li>
        <li class="toggleable">
          사회복지 전산관리번호 발급
          <button class="nested-complete-btn">완료</button>
          <ul class="nested">
            <li>출생미신고증명서</li>
            <li>보호시설 입소증명서</li>
          </ul>
        </li>
      </ul>
    </div>

    <!-- 3단계 콘텐츠 -->
    <div id="content-3" class="content">
      <p>
        <strong>3단계:</strong>
        친생자확인존재의 소 제기
      </p>
      <ul>
        <li class="toggleable">
          소장 작성
          <button class="nested-complete-btn">완료</button>
          <ul class="nested">
            <li>친생자관계존재확인의소</li>
          </ul>
        </li>
        <li class="toggleable">
          소장 및 부본, 증거자료 준비
          <button class="nested-complete-btn">완료</button>
          <ul class="nested">
            <li>가족관계증명서</li>
            <li>주민등록등(초)본</li>
          </ul>
        </li>
        <li class="toggleable">
          관할 가정법원 접수
          <button class="nested-complete-btn">완료</button>
        </li>
        <li class="toggleable">
          상소심 제기
          <button class="nested-complete-btn">완료</button>
          <ul class="nested">
            <li>항소이유서</li>
            <li>상소이유서</li>
          </ul>
        </li>
      </ul>
    </div>
    
	<form action="./profileWorkflowAction.jsp" method="post">
	  <input type="hidden" id="workflowSumInput" name="userWorkflow" value="0">
	  <input type="hidden" name="userID" value=<%= (String)session.getAttribute("userID")%>>
	  <button type="submit" id="workflowSumSubmit">저장하기</button>
	</form>
    
  </div>
	
	
	

  <!-- ─── 스크립트 ─── -->
    <%
	    String userID = (String)session.getAttribute("userID");
	    
	    int userWorkflow = 0;
    	userWorkflow = new UserDAO().getUserWorkflow(userID);
	%>
	<script>
	  const userWorkflow = <%= userWorkflow %>;  // 전역 변수로 선언
	</script>
  <script src="../js/profile.js">
    
  </script>
</body>
</html>

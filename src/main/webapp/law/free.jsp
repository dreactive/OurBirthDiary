<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기 | 소송 구조 신청</title>
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/css/stylesFree.css" rel="stylesheet" >
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
</head>
<body>
	<jsp:include page="/includes/nav.jsp" />
	<header class="header">
        <nav class="header-nav">
    <a href="#" class="header-link">소송구조 신청</a>
    <span class="separator">|</span>
    <a href="./lawyer.jsp" class="header-link">사선 변호사 연결</a>
		  </nav>
		    </header>
		
		    <section class="section" id="section1">
		        <h2>✅ 신청 대상</h2>
		        <p id="text1">다음 요건을 갖춘 미혼부 또는 일반 국민은 소송구조 신청 가능합니다.</p>
		        <ul>
		            <li>소송을 제기하거나 대응할 예정 또는 진행 중</li>
		            <li>경제적으로 곤란하여 소송 수행이 어려운 경우</li>
		            <li>사건이 권리구제의 필요성이 있고 실익이 있는 경우</li>
		            <li>특히, 미혼부가 출생신고를 위해 가정법원에 단독 출생신고 허가 신청을 하는 경우에 해당</li>
		        </ul>
		
		        <h2>✅ 지원 범위</h2>
		        <div class="support-items">
		            <div class="support-box">
		                <div class="icon">🧾</div>
		                <div class="title">송달료 면제</div>
		                <div class="desc">소송 제기 시<br>내야 하는 수수료 면제</div>
		            </div>
		            <div class="support-box">
		                <div class="icon">📝</div>
		                <div class="title">인지대 면제</div>
		                <div class="desc">서류 제출 등에<br>드는 인지료 면제</div>
		            </div>
		            <div class="support-box">
		                <div class="icon">👨‍⚖️</div>
		                <div class="title">변호사 선임</div>
		                <div class="desc">법률구조공단의<br>변호사 선임 지원</div>
		            </div>
		            <div class="support-box">
		                <div class="icon">💸</div>
		                <div class="title">기타 소송비용</div>
		                <div class="desc">필요 시 소송 외부<br>비용 지원 가능</div>
		            </div>
		        </div>
		    </section>
		
		    <section class="section gray-bg" id="section2">
		        <h2>✅ 신청 기관</h2>
		        <div class="agency-grid">
		            <div class="agency-box" onclick="toggleDetail('law')">
		                <div class="agency-img"><img src="../data/img/법률구조공단.png"></div>
		                <div class="caption"> <a href="https://www.klac.or.kr" target="_blank" rel="noopener">바로가기</a></div>
		            </div>
		            <div class="agency-box" onclick="toggleDetail('court')">
		                <div class="agency-img"><img src="../data/img/대한민국법원.png"></div>
		                <div class="caption"><a href="https://www.scourt.go.kr/region/location/RegionSearchListAction.work" target="_blank" rel="noopener">바로가기</a></div>
		            </div>
		        </div>
		
		        <div id="law-detail" class="detail-box">
		            <ol class="step-list">
		                <li><strong>상담 예약 및 접수</strong><br>전화, 온라인 홈페이지 등<br>미혼부 특화지원: 출생신고나 친자확인소송 등을 위한 소송 목적 설명</li>
		                <li><strong>신청서 작성</strong><br>소송구조 신청서 작성<br>사건 개요와 소득, 상담한 정보 등 기재</li>
		                <li><strong>소명자료 제출</strong>
		                    <ul>
		                        <li>진단서, 확인서, 자격득실 확인서 등 본인확인용</li>
		                        <li>소득금액증명서, 급여명세서, 급여대장, 급여지급확인서, 원천징수영수증 등</li>
		                        <li>차량등록증, 통장사본, 금융거래 확인서, 진료기록 등</li>
		                    </ul>
		                </li>
		                <li><strong>구조심사</strong><br>공단 내부 심사 진행 (통상 7~14일 소요)<br>필요한 경우 심사 중 추가 자료 요청</li>
		                <li><strong>결과 통보 및 진행</strong><br>승인 시: 소송대상 명의로 변호사 선임 지원<br>불승인 시: 통보 및 자체 부담</li>
		            </ol>
		        </div>
		
		        <div id="court-detail" class="detail-box">
		            <ol class="step-list">
		                <li><strong>상담 예약 및 접수</strong><br>가정법원 방문 또는 온라인 예약</li>
		                <li><strong>신청서 작성</strong><br>단독출생신고 확인용 신청서 작성</li>
		                <li><strong>소명자료 제출</strong>
		                    <ul>
		                        <li>유전자검사 결과지</li>
		                        <li>기본증명서, 가족관계증명서, 혼인관계증명서</li>
		                    </ul>
		                </li>
		                <li><strong>구조심사</strong><br>법원 내부 절차에 따른 심사 진행</li>
		                <li><strong>결과 통보 및 진행</strong><br>허가 시 법적 보호 절차 진행</li>
		            </ol>
		        </div>
		    </section>
		<script>
		  function toggleDetail(id) {
		    const sections = ['law', 'court'];
		    sections.forEach(sec => {
		      const detail = document.getElementById(sec + '-detail');
		      if (sec === id) {
		        // 클릭된 것만 토글
		        detail.classList.toggle('open');
		      } else {
		        // 나머지는 무조건 닫기
		        detail.classList.remove('open');
		      }
		    });
		  }
		</script>
	
	
	
</body>
</html>
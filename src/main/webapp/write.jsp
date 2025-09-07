<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기 | 글쓰기</title>
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/css/stylesWrite.css" rel="stylesheet" >
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<jsp:include page="/includes/nav.jsp" />
	<div class="post-write">
	    <button id="closePage" class="close-page-btn">&times;</button>
	    <form action="./writeAction.jsp" method="post"">
	      <div class="post-group title-group">
	        <input
	          type="text"
	          id="postTitle"
	          name="bbsTitle"
	          placeholder="제목"
	          required
	        />
	        <select name="bbsType">
	          <option value="0">후기</option>
	          <option value="1">정보</option>
	          <option value="2">질문</option>
	          <option value="3">정책</option>
	        </select>
	    
	      </div>
	
	      <div class="post-group content-group">
	        <textarea name="bbsContent" placeholder="내용을 입력하세요" required></textarea>
	        <input type="text" name="hashtags" placeholder="#해시태그" class="hashtag-input"/>
	        <div class="extras-bar">
	          <p>게시물에 추가</p>
	          <button type="button" id="photoBtn" class="icon-btn"><img src="data/svg/photo.svg" alt="사진 추가"></button>
	          <input type="file" id="photoInput" accept="image/*" style="display: none;">
	          <button type="button" class="icon-btn"><img src="data/svg/tag.svg" alt="사람 태그"></button>
	          <button type="button" class="icon-btn"><img src="icons/emoji.svg" alt="이모지"></button>
	          <button type="button" class="icon-btn"><img src="icons/location.svg" alt="위치"></button>
	        </div>
	      </div>
	
	      
	
	      <div class="post-group options">
	        <select name="bbsRangeView">
	          <option value="" disabled hidden selected>공개 선택</option>
	          <option value="0">전체공개</option>
	          <option value="1">회원공개</option>
	        </select>
	        <select name="bbsRangeComment">
	          <option value="" disabled hidden selected>댓글 선택</option>
	          <option value="0">미혼부 및 법률전문가</option>
	          <option value="1">모두허용</option>
	          <option value="2">비허용</option>
	        </select>
	        <button type="button" id="openWorkflow" class="btn workflow-btn">워크플로우 설정</button>
	  		<input type="hidden" id="workflowSumInput" name="bbsWorkflow" value="0">	
	        
	      </div>
	
	      <div class="post-group actions">
	        <button type="button" class="btn secondary">임시저장</button>
	        <button type="submit" class="btn primary">등록</button>
	      </div>
	    </form>
	  </div>
	
	  <div id="workflowModal" class="modal">
	    <div class="modal-content">
	      <header class="modal-header">
	        <h2>출생신고 워크플로우</h2>
	        <button class="close-btn">&times;</button>
	      </header>
	      <div class="modal-body">
	        <div class="wf-group">
	          <div class="wf-summary">
	            <span class="checkbox"></span>
	            <span class="label">출생신고 관련 문의</span>
	            <span class="status">진행중</span>
	            <span class="arrow"></span>
	          </div>
	          <div class="wf-details">
	            <div class="wf-item"><span class="radio"></span><span>출생신고 신청 절차</span><span class="status ongoing">진행중</span></div>
	            <div class="wf-item"><span class="radio"></span><span>특별 대리인 허가</span><span class="status ongoing">진행중</span></div>
	            <div class="wf-item"><span class="radio"></span><span>인지 신고, 친모 동의</span><span class="status ongoing">진행중</span></div>
	            <div class="wf-item"><span class="radio"></span><span>유전자 검사</span><span class="status ongoing">진행중</span></div>
	          </div>
	        </div>
	        <div class="wf-group">
	          <div class="wf-summary">
	            <span class="checkbox"></span>
	            <span class="label">사회복지 관리번호 관련 문의</span>
	            <span class="status">진행중</span>
	            <span class="arrow"></span>
	          </div>
	          <div class="wf-details">
	            <div class="wf-item"><span class="radio"></span><span>신생아 특례 대출</span><span class="status ongoing">진행중</span></div>
	            <div class="wf-item"><span class="radio"></span><span>국민 건강 보험 신청</span><span class="status ongoing">진행중</span></div>
	            <div class="wf-item"><span class="radio"></span><span>사회 복지 시설 연동</span><span class="status ongoing">진행중</span></div>
	            <div class="wf-item"><span class="radio"></span><span>전산관리번호 발급</span><span class="status ongoing">진행중</span></div>
	          </div>
	        </div>
	        <div class="wf-group">
	          <div class="wf-summary">
	            <span class="checkbox"></span>
	            <span class="label">친생 소송 관련 문의</span>
	            <span class="status">진행중</span>
	            <span class="arrow"></span>
	          </div>
	          <div class="wf-details">
	            <div class="wf-item"><span class="radio"></span><span>소장 작성</span><span class="status ongoing">진행중</span></div>
	            <div class="wf-item"><span class="radio"></span><span>소장 및 부존, 증거자료 준비</span><span class="status ongoing">진행중</span></div>
	            <div class="wf-item"><span class="radio"></span><span>법원 위치</span><span class="status ongoing">진행중</span></div>
	          </div>
	        </div>
	      </div>
	      <footer class="modal-footer">
	        <button id="completeModal" class="btn primary">완료</button>
	      </footer>
	    </div>
	  </div>
	
	<script>
	 const modal = document.getElementById('workflowModal');
	
	// 모달 열기/닫기
	const openBtn = document.getElementById('openWorkflow');
	const closeBtn = document.querySelector('.close-btn');
	openBtn.onclick = () => modal.style.display = 'flex';
	closeBtn.onclick = () => modal.style.display = 'none';
	window.onclick = e => { if (e.target === modal) modal.style.display = 'none'; };
	
	// 요약행 토글
	document.querySelectorAll('.wf-summary').forEach(summary => {
	  summary.addEventListener('click', () => {
	    const details = summary.nextElementSibling;
	    if (details?.classList.contains('wf-details')) {
	      const isOpen = details.classList.toggle('open');
	      summary.classList.toggle('open', isOpen);
	    }
	  });
	});
	
	// 세부 단계 라디오 클릭 및 상태 업데이트
	document.querySelectorAll('.wf-details .radio').forEach(radio => {
	  radio.addEventListener('click', () => {
	    // 라디오 체크 토글
	    radio.classList.toggle('checked');
	
	    // 해당 항목 상태 텍스트 변경
	    const itemStatus = radio.closest('.wf-item').querySelector('.status');
	    if (radio.classList.contains('checked')) {
	      itemStatus.textContent = '완료';
	      itemStatus.classList.replace('ongoing', 'completed');
	    } else {
	      itemStatus.textContent = '진행중';
	      itemStatus.classList.replace('completed', 'ongoing');
	    }
	
	    // 그룹 전체 완료 여부 확인
	    const group = radio.closest('.wf-group');
	    const allRadios = group.querySelectorAll('.wf-details .radio');
	    const groupStatus = group.querySelector('.wf-summary .status');
	    if ([...allRadios].every(r => r.classList.contains('checked'))) {
	      groupStatus.textContent = '완료';
	      groupStatus.classList.replace('ongoing', 'completed');
	      group.querySelector('.wf-summary').classList.add('completed');
	    } else {
	      groupStatus.textContent = '진행중';
	      groupStatus.classList.replace('completed', 'ongoing');
	      group.querySelector('.wf-summary').classList.remove('completed');
	    }
	  });
	});
	
	// 완료 버튼 클릭 시 모달 닫기
	const completeBtn = document.getElementById('completeModal');
	completeBtn.addEventListener('click', () => modal.style.display = 'none');
	
	const photoBtn   = document.getElementById('photoBtn');
	const photoInput = document.getElementById('photoInput');
	
	// photo 버튼 누르면 파일 선택 창 열기
	photoBtn.addEventListener('click', () => {
	  photoInput.click();
	});
	
	// (선택된 파일 처리가 필요하다면)
	photoInput.addEventListener('change', e => {
	  const file = e.target.files[0];
	  if (!file) return;
	  // 예: 콘솔에 파일 이름 출력
	  console.log('선택된 파일:', file.name);
	  // TODO: FormData로 서버 업로드하거나, FileReader로 미리보기 구현
	});
	
	// 페이지 닫기 버튼 핸들러
	const closePageBtn = document.getElementById('closePage');
	closePageBtn.addEventListener('click', () => {
	  // 히스토리 뒤로가기
	  if (window.history.length > 1) {
	    window.history.back();
	  } else {
	    // 히스토리가 없으면 메인으로 리다이렉트 예시
	    window.location.href = '/';
	  }
	});
	
	</script>
</body>
</html>
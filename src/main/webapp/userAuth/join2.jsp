<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입 유형 구분</title>
	<link rel="stylesheet" href="../css/stylesJoin2.css">
</head>
<body>
	<jsp:include page="/includes/nav.jsp" />
	<div class="heading-box">
        <h3>회원 유형에 따라 가입 절차가 달라집니다.</h3>
    </div>
    
    <form class="container" action="join3.jsp" method="post">
        <label class="card">
            <input type="radio" name="userType" value="NM">
            <img src="../data/svg/일반인.png" alt="일반회원 아이콘">
            <div class="label">일반회원</div>
            <p class="desc">기본 정보 입력만으로 간편하게 가입할 수 있는 회원입니다.</p>
        </label>
    
        <label class="card">
            <input type="radio" name="userType" value="SD">
            <img src="../data/svg/미혼부.png" alt="미혼부 아이콘">
            <div class="label">미혼부</div>
            <p class="desc">미혼부 지원 관련 서류 제출이 필요한 회원 유형입니다.</p>
        </label>
    
        <label class="card">
            <input type="radio" name="userType" value="LE">
            <img src="../data/svg/변호사.png" alt="법률전문가 아이콘">
            <div class="label">법률전문가</div>
            <p class="desc">자격증 및 경력 인증을 위한 추가 확인 절차가 필요합니다.</p>
        </label>
    
        <div class="button-wrapper">
            <button type="submit" class="next-button">다음</button>
        </div>
    </form>
    <script>
        function goToSelectedPage() {
            const selected = document.querySelector('input[name="userType"]:checked');
            if (selected) {
                window.location.href = selected.value;
            } else {
                alert("회원 유형을 선택해주세요.");
            }
        }
    </script>
    <script>
	  document.querySelectorAll('.card').forEach(card => {
	    card.addEventListener('click', () => {
	      // 모든 카드에서 selected 제거
	      document.querySelectorAll('.card').forEach(c => c.classList.remove('selected'));
	
	      // 현재 클릭한 카드에 selected 추가
	      card.classList.add('selected');
	
	      // 내부 라디오 버튼 체크
	      card.querySelector('input[type="radio"]').checked = true;
	    });
	  });
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기 | 회원가입</title>
    <!-- 주소 검색 API -->
	<link rel="stylesheet" href="../css/stylesJoinLE.css">
</head>
<body>
	<jsp:include page="/includes/nav.jsp" />
	<div class="form-container">
        <form action="#" method="post">
            <!-- 면허번호 + 인증 버튼 -->
            <div class="license-field">
                <input type="text" id="licenseNumber" placeholder="면허 번호">
                <button type="button" class="button-style" onclick="verifyLicense()">면허 번호 인증</button>
            </div>

            <!-- 자격 취득일 -->
            <input type="date" placeholder="연도-월-일">

            <!-- 학교명 + 학교찾기 버튼 -->
            <div class="school-field">
                <input type="text" id="schoolName" placeholder="학교명" readonly>
                <button type="button" class="button-style" onclick="openPopup()">학교 찾기</button>
            </div>

            <input type="text" placeholder="학과명">
            <input type="text" placeholder="졸업 여부 (예: 졸업)">
            <input type="text" placeholder="직업 (변호사 / 검사 / 판사 등)">

            <div class="buttons">
                <button type="button" class="button-style">이전 페이지</button>
                <button type="submit" class="button-style">완료</button>
            </div>
        </form>
    </div>

    <!-- 학교 찾기 팝업 -->
    <div id="popup" class="popup hidden">
        <div class="popup-content">
            <span class="close-btn" onclick="closePopup()">×</span>
            <h3>학교 찾기</h3>
            <input type="text" id="popupInput" placeholder="학교명을 입력하거나 선택하세요" oninput="filterSchools()">
            <ul id="schoolList">
                <li onclick="selectSchool('서울대학교')">서울대학교</li>
                <li onclick="selectSchool('연세대학교')">연세대학교</li>
                <li onclick="selectSchool('고려대학교')">고려대학교</li>
                <li onclick="selectSchool('부산대학교')">부산대학교</li>
                <li onclick="selectSchool('전남대학교')">전남대학교</li>
            </ul>
            <button class="button-style" onclick="inputCustomSchool()">직접 입력</button>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        function openPopup() {
            document.getElementById('popup').classList.remove('hidden');
        }

        function closePopup() {
            document.getElementById('popup').classList.add('hidden');
        }

        function selectSchool(name) {
            document.getElementById('schoolName').value = name;
            closePopup();
        }

        function inputCustomSchool() {
            const custom = document.getElementById('popupInput').value.trim();
            if (custom) {
                document.getElementById('schoolName').value = custom;
                closePopup();
            }
        }

        function filterSchools() {
            const query = document.getElementById('popupInput').value.toLowerCase();
            const items = document.querySelectorAll('#schoolList li');
            items.forEach(item => {
                item.style.display = item.textContent.toLowerCase().includes(query) ? 'block' : 'none';
            });
        }

        function verifyLicense() {
            const license = document.getElementById('licenseNumber').value.trim();
            if (license === "") {
                alert("면허 번호를 입력해주세요.");
            } else {
                alert("면허번호 인증 완료: " + license);
            }
        }
    </script>
</body>
</html>
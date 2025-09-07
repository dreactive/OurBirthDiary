<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기 | 회원가입</title>
    <!-- 주소 검색 API -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<link rel="stylesheet" href="../css/stylesJoin3.css">
</head>
<body>
	<jsp:include page="/includes/nav.jsp" />
	<div class="register-box">
        <h2>회원가입 절차</h2>

        <form action="joinAction.jsp" method="get">
            <div class="form-row">
                <input type="text" id="user-id" name="userID" placeholder="아이디" required />
                <button type="button" class="check-btn" onclick="checkDuplicate()">중복확인</button>
            </div>
            <div class="form-row">
                <span class="message" id="id-message"></span>
            </div>

            <div class="form-row">
                <input type="password" name="userPassword" placeholder="비밀번호" required />
                <input type="password" name="userPassword2" placeholder="비밀번호 확인" required />
            </div>

            <div class="form-row">
                <input type="email" name="userEmail" placeholder="이메일" required />
            </div>

            <div class="form-row">
                <input type="text" name="userName" placeholder="이름" required />
                <input type="text" name="userPhone" placeholder="핸드폰번호" required />
            </div>

            <div class="form-row">
                <input type="text" id="address" name="userAddress1" placeholder="주소" readonly required />
                <button type="button" class="search-btn" onclick="searchAddress()">주소 검색</button>
            </div>

            <div class="form-row">
                <input type="text" name="userAddress2" placeholder="주소 세부 내용" />
            </div>

            <div class="form-row">
                <input type="date" name="userBirth" placeholder="생년월일" required />
            </div>
            <input type="hidden" name="userType" value="<%=  request.getParameter("userType") %>">
            
			<!--  회원 유형은 여기서 선택이 안되더라도 볼수는 있게 disable 형태로 출력되어야 한다고 봄. -->
            <button type="submit" class="submit-btn">완료</button>
        </form>
    </div>

    <script>
        function checkDuplicate() {
            const input = document.getElementById("user-id").value;
            const msg = document.getElementById("id-message");
            const dummyTakenIds = ["test123", "admin", "user1"];

            if (!input) {
                msg.style.color = "red";
                msg.textContent = "아이디를 입력하세요.";
                return;
            }

            if (dummyTakenIds.includes(input)) {
                msg.style.color = "red";
                msg.textContent = "이미 사용 중인 아이디입니다.";
            } else {
                msg.style.color = "green";
                msg.textContent = "사용 가능한 아이디입니다.";
            }
        }

        function searchAddress() {
            new daum.Postcode({
                oncomplete: function (data) {
                    document.getElementById("address").value = data.address;
                }
            }).open();
        }
        
    </script>
</body>
</html>
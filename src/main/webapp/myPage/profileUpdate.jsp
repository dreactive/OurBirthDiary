<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="user.User"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" class="user.User" scope="page" />
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/css/stylesProfileUpdate.css" rel="stylesheet" >
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
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
} else {
	out.println("<script>alert('로그인이 필요합니다.'); location.href='login.jsp';</script>");
	return;
}
%>
	<div class="container">
    <div class="form-section">
    	<div>
        	<label>이름</label><br>
        	<input type="text" placeholder="이름 입력" value="<%= me.getUserName()%>">
     	</div>
     	<div>
        	<label>생년월일</label><br>
        	<input type="text" placeholder="생년월일 8자리" value="<%= me.getUserBirth()%>">
        </div>
      <div class="row">
      	<div>
	        <label>핸드폰 번호</label><br>
	        <input type="tel" placeholder="010-XXXX-XXXX" value="<%= me.getUserPhone()%>">
	      </div>
	      <div>
	        <label>이메일 주소</label><br>
	        <input type="email" placeholder="XXX@YYY" value="<%= me.getUserEmail()%>">
	      </div>
      </div>
      
      <div>
        <label>주소</label><br>
        <div class="address-row">
          <input type="text" id="zipcode" placeholder="주소 검색 클릭하여 선택하세요" readonly value="<%= me.getUserAddress1()%>">
          <button onclick="searchAddress()">주소 검색</button>
        </div>
      </div>
      <div>
        <input type="text" class="detail-address" placeholder="상세 주소 입력" value="<%= me.getUserAddress2()%>">
      </div>
      <div class="button-row">
        <button onclick="openPasswordModal()">비밀번호 변경</button>
        <button>수정</button>
      </div>
    </div>
    
    <!-- 프로필 사진 영역 (고정 위치) -->
    <div class="profile-section">
      <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEwMDZfMTYw%2FMDAxNjk2NTkwNDYzOTYx.__oofDcGEk1qelksfcJKxxwejnVX5bzufr-WLWforXkg.X9oVMwg9nWMTJpOAr3xA6SOK_6VHZJT8_82hBKnZy9sg.JPEG.tmvldkrk%2F28.jpg&type=sc960_832" id="profileImage" class="profile-img" 
           alt="프로필 사진 클릭해서 업로드" 
           onclick="document.getElementById('profileInput').click()" />
      <input type="file" id="profileInput" class="hidden" accept="image/*" onchange="previewImage(event)">
    </div>
  </div>
  
  <!-- 비밀번호 변경 모달 -->
  <div id="passwordModal">
    <div class="modal-content">
      <h3 style="margin-top:0; font-size:18px;">비밀번호 변경</h3>
      <input type="password" id="currentPassword" placeholder="현재 비밀번호">
      <input type="password" id="newPassword" placeholder="새 비밀번호 (최소 8자)">
      <input type="password" id="confirmPassword" placeholder="새 비밀번호 확인">
      <div class="modal-buttons">
        <button onclick="closePasswordModal()" style="background-color: #888;">닫기</button>
        <button onclick="changePassword()" style="background-color: #7e57c2; color: white;">변경</button>
      </div>
    </div>
  </div>
  
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  
  <script>
    // 프로필 사진 미리보기 처리
    function previewImage(event) {
      const reader = new FileReader();
      reader.onload = function () {
        document.getElementById('profileImage').src = reader.result;
      };
      reader.readAsDataURL(event.target.files[0]);
    }
    
    // 주소 검색 기능
    function searchAddress() {
      new daum.Postcode({
        oncomplete: function (data) {
          document.getElementById('zipcode').value = data.address;
        }
      }).open();
    }
    
    function openPasswordModal() {
      document.getElementById("passwordModal").style.display = "flex";
    }
    function closePasswordModal() {
      document.getElementById("passwordModal").style.display = "none";
    }
    
    // 비밀번호 변경 함수 (AJAX 요청 예시)
    function changePassword() {
      const currentPassword = document.getElementById("currentPassword").value;
      const newPassword = document.getElementById("newPassword").value;
      const confirmPassword = document.getElementById("confirmPassword").value;
      
      if (newPassword.length < 8) {
        alert("새 비밀번호는 최소 8자 이상이어야 합니다.");
        return;
      }
      if (newPassword !== confirmPassword) {
        alert("새 비밀번호가 일치하지 않습니다.");
        return;
      }
      
      fetch("/change-password", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ currentPassword, newPassword })
      })
      .then(response => response.json())
      .then(data => {
        if (data.success) {
          alert("비밀번호가 성공적으로 변경되었습니다.");
          closePasswordModal();
        } else {
          alert("비밀번호 변경 실패: " + data.message);
        }
      })
      .catch(error => {
        console.error("Error:", error);
        alert("서버 오류 발생");
      });
    }
  </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기 | 로그인</title>
	<link rel="stylesheet" href="../css/stylesLogin.css">
	<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />
	
</head>
<body>
	<jsp:include page="/includes/nav.jsp" />
	<div class="login-container">
		<div class="login-box">
	        <img src="../data/img/logo.png" alt="우리들의 출생일기" class="logo">
	
	        <form action="loginAction.jsp" method="post">
	            <div class="login-input-row">
	                <div class="input-fields">
	                	<div class="int-area">
	                    	<input id="userID"type="text" name="userID" required/>
	                    	<label for="userID">아이디</label>
	                    </div>
	                    <div class="int-area">
	                    	<input id="userPassword" type="password" name="userPassword" required/>
	                    	<label for="userPassword">비밀번호</label>
	                    </div>
	                </div>
	                <button class="login-button" type="submit">LOG<br>IN</button>
	            </div>
	
	            <div class="login-options">
	                <div class="social-login-group">
	                    <span class="social-title">Social Login</span>
	                    <div class="social-login">
	                        <img src="../data/img/카카오톡 로고.png" alt="Kakao">
	                        <img src="../data/img/네이버 로고.png" alt="Naver">
	                        <img src="../data/img/페이스북 로고.png" alt="Facebook">
	                        <img src="../data/img/구글 로고.png" alt="Google">
	                    </div>
	                </div>
	
	                <div class="keep-logged-in">
	                    <span class="material-symbols-outlined">check_circle</span>
	  					로그인 상태 유지
	                </div>
	            </div>
	        </form>
	    </div>
	    <div class="links">
	        <button onclick="location.href='./join1.jsp'">회원 가입</button>
	        <button>아이디/비밀번호 찾기</button>
	    </div>
    </div>
    
    <script>
    const id = document.getElementById('userID');
    const pw = document.getElementById('userPassword');
    const btn = document.querySelector('.login-button');

    btn.addEventListener('click', function(event) {
      

      if (id.value.trim() === "") {
    	event.preventDefault(); // form 제출 막기 (선택사항)
        const label = id.nextElementSibling;
        label.classList.add('warning');
        setTimeout(() => label.classList.remove('warning'), 1500);
      } else if (pw.value.trim() === "") {
    	  event.preventDefault(); // form 제출 막기 (선택사항)
        const label = pw.nextElementSibling;
        label.classList.add('warning');
        setTimeout(() => label.classList.remove('warning'), 1500);
      }
    });
    
    const keepLoginBtn = document.querySelector(".keep-logged-in");
    keepLoginBtn.addEventListener("click",() =>{
    	keepLoginBtn.querySelector("span").classList.toggle("active");
    });
    
    </script>
    
</body>
</html>
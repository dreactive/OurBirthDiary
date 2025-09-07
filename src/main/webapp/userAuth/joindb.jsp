<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>회원가입 | 우리들의 출생일기</title>
</head>
<body>
	<jsp:include page="/includes/nav.jsp" />
	<div class="mainScreen">
		<h2>회원가입</h2>
		<form action="joinAction.jsp" method="post">
			<table>
				<tr>
					<td><label for="userID">아이디</label></td>
					<td>
						<input id="userID" name="userID" type="text" placeholder="아이디">
					</td>
				</tr>
				<tr>
					<td><label for="userPassword">비밀번호</label></td>
					<td>
						<input id="userPassword" name="userPassword" type="password" placeholder="비밀번호">
					</td>
				</tr>
				<tr>
					<td><label for="userPassword2">비밀번호 확인</label></td>
					<td>
						<input id="userPassword2" name="userPassword2" type="password" placeholder="비밀번호 재입력">
					</td>
				</tr>
				<tr>
					<td><label for="userEmail">이메일</label></td>
					<td>
						<input id="userEmail" name="userEmail" type="email" placeholder="이메일">
					</td>
				</tr>
				<tr>
					<td><label for="userName">이름</label></td>
					<td>
						<input id="userName" name="userName" type="text" placeholder="이름">
					</td>
				</tr>
				<tr>
					<td><label for="userPhone">연락처</label></td>
					<td>
						<input id="userPhone" name="userPhone" type="text" placeholder="010-XXXX-XXXX">
					</td>
				</tr>
				<tr>
					<td><label for="userAddress1">주소</label></td>
					<td>
						<input id="userAddress1" name="userAddress1" type="text" placeholder="일반주소">
					</td>
				</tr>
				<tr>
					<td><label for="userAddress2">상세주소</label></td>
					<td>
						<input id="userAddress2" name="userAddress2" type="text" placeholder="상세주소">
					</td>
				</tr>
				<tr>
					<td><label for="userBirth">생년월일</label></td>
					<td>
						<input id="userBirth" name="userBirth" type="text" placeholder="20030603">
					</td>
				</tr>
				
				<tr>
					<td>회원 유형</td>
					<td>
						<input type="radio" name="userType" value="SF" checked>미혼부 
						<input type="radio" name="userType" value="LE">법률 전문가 
						<input type="radio" name="userType" value="NM">일반 회원 
					</td>
				</tr>
			</table>
			<button type="submit">제출</button>
		</form>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기 | 회원가입</title>
    <!-- 주소 검색 API -->
	<link rel="stylesheet" href="../css/stylesJoinSD.css">
</head>
<body>
	<jsp:include page="/includes/nav.jsp" />
	<form class="form-container" action="#" method="post">

        <div class="form-row">
            <input type="text" name="childRegistered" placeholder="자녀 출생등록 여부" required>
            <input type="text" name="regNumber" placeholder="출생등록 번호" required>
        </div>

        <div class="form-row">
            <input type="number" name="childCount" placeholder="자녀수" required>
            <input type="number" name="childAge" placeholder="자녀 나이" required>
        </div>

        <div class="form-single">
            <input type="text" name="motherMarried" placeholder="아이 모 결혼여부" required>
        </div>

        <div class="form-single">
            <input type="text" name="nationality" placeholder="국적" required>
        </div>

        <div class="form-buttons">
            <button type="button" class="btn-bottom" onclick="history.back()">이전 페이지</button>
            <button type="submit" class="btn-bottom">완료</button>
        </div>
    </form>
</body>
</html>
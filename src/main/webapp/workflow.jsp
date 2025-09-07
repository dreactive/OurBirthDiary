<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기 | 출생 신고 로드맵</title>
    <link rel="stylesheet" href="./css/stylesWorkflow.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<jsp:include page="./includes/nav.jsp" />
	
    <!-- 단계 선택 영역 -->
    <div class="step-header">
        <button class="btn-change-phase" onclick="changePhase(-1)">◀</button>
        <div class="phase" id="phase0" onclick="selectPhase(0)">1단계<br>신고</div>
        <div class="phase" id="phase1" onclick="selectPhase(1)">2단계<br>발급</div>
        <div class="phase" id="phase2" onclick="selectPhase(2)">3단계<br>소송</div>
        <button class="btn-change-phase" onclick="changePhase(1)">▶</button>
    </div>

    <!-- 버튼 리스트 -->
    <div class="step-main">
    	<div id="menuContainer" class="step-menu-list"></div>
    	<div id="menuExplanation"></div>
    </div>
    <!-- JS -->
    <script src="./js/workflow.js"></script>
</body>

</html>
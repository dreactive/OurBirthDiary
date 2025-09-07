<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/css/stylesMyDocView.css" rel="stylesheet" >
	<link rel="stylesheet" href="https://fonts.googleapis.com/
css2?family=Material+Symbols+Outlined" />
		
</head>
<body>
	<div class="container">
        <div class="select-boardType">
            <button id="btn-myboard" class="btn-boardType">
                <span class="material-symbols-outlined">edit_note</span>
                <div class="btn-board-text">내가 쓴 글</div>
            </button>
            <button id="btn-tempboard" class="btn-boardType">
                <span class="material-symbols-outlined">save_clock</span>
                <div class="btn-board-text">임시 저장</div>
            </button>
            <button id="btn-scrap" class="btn-boardType">
                <span class="material-symbols-outlined">bookmark</span>
                <div class="btn-board-text">스크랩</div>
            </button>
            
        </div>
        <div class="boardContent">
            <div class="board-list">
                <!-- 스크랩 완성 된 이후 붙일 것 -->
                <% for(int i=0;i<7;i++) {%>
                <div class="items">
				      <!-- 반복 예시 4개 -->
				      
				      
				      <div class="item-card">
				        <div class="item-content">
				        	<div class="item-text">
					          <span class="tag">정책 게시판</span>
					          <p> <strong>한부모 가족 지원 정책 한부모 가족</strong> </p>
					          <p>한부모 가족 지원 정책 한부모 가족 지원 정책 변화를 중심으로 간략히 설명했...</p>
				          	</div>
				          	<div class="bbs-attachment-img">
				          		<img alt="attachment1" src="">
				          	</div>
				        </div>
				      </div>
				    </div>
				   <% }%>
            </div>
            <div class="board-view">

                <div class="postBox">
                    
                    <div class="title"><h2>「가족관계등록법」개정에 따른 변동사항</h2></div>
                    <div class="boardName">정보 게시판</div>
            
                    <div class="profile">
                        <img src="" alt="Profile"/>
                        <div>
                            <div>노래부르는 마이콜</div>
                            <div><small>2025.05.17</small></div>
                        </div>
                    </div>
            
                    <p>
                    21년 3월에 재개정된 「가족관계등록법」에 따라 미혼부 자녀 출생신고 절차가 간소화 되었습니다. 아이 엄마의 소재불명, 아이 엄마가 정당한 사유 없이 출생신고에 필요한 서류 제출에 협조하지 아니하는 등의 장애가 있는 경우뿐만 아니라 아이 엄마의 성명ㆍ등록기준지 및 주민등록번호의 전부 또는 일부를 알 수 없어 아이 엄마를 특정할 수 없는 경우 또는 아이 엄마가 공적 서류ㆍ증명서ㆍ장부 등에 의하여 특정될 수 없는 경우에도 미혼부 본인의 등록기준지 또는 주소지를 관할하는 가정법원의 확인을 받아 출생신고를 할 수 있습니다.
                    </p>
            
                    <div class="attachment">
                        
                        
                            <div style="background-image: url(''); background-size: cover;"></div>
                            <div style="background-image: url(''); background-size: cover;"></div>
                            <div style="background-image: url(''); background-size: cover;"></div>
                    </div>
            
                    <div class="icons">
                        <div>♡ 9</div>
                        <div>💬 9</div>
                        <div>📤</div>
                        <div>🔖</div>
                    </div>
                </div>

                <div class="commentSection">
                    <div class="postBox">
                        <div class="commentTitle">
                            <div>💬 댓글</div>
                        </div>
                        <div class="commentList">
                            <div class="comment">
                                <div class="comment-left">
                                    <img src="" alt="Profile"/>
                                    <div class="comment-likey">
                                        <span>❤</span>
                                        3
                                    </div>
                                </div>
                                
                                <div class="comment-right">
                                    <div class="comment-info">
                                        <div class="comment-writer">라이언</div>
                                        <div class="comment-date"><small>2025.05.17</small></div>
                                    </div>
                                    <p class="comment-content">와 이건 무조건이야</p>
                                    <button class="reply">답글 달기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
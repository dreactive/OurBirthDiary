<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기</title>
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/css/stylesMain.css" rel="stylesheet" >
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
</head>
<body>
<%
String userID = null;
if (session.getAttribute("userID")!=null) {
	userID = (String)session.getAttribute("userID");
}
%>
	<jsp:include page="/includes/nav.jsp" />
	<!-- <div class="header"></div> -->
    <div class="structure">
    <%
	if(userID!=null) {
	%>
    	<button class="btn_write">
            <a href="write.jsp" class="btn_write1_link"> <img src="data/svg/글쓰기.png" alt="아이콘"  width="30" height="30" ></a>
         </button>
    <%} %>
        <div class="main">
            <div class="container">
            	<div class="search-space"></div>
    <%
    
    String title[] = {
    	"「가족관계등록법」개정에 따른 변동사항",
        "실제 사례와 비교해 주세요",
        "소송 준비중입니다",
        "법률 상담 기관 추천 부탁드려요",
        "도움받은 사례 공유합니다",
        "법률 상담 기관 괜찮은곳 아시나요?",
        "이 절차가 맞는지 확인 부탁드려요",
        "실제 처리 기간이 궁금합니다",
        "신청 준비물 알려주세요",
        "시설 관련하여...",
        "인터넷으로 진행 가능한가요?",
        "신청 준비물 알려주세요",
        "소송진행",
        "인터넷으로 진행 가능한가요?",
        "신청 준비물 알려주세요",
        "신청 준비물 알려주세요",
        "대리 신청이 가능한가요?",
        "법원 접수 경험자 계신가요?",
        "도움받은 사례 공유합니다",
        "실제 처리 기간이 궁금합니다",
        "법원 접수 경험자 계신가요?",
        "상담 기관 추천 부탁드려요",
        "실제 처리 기간이 궁금합니다",
        "상담 기관 추천 부탁드려요",
        "상담 기관 추천 부탁드려요",
        "법원 접수 경험자 계신가요?"
    };

    String boardType[] = {
    	"정보 게시판",
    	"정보 게시판",
    	"정보 게시판",
    	"정보 게시판",
    	"정보 게시판",
    	"정보 게시판",
    	"정보 게시판",
    	"정보 게시판",
    	"정보 게시판",
    	"정보 게시판",
    	"정보 게시판",
    	"후기 게시판",
    	"후기 게시판",
    	"후기 게시판",
    	"후기 게시판",
    	"후기 게시판",
    	"후기 게시판",
    	"후기 게시판",
    	"후기 게시판",
    	"후기 게시판",
    	"후기 게시판",
        "질문 게시판",
        "질문 게시판",
        "질문 게시판",
        "정책 게시판",
        "정책 게시판",
    };

    String boardWorkflow[] = {
    	"국민 건강 보험 신청",
        "특별대리인 허가",
        "소장 및 부본, 증거자료 준비",
        "관할 가정법원 접수",
        "출생확인서",
        "상소심 제기",
        "신생아 특례 대출",
        "소장 및 부본, 증거자료 준비",
        "인지 신고, 친모 동의",
        "사회 복지 시설 연동",
        "행복이음을 통한 전산관리번호 신청",
        "소장 작성",
        "소장 작성",
        "행복이음을 통한 전산관리번호 신청",
        "국민 건강 보험 신청",
        "행복이음을 통한 전산관리번호 신청",
        "출생신고 신청 절차",
        "관할 가정법원 접수",
        "상소심 제기",
        "유전자 검사 절차",
        "관할 가정법원 접수",
        "사회복지시설 연동",
        "출생신고 신청 절차",
        "국민 건강 보험 신청",
        "소장 작성",
        "사회 복지 시설 연동"
    };

    String writer[] = {
    		"노래부르는 마이콜",
        "최윤아",
        "홍진우",
        "백민재",
        "강나래",
        "백민재",
        "강나래",
        "강나래",
        "박재훈",
        "익명",
        "백민재",
        "이정민",
        "윤지후",
        "최윤아",
        "백민재",
        "강나래",
        "박재훈",
        "익명",
        "홍길동",
        "정하늘",
        "백민재",
        "강나래",
        "최윤아",
        "윤지후",
        "강나래",
        "백민재"
    };

    String boardTime[] = {
    		"2025-05-17",
        "2025-05-20",
        "2025-05-22",
        "2025-05-13",
        "2025-05-21",
        "2025-05-11",
        "2025-05-05",
        "2025-05-10",
        "2025-05-04",
        "2025-05-19",
        "2025-05-03",
        "2025-05-19",
        "2025-05-13",
        "2025-05-13",
        "2025-05-19",
        "2025-05-04",
        "2025-05-07",
        "2025-05-06",
        "2025-05-13",
        "2025-05-26",
        "2025-05-21",
        "2025-05-10",
        "2025-05-05",
        "2025-05-12",
        "2025-05-04",
        "2025-05-24"
    };

    String boardContent[] = {
    		"21년 3월에 재개정된 「가족관계등록법」에 따라 미혼부 자녀 출생신고 절차가 간소화 되었습니다. 아이 엄마의 소재불명, 아이 엄마가 정당한 사유 없이 출생신고에 필요한 서류 제출에 협조하지 아니하는 등의 장애가 있는 경우뿐만 아니라 아이 엄마의 성명ㆍ등록기준지 및 주민등록번호의 전부 또는 일부를 알 수 없어 아이 엄마를 특정할 수 없는 경우 또는 아이 엄마가 공적 서류ㆍ증명서ㆍ장부 등에 의하여 특정될 수 없는 경우에도 미혼부 본인의 등록기준지 또는 주소지를 관할하는 가정법원의 확인을 받아 출생신고를 할 수 있습니다.",
        "아이 유전자 검사 하려고 특별 대리인 신청하려는데 일때문에 시간이 안나네요.. 혹시 어머니한테 부탁하려고 하는데 대리 신청 가능할까요?",
        "어떤 기관에서 상담을 받는 것이 도움이 될지 고민 중입니다. 추천 부탁드립니다.",
        "제 사례가 일반적인지 잘 모르겠네요.비슷한 경험 있으시면 댓글 부탁드려요. 혼자 진행해도 될까요?",
        "혼자 하려니 어렵네요. 혹시 출생신고 대리로도 신청 가능한 절차인지 궁금합니다.",
        "혼자 하려니 어렵네요. 변호사 선임하려고 하는데 상담기관 추천해주세요",
        "디딤돌에서 신생아 특례대출 진행하려고 하는데 혹시 받아보신분 있나요? 아이는 태어난지 2개월정도 됐어요 지금 전셋집에서 지내고 있는데 대출 가능할까요?",
        "법원 접수할 때 유의할 점이 있다면 알려주세요.준비 철저히 하고 싶습니다. 현재 유전자 검사결과지, 주변 지인들 서면서까지 받아놨는데 추가로 있으면 좋은 증거 있나요?",
        "공식 사이트의 안내 외에 추가적으로 필요한 게 있었던 경험 있으신가요?",
        "혼자 하려니 어렵네요. 시설 입소할 예정인데 경험자분들 조언 부탁드립니다.",
        "제 사례가 일반적인지 잘 모르겠네요.비슷한 경험 있으시면 댓글 부탁드려요. 주민센터 갈 시간이 없는데 인터넷으로 하는 방법 있는지 알려주세요.",
        "혼자 하려니 어렵네요. 혹시 변호사 없이 혼자 진행하신분 계신가요?",
        "법원 접수할 때 유의할 점이 있다면 알려주세요.준비 철저히 하고 싶습니다.",
        "전산관리번호 신청할 예정입니다. 인터넷으로 진행가능한지 안된다면 방문 전 준비해야 할 서류나 미리 챙겨야 할 사항이 있을까요? 경험자 분들 조언 부탁드립니다.",
        "사이트의 안내 외에 추가적으로 필요한 게 있었던 경험 있으신가요?",
        "해당 절차를 처음 진행해보는 미혼부입니다.필요한 준비물과 진행 단계에 대해 자세히 알고 싶습니다.",
        "공식 사이트의 안내 외에 추가적으로 필요한 게 있었던 경험 있으신가요?",
        "법원 접수할 때 유의할 점이 있다면 알려주세요.준비 철저히 하고 싶습니다.",
        "해당 절차를 처음 진행해보는 미혼부입니다.필요한 준비물과 진행 단계에 대해 자세히 알고 싶습니다.",
        "유전자 검사 진행할 예정인데 기간은 얼마나 걸리나요? 정부 지원을 받아야하는데 너무 오래걸리면 경제적으로 힘들것같아서요...",
        "법원 접수할 때 유의할 점이 있다면 알려주세요.",
        "어떤 기관에서 상담을 받는 것이 도움이 될지 고민 중입니다.추천 부탁드립니다.",
        "출생신고 진행 처리 기간이 길다는 얘기를 들었는데 실제 경험 공유해주시면 감사하겠습니다. 이제 출생신고를 진행할 예정인데 어떤 과정이 가장 힘들고 주의할점이 있나요?",
        "처리 기간이 길다는 얘기를 들었는데 실제 경험 공유해주시면 감사하겠습니다.",
        "혼자 하려니 부담되네요. 혹시 국선 변호사 신청해보신분 있나요? 가능한 절차인지 궁금합니다.",
        "방문 전 준비해야 할 서류나 미리 챙겨야 할 사항이 있을까요?경험자 분들 조언 부탁드립니다."
    };


    %>        
            
            <% for(int i=0;i<26;i++) {%>
            	<div class="postBox" draggable="true">
            		
			        <div class="title"><h2><%= title[i]%></h2></div>
			        <div class="boardName"><%= boardType[i]%></div>
			        <div class="boardWorkflow"><%= boardWorkflow[i]%></div>
			
			        <div class="profile">
			            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEwMDZfMTYw%2FMDAxNjk2NTkwNDYzOTYx.__oofDcGEk1qelksfcJKxxwejnVX5bzufr-WLWforXkg.X9oVMwg9nWMTJpOAr3xA6SOK_6VHZJT8_82hBKnZy9sg.JPEG.tmvldkrk%2F28.jpg&type=sc960_832" alt="Profile"/>
			            <div>
			                <div><%= writer[i]%></div>
			                <div><small><%= boardTime[i]%></small></div>
			            </div>
			        </div>
			
			        <p>
			        <%= boardContent[i]%>
			        </p>
			
			        <div class="attachment">
			            <%-- 첨부파일을 3개 이하로 보여주는 가정 --%>
			            
			                <div style="background-image: url(''); background-size: cover;"></div>
			                <div style="background-image: url(''); background-size: cover;"></div>
			                <div style="background-image: url(''); background-size: cover;"></div>
			        </div>
			
			        <div class="icons">
			            <button class="btn-bbslikey"><span class="material-symbols-outlined">favorite_border</span>9</button>
			            <button class="btn-comment"><span class="material-symbols-outlined">chat_bubble</span>3</button>
			            <button class="btn-share"><span class="material-symbols-outlined">share</span></button>
			            <button class="btn-scrap"><span class="material-symbols-outlined">bookmark_border</span></button>
			        </div>
			    </div>
			    <% }%>
			    
            
            
            	
			    
			    
            </div>
        </div>
        <div class="sidebar">
        	
        	<div class="commentSection collapsed">
        	<% for(int i=0;i<26;i++) {%>
        		<div class="postBox">
        			<div class="commentTitle">
        				<div>💬 댓글</div>
        			</div>
        			<div class="commentList">
        				<div class="comment">
        					<div class="comment-left">
        						<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEwMDZfMTYw%2FMDAxNjk2NTkwNDYzOTYx.__oofDcGEk1qelksfcJKxxwejnVX5bzufr-WLWforXkg.X9oVMwg9nWMTJpOAr3xA6SOK_6VHZJT8_82hBKnZy9sg.JPEG.tmvldkrk%2F28.jpg&type=sc960_832" alt="Profile"/>
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
				            	<p class="comment-content">이건 스크랩해야겠네요~ <%= i %>번째</p>
				            	<button class="reply">답글 달기</button>
				            </div>
				        </div>
				        
				        
				        
        			</div>
        			<div class="commentInput">
        				<form action="#" method="post">
							<div class="commentInput-inner">
						        <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEwMDZfMTYw%2FMDAxNjk2NTkwNDYzOTYx.__oofDcGEk1qelksfcJKxxwejnVX5bzufr-WLWforXkg.X9oVMwg9nWMTJpOAr3xA6SOK_6VHZJT8_82hBKnZy9sg.JPEG.tmvldkrk%2F28.jpg&type=sc960_832" alt="Profile" class="input-profile"/>
						        <textarea class="input-text" placeholder="댓글을 입력하세요..."></textarea>
						    </div>
						    <div class="commentInput-footer">
						        <button class="submit-comment">등록</button>
						    </div>
					    </form>
					</div>
        		</div>
        		<% }%>
        	</div>
	        <button class="toggle-sidebar" aria-label="사이드바 열기/닫기">
	        	<span class="material-symbols-outlined">manage_search</span>
	        	<span class="material-symbols-outlined collapsed">data_table</span>
	        </button>
            <div class="container board">
				  <!-- 인기 게시글 섹션 -->
				  <div class="sidebar-section popular">
				    <div class="section-header">
				    <span class="title">인기 게시글</span>
				    <div class="tabs">
				      <button class="active" data-period="daily">일간</button>
				      <button data-period="weekly">주간</button>
				      <button data-period="monthly">월간</button>
				    </div>
				  </div>
				    <div class="items">
				         <div class="item-list active" data-period="daily">
				         <% for(int i=0;i<5;i++) {%>
						    <div class="item-card">
						      <div class="item-content">
						        	<div class="item-text">
							          <span class="tag"> <%= i+1+"위." %> 정책 게시판</span>
							          <p> <strong>한부모 가족 지원 정책 한부모 가족</strong> </p>
							          <p>한부모 가족 지원 정책 한부모 가족 지원 정책 변화를 중심으로 간략히 설명했...</p>
						          	</div>
						          	<div class="bbs-attachment-img">
						          		<img alt="attachment1" src="">
						          	</div>
						        </div>
						    </div>
						  <% }%>
				    <!-- 추가일간리스트 -->
			  			</div>
				
				        <div class="item-list" data-period="weekly">
				      <!-- 주간 리스트 -->
				      		<% for(int i=0;i<5;i++) {%>
						    <div class="item-card">
						      <div class="item-content">
						        	<div class="item-text">
							          <span class="tag"> <%= i+1+"위." %> 정책 게시판</span>
							          <p> <strong>한부모 가족 지원 정책 한부모 가족</strong> </p>
							          <p>한부모 가족 지원 정책 한부모 가족 지원 정책 변화를 중심으로 간략히 설명했...</p>
						          	</div>
						          	<div class="bbs-attachment-img">
						          		<img alt="attachment1" src="">
						          	</div>
						        </div>
						    </div>
						  <% }%>
				      <!-- … -->
				    	</div>
				     	<div class="item-list" data-period="monthly">
				      <!-- 월간 리스트 -->
				      		<% for(int i=0;i<5;i++) {%>
						    <div class="item-card">
						      <div class="item-content">
						        	<div class="item-text">
							          <span class="tag"> <%= i+1+"위." %> 정책 게시판</span>
							          <p> <strong>한부모 가족 지원 정책 한부모 가족</strong> </p>
							          <p>한부모 가족 지원 정책 한부모 가족 지원 정책 변화를 중심으로 간략히 설명했...</p>
						          	</div>
						          	<div class="bbs-attachment-img">
						          		<img alt="attachment1" src="">
						          	</div>
						        </div>
						    </div>
						  <% }%>
				      <!-- … -->
				   	 	</div>
			               
			        </div>
			      </div>
				   
				
				
				  <!-- 스크랩 섹션 -->
				  <div class="sidebar-section scrap">
				    <div class="section-header">
				      <span class="title">스크랩</span>
				    </div>
				    <div class="items">
				      <!-- 
				      <div class="item-card">
				        <div class="item-content">
				        	<div class="item-text">
					          <span class="tag">정책 게시판</span>
					          <p class="scrap-title"> <strong>한부모 가족 지원 정책 한부모 가족</strong> </p>
					          <p class="scrap-content">한부모 가족 지원 정책 한부모 가족 지원 정책 변화를 중심으로 간략히 설명했...</p>
				          	</div>
				          	<div class="bbs-attachment-img">
				          		<img alt="attachment1" src="">
				          	</div>
				        </div>
				      </div>
				       -->
				    </div>
				  </div>
				  
            
            
            </div>
			
        	<div class="container search-section collapsed">
	        	<div class="search">
					<form method='get' action='#'>
						<input type="text" name='query' placeholder='검색어를 입력하세요.'>
						<button type="submit">
							<span class="material-symbols-outlined"  style='width:20%; height:30px;'>search</span>
						</button>
					</form>
				</div>
				
				<div class="searchEngine">
					<div class="searchHeader">
						<h2>빠른 검색</h2>
						<div class="searchCategory">
							<button class="searchBoard">
								<span class="material-symbols-outlined categoryIcon">view_module</span>
								<div>
									<span>게시판</span>
									<span id="board_arrow_down" class="material-symbols-outlined">keyboard_arrow_down</span>
								</div>
							</button>
							<button class="searchKeyword">
								<span class="material-symbols-outlined categoryIcon">local_offer</span>
								<div>
									<span>키워드</span>
									<span id="keyword_arrow_down" class="material-symbols-outlined">keyboard_arrow_down</span>
								</div>
							</button>
							<button class="searchWorkflow">
								<span class="material-symbols-outlined categoryIcon">format_list_numbered</span>
								<div>
									<span>단계별</span>
									<span id="workflow_arrow_down" class="material-symbols-outlined">keyboard_arrow_down</span>
								</div>
							</button>
						</div>
					</div>
					
					<div class="searchDetail">
						<div class="searchBoard-menu engine-active">
							<h2>게시판별 검색</h2>
							<div class="searchBoardContent">
								<button class="searchReview">
									후기
								</button>
								<button class="searchInfo">
									정보
								</button>
								<button class="searchQna">
									질문
								</button>
								<button class="searchPolicy">
									정책
								</button>
							</div>
						</div>
						<div class="searchKeyword-menu engine-active">
							<h2>키워드별 검색</h2>
							<div class="searchBoardContent">
								<button class="hash">
									<span>출생신고서</span>
								</button>
								<button class="hash">
									<span>전산관리번호</span>
								</button>
								<button class="hash">
									<span>친생자 출생신고</span>
								</button>
								<button class="hash">
									<span>소장 작성</span>
								</button>
							</div>
						</div>
						<div class="searchWorkflow-menu engine-active">
							<%
								String workflowTitle[]={
										"출생신고","사회복지 관리번호 발급","친생 소송 준비"
								};
								String workflowDetail[][] = {
										{"출생 신고 신청 절차","특별대리인 허가","인지 신고, 친모 동의","유전자 검사 절차","출생확인서"},
										{"신생아 특례 대출","국민 건강 보험 신청","사회 복지 시설 연동","행복이음을 통한 신청"},
										{"소장 작성","소장 및 부본, 증거자료 준비","관할 가정법원 접수","상소심 제기"}
								};
							%>
							<h2>출생신고 단계별 검색</h2>
							<div class="searchWorkflow-level">
								<button class="level" onclick="renderWorkflow(0)">
									<span>1</span>
								</button>
								
								<span class="material-symbols-outlined">arrow_right_alt</span>
								
								<button class="level" onclick="renderWorkflow(1)">
									<span>2</span>
								</button>
								
								<span class="material-symbols-outlined">arrow_right_alt</span>
								
								<button class="level" onclick="renderWorkflow(2)">
									<span>3</span>
								</button>
							</div>
							<div class="searchWorkflow-content">
								<div id="workflow-title" class="searchWorkflow-title">찾고자하는 단계를 클릭해주세요.</div>
								<ul id="workflow-list" class="searchWorkflow-list"></ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			
        </div>
        <div class="line"></div>
    </div>
    <div class="footer">4</div>
    <div class="viewer">
    	<div class="viewer-content"></div>
    	<button id="viewer-cancel"><span class="material-symbols-outlined">close</span></button>
    </div>
    <script>
        /*
  		//뷰어 내용 설정
        const viewerContent = document.querySelector(".viewer-content");
		document.getElementsByClassName("btn-comment")[0].addEventListener("click",()=> { //임시 조치 [0]
			document.querySelector("body > div.viewer").style.display='block';
			const targetBbs = document.querySelector("body > div.structure > div.main > div > div.postBox");
			const targetCommnets = document.querySelector("body > div.structure > div.sidebar > div.commentSection.collapsed > div.postBox");
			viewerContent.appendChild(targetBbs.cloneNode(true));
			viewerContent.appendChild(targetCommnets.cloneNode(true));
			
		});
		*/
		document.getElementById("viewer-cancel").addEventListener("click",()=> {
			document.querySelector("body > div.viewer").style.display='none';
			viewerContent.replaceChildren(); // 아무 값으로도 대체하지 않으므로 삭제되는 것과 같은 원리
		});
		
		document.addEventListener("DOMContentLoaded", function () {
		    const viewer = document.querySelector(".viewer");
		    const viewerContent = viewer.querySelector(".viewer-content");

		    const postBoxes = document.querySelectorAll(".postBox");
		    const commentSections = document.querySelectorAll(".commentSection.collapsed .postBox");

		    document.querySelectorAll(".btn-comment").forEach((button, index) => {
		        button.addEventListener("click", function () {
		            // viewer 초기화
		            viewerContent.innerHTML = "";

		            // 현재 인덱스에 해당하는 postBox 클론
		            const postClone = postBoxes[index]?.cloneNode(true);
		            const commentClone = commentSections[index]?.cloneNode(true);

		            if (postClone) viewerContent.appendChild(postClone);
		            if (commentClone) viewerContent.appendChild(commentClone);

		            // viewer 보여주기
		            viewer.style.display = "block";
		        });
		    });
		});
		
		
		
		
		const searchDiv = document.querySelector('.search');
		const searchEngineDiv = document.querySelector('.searchEngine');
			
		let searchBoardCnt=0;
		let searchBoard = document.querySelector(".searchBoard");
		
		searchBoard.addEventListener("click",()=>{
			if (searchBoardCnt%2==0) {
				document.querySelector(".searchBoard-menu").classList.remove("engine-active");
				document.getElementById("board_arrow_down").style.transform="rotate(180deg)";
			}
			else {
				document.querySelector(".searchBoard-menu").classList.add("engine-active");
				document.getElementById("board_arrow_down").style.transform="rotate(0)";
			}
			searchBoardCnt+=1;
		})
		let searchKeywordCnt=0;
		let searchKeyword = document.querySelector(".searchKeyword");
		searchKeyword.addEventListener("click",()=>{
			if (searchKeywordCnt%2==0) {
				document.querySelector(".searchKeyword-menu").classList.remove("engine-active");
				document.getElementById("keyword_arrow_down").style.transform="rotate(180deg)";
			}
			else {
				document.querySelector(".searchKeyword-menu").classList.add("engine-active");
				document.getElementById("keyword_arrow_down").style.transform="rotate(0)";
			}
			searchKeywordCnt+=1;
		})
		let searchWorkflowCnt=0;
		let searchWorkflow = document.querySelector(".searchWorkflow");
		searchWorkflow.addEventListener("click",()=>{
			if (searchWorkflowCnt%2==0) {
				document.querySelector(".searchWorkflow-menu").classList.remove("engine-active");
				document.getElementById("workflow_arrow_down").style.transform="rotate(180deg)";
			}
			else {
				document.querySelector(".searchWorkflow-menu").classList.add("engine-active");
				document.getElementById("workflow_arrow_down").style.transform="rotate(0)";
			}
			searchWorkflowCnt+=1;
		})
		
		/*
		// li태그가 생성되기 전이므로 여기에 복붙하면 안됨,
		document.querySelectorAll('.searchWorkflow-list li').forEach(item => {
		  item.addEventListener('click', () => {
		    const isActive = item.classList.contains('active-button');
		    document.querySelectorAll('.searchWorkflow-list li').forEach(li => li.classList.remove('active-button'));
		    if (!isActive) item.classList.add('active-button');
		  });
		});
		*/
		
    </script>
	
	<script>
	//1) 요소 캐시
	const tabButtons = document.querySelectorAll('.popular .tabs button');
	const lists      = document.querySelectorAll('.popular .item-list');
	const dailyList  = document.querySelector('.popular .item-list[data-period="daily"]');
	
	// 2) 페이지 로드 시 일간 콘텐츠 백업
	let dailyContent = dailyList.innerHTML;
	
	tabButtons.forEach(btn => {
	  btn.addEventListener('click', () => {
	    const period = btn.dataset.period;
	
	    // 탭 active 토글
	    tabButtons.forEach(b =>
	      b.classList.toggle('active', b === btn)
	    );
	
	    // 리스트 보이기/숨기기
	    lists.forEach(list => {
	       list.classList.toggle('active', list.dataset.period === period);
	  });
	
	    // daily 탭일 때는 복원, 아니면 내용 삭제
	    if (period === 'daily') {
	    dailyList.innerHTML = dailyContent;
	  } else {
	    dailyList.innerHTML = '';
	  }
	});
	});
	
	//버튼 토글 
	const toggleBtn        = document.querySelector('.toggle-sidebar');
	const sidebarContainerBoard = document.querySelector('.sidebar .container.board');
	const sidebarContainerSearch = document.querySelector('.sidebar .container.search-section');
	
	toggleBtn.addEventListener('click', () => {
	  // 1) 사이드바 토글 (collapsed 클래스 추가/제거)
	  sidebarContainerBoard.classList.toggle('collapsed');
	  sidebarContainerSearch.classList.toggle('collapsed');
	
	  // 2) 버튼 아이콘 토글
	  toggleBtn.querySelectorAll('span').forEach(span=>{
		  span.classList.toggle('collapsed');
	  });
	  
	});
	
	</script>

	<script>
		//searchEngine 디자인
		
		// searchBoard-menu
			document.querySelectorAll('.searchBoard-menu button').forEach(button => {
		  button.addEventListener('click', () => {
		    button.classList.toggle('active-button');
		  });
		});
		
		  // ✅ searchKeyword-menu – 하나만 클릭되도록 (toggle 포함)
		  document.querySelectorAll('.searchKeyword-menu button').forEach(button => {
		    button.addEventListener('click', () => {
		    	//키워드로 검색창 검색
		    	document.querySelector('.search>form>input').value = button.querySelector('span').innerText;
		    	
		      const isActive = button.classList.contains('active-button');
		      document.querySelectorAll('.searchKeyword-menu button')
		              .forEach(btn => btn.classList.remove('active-button'));
		      if (!isActive) button.classList.add('active-button'); // toggle 역할
		      
		    });
		  });

		  // ✅ searchWorkflow-menu – .level 하나만 활성화되도록 (toggle 포함)
		  document.querySelectorAll('.searchWorkflow-menu .level').forEach(level => {
		    level.addEventListener('click', () => {
		      const isActive = level.classList.contains('active-button');
		      document.querySelectorAll('.searchWorkflow-menu .level')
		              .forEach(l => {
		            	  l.classList.remove('active-button');
		            	});
		      if (!isActive) level.classList.add('active-button'); // toggle 역할
		      else { //없을 때는 해당되지 않은 내용이므로 빈 내용 출력
            	  document.getElementById("workflow-title").replaceChildren();
            	  document.getElementById("workflow-list").replaceChildren();
            	  document.getElementById("workflow-title").textContent = "찾고자하는 단계를 클릭해주세요.";
		      }
		    });
		  });
	</script>
	
	<script>
	  const workflowData = {
	    titles: ["출생신고", "사회복지 관리번호 발급", "친생 소송 준비"],
	    details: [
	      ["출생 신고 신청 절차", "특별대리인 허가", "인지 신고, 친모 동의", "유전자 검사 절차", "출생확인서"],
	      ["신생아 특례 대출", "국민 건강 보험 신청", "사회 복지 시설 연동", "행복이음을 통한 신청"],
	      ["소장 작성", "소장 및 부본, 증거자료 준비", "관할 가정법원 접수", "상소심 제기"]
	    ]
	  };
	  
	  function renderWorkflow(index) {
	    const title = workflowData.titles[index];
	    const steps = workflowData.details[index];

	    document.getElementById("workflow-title").textContent = (index+1)+". "+title;

	    const list = document.getElementById("workflow-list");
	    list.innerHTML = "";
	    steps.forEach(step => {
	      const li = document.createElement("li");
	      li.textContent = step;
	      list.appendChild(li);
	    });
	    
	 // 워크플로우는 동적으로 생성되기 때문에 웹이 렌더링 된 이후에 받으면 적용되지 않는다.
	      const workflowItems = document.querySelectorAll('#workflow-list li');
	      const postBoxes = document.querySelectorAll('.main .postBox');
		  const searchInput = document.querySelector('.search');
		  const selectedWorkflows = new Set();

		  // ✅ 필터링 함수 (선택된 게시판 목록 기준)
		  function filterBySelectedWorkflows() {
		    if (selectedWorkflows.size === 0) {
		      // 아무 것도 선택 안했으면 모두 보이기
		      postBoxes.forEach(post => post.style.display = 'block');
		      return;
		    }

		    postBoxes.forEach(post => {
		    	const wfText = post.querySelector('.boardWorkflow')?.textContent.trim().toLowerCase();
		        const matched = [...selectedWorkflows].some(sel =>
		          wfText && wfText.includes(sel.toLowerCase()) // ✅ 포함 여부 비교
		        );
		        post.style.display = matched ? 'block' : 'none';
		    });
		  }
	    
	    
		  workflowItems.forEach(item => {
			  item.addEventListener('click', () => {
				  /*
			    const isActive = item.classList.contains('active-button');
			    document.querySelectorAll('.searchWorkflow-list li').forEach(li => li.classList.remove('active-button'));
			    if (!isActive) item.classList.add('active-button');
			    */
			    item.classList.toggle('active-button');
			    // 워크플로우는 동적으로 생성되기 때문에 웹이 렌더링 된 이후에 받으면 적용되지 않는다.
			    const wf = item.textContent.trim();

			      if (selectedWorkflows.has(wf)) {
			        selectedWorkflows.delete(wf);
			        item.classList.remove('active-button'); // 스타일용 (선택 해제)
			      } else {
			        selectedWorkflows.add(wf);
			        item.classList.add('active-button'); // 스타일용 (선택 표시)
			      }

			      searchInput.value = ''; // 입력창 초기화 (선택사항)
			      filterBySelectedWorkflows();
			    
			  });
			});
	  }
	</script>
	
	
	
	<script>
	/*
	//Drag & Drop 으로 스크랩 구현
	document.querySelectorAll(".main .container .postBox").forEach(post => {
	  post.setAttribute("draggable", "true");

	  post.addEventListener("dragstart", e => {
	    // dragged 요소 자체를 저장
	    e.dataTransfer.setData("application/postbox", post.outerHTML);
	  });
	});

	const scrapZone = document.querySelector(".sidebar .container.board .sidebar-section.scrap");

	scrapZone.addEventListener("dragover", e => e.preventDefault());

	scrapZone.addEventListener("drop", e => {
	  e.preventDefault();

	  const data = e.dataTransfer.getData("application/postbox");
	  const temp = document.createElement("div");
	  temp.innerHTML = data;

	  const original = temp.querySelector(".postBox");

	  if (!original) return;

	  // 💡 데이터 추출
	  const boardName = original.querySelector(".boardName")?.textContent?.trim() || "";
	  const title = original.querySelector(".title")?.textContent?.trim() || "";
	  const content = original.querySelector("p")?.textContent?.trim() || "";
	  const trimmedContent = content.length > 40 ? content.slice(0, 40) + "..." : content;

	  // 💡 첨부 이미지 추출
	  const firstAttachment = original.querySelector(".attachment > div");
	  let imageUrl = "";

	  if (firstAttachment) {
	    const bg = window.getComputedStyle(firstAttachment).backgroundImage;
	    const match = bg.match(/url\("(.*?)"\)/);
	    imageUrl = match ? match[1] : "";
	  }

	  // ✅ 카드 요소 구성
	  const itemCard = document.createElement("div");
	  itemCard.className = "item-card";

	  const itemText = document.createElement("div");
	  itemText.className = "item-text";

	  const tag = document.createElement("span");
	  tag.className = "tag";
	  tag.textContent = boardName;
	  
	  const tempTitle = document.createElement("strong");
	  tempTitle.textContent = title;
	  const scrapTitle = document.createElement("p");
	  scrapTitle.className = "scrap-title";
	  scrapTitle.appendChild(tempTitle);
	  

	  const scrapContent = document.createElement("p");
	  scrapContent.className = "scrap-content";
	  scrapContent.textContent = trimmedContent;

	  itemText.appendChild(tag);
	  itemText.appendChild(scrapTitle);
	  itemText.appendChild(scrapContent);

	  const img = document.createElement("img");
	  img.src = imageUrl;
	  img.alt = "attachment1";
	  img.style.width = "40px";
	  img.style.height = "40px";
	  img.style.borderRadius = "10px";
	  img.style.background="#ccc";
	  img.marginRight="10px";
	  
	  const itemContent = document.createElement("div");
	  itemContent.className = "item-content";
	  
	  itemContent.appendChild(itemText);
	  itemContent.appendChild(img);
	  
	  itemCard.appendChild(itemContent);
	  
	  scrapZone.querySelector(".items").appendChild(itemCard);
	});
	*/
	
	//버튼으로 구현
	document.querySelectorAll('.postBox .btn-scrap').forEach(button => {
	  button.addEventListener('click', e => {
	    const postBox = e.target.closest('.postBox');
	    if (postBox) {
	      scrapFromPostBox(postBox);
	    }
	  });
	});
	
	//드래그앤드롭 으로 구현
	document.querySelectorAll(".main .container .postBox").forEach(post => {
		  post.setAttribute("draggable", "true");

		  post.addEventListener("dragstart", e => {
		    // dragged 요소 자체를 저장
		    e.dataTransfer.setData("application/postbox", post.outerHTML);
		  });
		});

	const scrapZone = document.querySelector(".sidebar .container.board .sidebar-section.scrap");

	scrapZone.addEventListener("dragover", e => e.preventDefault());

	scrapZone.addEventListener("drop", e => {
	  e.preventDefault();

	  const data = e.dataTransfer.getData("application/postbox");
	  const temp = document.createElement("div");
	  temp.innerHTML = data;

	  const original = temp.querySelector(".postBox");

	  if (!original) return;
	  scrapFromPostBox(original);
	  
	  
	});

function scrapFromPostBox(postBox) {
	  const scrapZone = document.querySelector('.sidebar-section.scrap');

	  // 📌 내용 추출
	  const boardName = postBox.querySelector(".boardName")?.textContent.trim() || "";
	  const title = postBox.querySelector(".title")?.textContent.trim() || "";
	  const content = postBox.querySelector("p")?.textContent.trim() || "";
	  const trimmedContent = content.length > 30 ? content.slice(0, 30) + "..." : content;

	  // 📌 이미지 URL 추출
	  const firstAttachment = postBox.querySelector(".attachment > div");
	  let imageUrl = "";

	  if (firstAttachment) {
	    const bg = window.getComputedStyle(firstAttachment).backgroundImage;
	    const match = bg.match(/url\("(.*?)"\)/);
	    imageUrl = match ? match[1] : "";
	  }

	  // 📌 요소 생성
	  const itemCard = document.createElement("div");
	  itemCard.className = "item-card";

	  const itemText = document.createElement("div");
	  itemText.className = "item-text";

	  const tag = document.createElement("span");
	  tag.className = "tag";
	  tag.textContent = boardName;
	  
	  const tempTitle = document.createElement("strong");
	  tempTitle.textContent = title;
	  const scrapTitle = document.createElement("p");
	  scrapTitle.className = "scrap-title";
	  scrapTitle.appendChild(tempTitle);
	  

	  const scrapContent = document.createElement("p");
	  scrapContent.className = "scrap-content";
	  scrapContent.textContent = trimmedContent;

	  itemText.appendChild(tag);
	  itemText.appendChild(scrapTitle);
	  itemText.appendChild(scrapContent);

	  const img = document.createElement("img");
	  img.src = imageUrl;
	  img.alt = "attachment1";
	  img.style.width = "40px";
	  img.style.height = "40px";
	  img.style.borderRadius = "10px";
	  img.style.background="#ccc";
	  img.marginRight="10px";
	  
	  const itemContent = document.createElement("div");
	  itemContent.className = "item-content";
	  
	  itemContent.appendChild(itemText);
	  itemContent.appendChild(img);
	  
	  itemCard.appendChild(itemContent);
	  
	  scrapZone.querySelector(".items").appendChild(itemCard);
	}

	</script>
	
	<script>
	/*
	document.querySelector('.search').addEventListener('keydown', function(event) {
	  if (event.key === 'Enter') {
		  event.preventDefault(); // ✅ 새로고침 방지
	    const keyword = event.target.value.toLowerCase();
	    const postBoxes = document.querySelectorAll('.main .postBox');
	    
	    if (keyword.trim() === '') {
	    	  postBoxes.forEach(post => post.style.display = 'block');
	    	  return;
	    	}

	    postBoxes.forEach(post => {
	      const text = post.textContent.toLowerCase();
	      // 키워드가 포함된 경우 보이고, 없으면 숨김
	      if (text.includes(keyword)) {
	        post.style.display = 'block'; // 혹은 'flex' 등 원래 스타일로
	      } else {
	        post.style.display = 'none';
	      }
	    });
	  }
	});
	*/
	</script>
	
	<script>
	document.addEventListener('DOMContentLoaded', () => {
	  const searchInput = document.querySelector('.search');
	  const postBoxes = document.querySelectorAll('.main .postBox');
	
	  // 일반 키워드 검색 (엔터)
	  searchInput.addEventListener('keydown', function(event) {
		  if (event.key === 'Enter') {
			  event.preventDefault(); // ✅ 새로고침 방지
		    const keyword = event.target.value.toLowerCase();
		    const postBoxes = document.querySelectorAll('.main .postBox');
		    
		    if (keyword.trim() === '') {
		    	  postBoxes.forEach(post => post.style.display = 'block');
		    	  return;
		    	}

		    postBoxes.forEach(post => {
		      const text = post.textContent.toLowerCase();
		      // 키워드가 포함된 경우 보이고, 없으면 숨김
		      if (text.includes(keyword)) {
		        post.style.display = 'block'; // 혹은 'flex' 등 원래 스타일로
		      } else {
		        post.style.display = 'none';
		      }
		    });
		  }
		});
	
	  // 게시판 필터 버튼 클릭
	  const boardButtons = document.querySelectorAll('.searchBoardContent > button');
	  const selectedBoards = new Set(); // ✅ 선택된 게시판 목록 저장

	  // ✅ 필터링 함수 (선택된 게시판 목록 기준)
	  function filterBySelectedBoards() {
	    if (selectedBoards.size === 0) {
	      // 아무 것도 선택 안했으면 모두 보이기
	      postBoxes.forEach(post => post.style.display = 'block');
	      return;
	    }

	    postBoxes.forEach(post => {
	      const boardName = post.querySelector('.boardName')?.textContent.trim();
	      post.style.display = [...selectedBoards].some(sel => boardName === sel + " 게시판")
	        ? 'block'
	        : 'none';
	    });
	  }

	  // ✅ 버튼 클릭 이벤트
	  boardButtons.forEach(button => {
	    button.addEventListener('click', () => {
	      const board = button.textContent.trim();

	      if (selectedBoards.has(board)) {
	        selectedBoards.delete(board);
	        button.classList.remove('active'); // 스타일용 (선택 해제)
	      } else {
	        selectedBoards.add(board);
	        button.classList.add('active'); // 스타일용 (선택 표시)
	      }

	      searchInput.value = ''; // 입력창 초기화 (선택사항)
	      filterBySelectedBoards();
	    });
	  });
	  
	
	});
	</script>
	
	
</body>
</html>
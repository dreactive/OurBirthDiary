<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기</title>
    <link rel="stylesheet" href="./css/stylesWorkflow.css">
	<link href="./css/stylesMain.css" rel="stylesheet" >
	
    <link rel="stylesheet" href="./css/stylesFaq.css">
</head>
<body>

<!-- 
<div class="commentSection">
	<div class="postBox" draggable="true" style="height:800px;">
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
		       	<p class="comment-content">이건 못 참 쥐~</p>
		       	<button class="reply">답글 달기</button>
		       </div>
		   </div>
		   
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
		       	<p class="comment-content">이건 못 참 쥐~</p>
		       	<button class="reply">답글 달기</button>
		       </div>
		   </div>
		   
		   
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
		       	<p class="comment-content">이건 못 참 쥐~</p>
		       	<button class="reply">답글 달기</button>
		       </div>
		   </div>
		   
		   
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
		       	<p class="comment-content">이건 못 참 쥐~</p>
		       	<button class="reply">답글 달기</button>
		       </div>
		   </div>
		   
		   
		</div>
		<div class="commentInput">
			<div class="commentInput-inner">
	        <img src="" alt="Profile" class="input-profile"/>
	        <textarea class="input-text" placeholder="댓글을 입력하세요..."></textarea>
	    </div>
	    <div class="commentInput-footer">
	        <button class="submit-comment">등록</button>
	    </div>
		</div>
	</div>
	
</div>
 -->
 
 
 <section class="faq-container">
        <div class="faq-header">
            <div class="icon">Q</div>
            <h1>FAQ</h1>
        </div>

        <!-- FAQ 카테고리 탭 -->
        <form action="#" method="post">
            <div class="faq-tabs">
                <button type="button" class="tab active">출생신고 신청</button>
                <button type="button" class="tab">사회복지 관리번호 발급</button>
                <button type="button" class="tab">친생 소송</button>
            </div>
        </form>

        <!-- FAQ 질문/답변 -->
        <form action="/submit-question" method="post">
            <div class="faq-list">
                <div class="faq-item open">
                    <div class="question">
                        Q. 출생 신고 이외에 또 어떤 서류를 챙겨야 하나요?
                    </div>
                    <div class="answer">
                        A. 미혼부의 출생신고 과정에서는 출생신고서뿐만 아니라, 출생증명서, 친자 관계 입증 자료 (유전자 검사 결과지, 출산 당시 영상 자료 및 병원 기록), 가족관계 등록부,
                        그리고 어머니가 작성한 동의서 또는 가정법원의 허가서가 필요합니다.
                    </div>
                </div>

                <div class="faq-item">
                    <div class="question">Q. 가정법원의 허가서를 얻으려면 어떻게 해야 하나요?</div>
                    <div class="answer">답변 내용</div>
                </div>

                <div class="faq-item">
                    <div class="question">Q. ‘인지 신고’랑 ‘친모 동의’가 뭔가요?</div>
                    <div class="answer">답변 내용</div>
                </div>

                <div class="faq-item">
                    <div class="question">Q. 특별대리인을 선언하려면 어떤 절차가 필요한가요?</div>
                    <div class="answer">답변 내용</div>
                </div>
            </div>

           
        </form>
    </section>

    <script>
        // 아코디언 동작
        document.querySelectorAll('.faq-item .question').forEach(q => {
            q.addEventListener('click', () => {
                const item = q.parentElement;
                item.classList.toggle('open');
            });
        });

        // 탭 전환 동작
        document.querySelectorAll('.faq-tabs .tab').forEach(tab => {
            tab.addEventListener('click', () => {
                document.querySelectorAll('.faq-tabs .tab').forEach(t => t.classList.remove('active'));
                tab.classList.add('active');
            });
        });
    </script>
</body>

</html>
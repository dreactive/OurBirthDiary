<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기 | 자주 묻는 질문</title>
    <link rel="stylesheet" href="./css/stylesFaq.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<jsp:include page="/includes/nav.jsp" />
	
	<section class="faq-container">
        <div class="faq-header">
            <img class="icon" src="./data/img/faq.png" alt="QnA 로고">
            <h1>FAQ</h1>
        </div>

        <!-- FAQ 카테고리 탭 -->
        <form action="#" method="post">
            <div class="faq-tabs">
                <button type="button" class="tab active" data-period="1">출생신고 신청</button>
                <button type="button" class="tab" data-period="2">사회복지 관리번호 발급</button>
                <button type="button" class="tab" data-period="3">친생 소송</button>
            </div>
        </form>

        <!-- FAQ 질문/답변 -->
        <form action="/submit-question" method="post">
            <div class="faq-list" data-period="1">
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> 출생 신고 이외에 또 어떤 서류를 챙겨야 하나요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 미혼부의 출생신고 과정에서는 출생신고서뿐만 아니라, 출생증명서, 친자 관계 입증 자료 (유전자 검사 결과지, 출산 당시 영상 자료 및 병원 기록), 가족관계 등록부,
                        그리고 어머니가 작성한 동의서 또는 가정법원의 허가서가 필요합니다.
                    </div>
                </div>
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> 가정법원의 허가서를 얻으려면 어떻게 해야 하나요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 미혼부가 출생신고를 위해 어머니의 동의서를 제출할 수 없는 경우, 가정법원에 특별대리인 선임 허가를 신청해야 합니다. 이를 위해 가정법원에 ‘출생신고를 위한 특별대리인 선임 신청서’를 제출하고, 미성년자인 자녀의 법적 이익을 위한 설명자료와 함께 필요한 서류(유전자 검사 결과, 출생증명서 등)를 준비해야 합니다. 심리 후 법원에서 허가결정을 내리면 해당 허가서를 출생신고 시 제출할 수 있습니다.
                    </div>
                </div>
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> ‘인지 신고’랑 ‘친모 동의’가 뭔가요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 인지신고는 혼인 외 출생한 자녀를 법적으로 아버지가 자신의 자녀로 인정하는 절차입니다. 이 과정에서 친모(어머니)의 동의가 필요한 경우가 있습니다. 자녀가 미성년자일 경우 어머니가 인지를 동의하거나, 동의를 받을 수 없을 경우에는 가정법원의 허가가 필요합니다. 이 인지 신고는 가족관계등록부상 부자 관계를 형성하는 데 필수적입니다.
                    </div>
                </div>
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> 특별대리인을 선언하려면 어떤 절차가 필요한가요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 특별대리인 선임은 주로 자녀가 법적 절차에 참여해야 하는데 부모와의 이해관계가 충돌할 경우 필요한 제도입니다. 미혼부가 출생신고나 인지신고 시 자녀의 법정대리인이 필요하지만 어머니의 협조가 없거나 연락이 닿지 않는 경우, 법원에 특별대리인 선임을 신청해야 합니다. 신청서, 출생증명서, 인지 및 출생의 필요성을 설명하는 진술서 등을 함께 제출하며, 법원이 심리 후 대리인을 선임합니다.
                    </div>
                </div>

			</div>
           
            <div class="faq-list inactive" data-period="2">
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> 사회복지 관리번호는 무엇이고 왜 필요한가요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 사회복지 관리번호는 주민등록번호가 없는 아이도 복지 혜택을 받을 수 있도록 보건복지부에서 발급하는 임시 식별번호입니다. 이를 통해 건강보험, 영유아 검진, 예방접종, 아동수당 등 각종 사회복지 서비스를 신청할 수 있습니다.
                    </div>
                </div>
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> 사회복지 관리번호는 어디서 신청하나요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 주민센터나 보건소, 병원 사회복지사 등을 통해 신청할 수 있으며, 주민등록번호가 없는 상태에서 출생증명서 또는 출생사실확인서, 보호자의 신분증 등을 지참해야 합니다. 보건복지부 사회복지통합관리망(행복e음)을 통해 관리됩니다.
                    </div>
                </div>
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> 출생신고 전에도 사회복지 혜택을 받을 수 있나요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 네, 가능합니다. 출생신고가 늦어지는 상황에서도 사회복지 관리번호를 통해 일부 복지 서비스 이용이 가능합니다. 이는 아이의 생존권 보장을 위해 마련된 제도입니다.
                    </div>
                </div>
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> 사회복지 관리번호로 받은 혜택은 추후 주민등록번호 발급 이후에도 유지되나요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 예. 나중에 출생신고를 통해 주민등록번호가 부여되면, 해당 관리번호에 연계된 복지 기록을 통합할 수 있습니다. 복지 혜택 연속성을 유지할 수 있도록 지자체가 시스템을 연계해 처리합니다.
                    </div>
                </div>

			</div>
           
            <div class="faq-list inactive" data-period="3">
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> 친생자 관계 확인 소송이란 무엇인가요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 친생자 관계 확인 소송은 아이가 특정 남성의 자녀임을 법적으로 확정받기 위한 소송입니다. 미혼부가 어머니의 동의 없이 출생신고를 하지 못할 경우, 법원을 통해 부자 관계를 입증하는 절차로 활용됩니다.
                    </div>
                </div>
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> 이 소송은 누가 제기할 수 있나요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 미혼부 본인이 자녀의 법적 아버지임을 입증하고자 할 때 제기할 수 있습니다. 아이의 생모가 반대하거나 연락이 되지 않는 경우에도 소송이 가능합니다.
                    </div>
                </div>
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> 어떤 증거가 필요하나요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 가장 강력한 증거는 유전자 검사 결과입니다. 또한 출산 당시 병원 기록, 출생 영상, 임신·출산과 관련된 사진, 문자·카톡 대화, 진술서 등도 보조 증거로 활용됩니다.
                    </div>
                </div>
                <div class="faq-item">
                    <div class="question">
                        <span class="Q">Q.</span> 소송 절차는 얼마나 걸리며, 결과는 어떻게 반영되나요?
                    </div>
                    <div class="answer">
                        <span class="A">A.</span> 보통 3개월~6개월 정도 소요되며, 법원에서 친생자 관계가 인정되면 판결문이 발급됩니다. 이 판결문을 토대로 출생신고 및 가족관계등록부 정정이 가능합니다.
                    </div>
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
        
        
        document.addEventListener("DOMContentLoaded", () => {
        	  const tabs = document.querySelectorAll(".tab");
        	  const faqLists = document.querySelectorAll(".faq-list");

        	  tabs.forEach(tab => {
        	    tab.addEventListener("click", () => {
        	      const period = tab.getAttribute("data-period");

        	      // 탭 active 상태 변경
        	      tabs.forEach(t => t.classList.remove("active"));
        	      tab.classList.add("active");

        	      // 모든 FAQ 리스트를 inactive 처리하고, 선택한 것만 활성화
        	      faqLists.forEach(list => {
        	        if (list.getAttribute("data-period") === period) {
        	          list.classList.remove("inactive");
        	        } else {
        	          list.classList.add("inactive");
        	        }
        	      });
        	    });
        	  });
        	});

    </script>
    
    <script>
    
    /*
    const openFAQ = () => {
    	document.querySelectorAll('.faq-item .question').forEach(q => {
            q.addEventListener('click', () => {
                const item = q.parentElement;
                item.classList.toggle('open');
            });
        });
    }
	  const faqData = {
	    titles: ["출생신고 신청", "사회복지 관리번호 발급", "친생 소송"],
	    details: [
	      [{Question:"출생 신고 이외에 또 어떤 서류를 챙겨야 하나요?",Answer: "미혼부의 출생신고 과정에서는 출생신고서뿐만 아니라, 출생증명서, 친자 관계 입증 자료 (유전자 검사 결과지, 출산 당시 영상 자료 및 병원 기록), 가족관계 등록부, 그리고 어머니가 작성한 동의서 또는 가정법원의 허가서가 필요합니다."}, 
	      {Question:"가정법원의 허가서를 얻으려면 어떻게 해야 하나요?",Answer: "미혼부가 출생신고를 위해 어머니의 동의서를 제출할 수 없는 경우, 가정법원에 특별대리인 선임 허가를 신청해야 합니다. 이를 위해 가정법원에 ‘출생신고를 위한 특별대리인 선임 신청서’를 제출하고, 미성년자인 자녀의 법적 이익을 위한 설명자료와 함께 필요한 서류(유전자 검사 결과, 출생증명서 등)를 준비해야 합니다. 심리 후 법원에서 허가결정을 내리면 해당 허가서를 출생신고 시 제출할 수 있습니다."}, 
	      {Question:"‘인지 신고’랑 ‘친모 동의’가 뭔가요?",Answer: "인지신고는 혼인 외 출생한 자녀를 법적으로 아버지가 자신의 자녀로 인정하는 절차입니다. 이 과정에서 친모(어머니)의 동의가 필요한 경우가 있습니다. 자녀가 미성년자일 경우 어머니가 인지를 동의하거나, 동의를 받을 수 없을 경우에는 가정법원의 허가가 필요합니다. 이 인지 신고는 가족관계등록부상 부자 관계를 형성하는 데 필수적입니다."}, 
	      {Question:"특별대리인을 선언하려면 어떤 절차가 필요한가요?",Answer: "특별대리인 선임은 주로 자녀가 법적 절차에 참여해야 하는데 부모와의 이해관계가 충돌할 경우 필요한 제도입니다. 미혼부가 출생신고나 인지신고 시 자녀의 법정대리인이 필요하지만 어머니의 협조가 없거나 연락이 닿지 않는 경우, 법원에 특별대리인 선임을 신청해야 합니다. 신청서, 출생증명서, 인지 및 출생의 필요성을 설명하는 진술서 등을 함께 제출하며, 법원이 심리 후 대리인을 선임합니다."} 
	    	  ],
	      [{Question:"사회복지 관리번호는 무엇이고 왜 필요한가요?",Answer: "사회복지 관리번호는 주민등록번호가 없는 아이도 복지 혜택을 받을 수 있도록 보건복지부에서 발급하는 임시 식별번호입니다. 이를 통해 건강보험, 영유아 검진, 예방접종, 아동수당 등 각종 사회복지 서비스를 신청할 수 있습니다."}, 
	      {Question:"사회복지 관리번호는 어디서 신청하나요?",Answer: "주민센터나 보건소, 병원 사회복지사 등을 통해 신청할 수 있으며, 주민등록번호가 없는 상태에서 출생증명서 또는 출생사실확인서, 보호자의 신분증 등을 지참해야 합니다. 보건복지부 사회복지통합관리망(행복e음)을 통해 관리됩니다."}, 
	      {Question:"출생신고 전에도 사회복지 혜택을 받을 수 있나요?",Answer:"네, 가능합니다. 출생신고가 늦어지는 상황에서도 사회복지 관리번호를 통해 일부 복지 서비스 이용이 가능합니다. 이는 아이의 생존권 보장을 위해 마련된 제도입니다."}, 
	      {Question:"사회복지 관리번호로 받은 혜택은 추후 주민등록번호 발급 이후에도 유지되나요?",Answer: "예. 나중에 출생신고를 통해 주민등록번호가 부여되면, 해당 관리번호에 연계된 복지 기록을 통합할 수 있습니다. 복지 혜택 연속성을 유지할 수 있도록 지자체가 시스템을 연계해 처리합니다."} 
	    	  ],
	      [{Question:"친생자 관계 확인 소송이란 무엇인가요?",Answer: "친생자 관계 확인 소송은 아이가 특정 남성의 자녀임을 법적으로 확정받기 위한 소송입니다. 미혼부가 어머니의 동의 없이 출생신고를 하지 못할 경우, 법원을 통해 부자 관계를 입증하는 절차로 활용됩니다."}, 
	      {Question:"이 소송은 누가 제기할 수 있나요?",Answer: "미혼부 본인이 자녀의 법적 아버지임을 입증하고자 할 때 제기할 수 있습니다. 아이의 생모가 반대하거나 연락이 되지 않는 경우에도 소송이 가능합니다."}, 
	      {Question:"어떤 증거가 필요하나요?",Answer: "가장 강력한 증거는 유전자 검사 결과입니다. 또한 출산 당시 병원 기록, 출생 영상, 임신·출산과 관련된 사진, 문자·카톡 대화, 진술서 등도 보조 증거로 활용됩니다."}, 
	      {Question:"소송 절차는 얼마나 걸리며, 결과는 어떻게 반영되나요?",Answer: "보통 3개월~6개월 정도 소요되며, 법원에서 친생자 관계가 인정되면 판결문이 발급됩니다. 이 판결문을 토대로 출생신고 및 가족관계등록부 정정이 가능합니다."} 
	    	  ]
	    ]
	  };
	  
	  function renderFAQ(index) {
	    const title = faqData.titles[index];
	    const contents = faqData.details[index];

	    

	    const list = document.getElementById("faq-list");
	    list.innerHTML = "";
	    contents.forEach(content => {
	      //const li = document.createElement("li");
	      const faqItem = document.createElement("div");
	      faqItem.classList.add('faq-item');
	      
	      const question = document.createElement("div");
	      question.classList.add('question');
	      
	      const q = document.createElement("span");
	      q.classList.add('Q');
	      q.textContent="Q.";
	      
	      question.appendChild(q);
	      question.appendChild(document.createTextNode(content.Question));
	      faqItem.appendChild(question);
	      
	      const answer = document.createElement("div");
	      answer.classList.add('answer');
	      
	      const a = document.createElement("span");
	      a.classList.add('A');
	      a.textContent="A.";
	      
	      answer.appendChild(a);
	      answer.appendChild(document.createTextNode(content.Answer));
	      faqItem.appendChild(answer);
	      
	      list.appendChild(faqItem);
	      
	      openFAQ();
	    });
	    
	    renderFAQ(0);
	  }
	  */
	</script>
</body>
</html>

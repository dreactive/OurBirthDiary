/**
 * 
 */
 
 // 프로그레스 & 콘텐츠 전환
    const steps    = document.querySelectorAll('.step');
    const contents = document.querySelectorAll('.content');
    const titles   = {
      1: '출생신고 신청',
      2: '사회복지 관리번호 발급',
      3: '친생소송'
    };

    function showStep(n) {
      steps.forEach(s => {
        const num = +s.dataset.step;
        // 비주얼 상태
        s.classList.toggle('active',       num === n);
        s.classList.toggle('completed',    num <  n);
        s.classList.toggle('inactive',     num >  n);

        // 모든 완료 버튼이 눌렸는지 체크
        const content = document.getElementById(`content-${num}`);
        if (content) {
          const allBtns = content.querySelectorAll('.nested-complete-btn');
          const allDone = Array.from(allBtns)
            .every(b => b.closest('li').classList.contains('completed'));
          s.classList.toggle('step-completed-all', allDone);
        }
      });

      // 해당 콘텐츠만 보이게
      contents.forEach(c =>
        c.classList.toggle('show', c.id === `content-${n}`)
      );

      // 헤더 타이틀 갱신
      document.getElementById('header-title').textContent = titles[n];
    }

    steps.forEach(s => s.onclick = () => showStep(+s.dataset.step));
    
    showStep(1);
    
    //워크플로우 데이터 받아오기
    let workflowSum = 0;
	const toggles = document.getElementsByClassName("toggleable");
    initializeWorkflow(userWorkflow); //jsp 파일에서 userWorkflow를 전역변수로 선언함.

    // 토글 열기/닫기 & 완료 버튼
    document.body.addEventListener('click', e => {
      const li = e.target.closest('.toggleable');

      // 1) nested 열기/닫기
      if (li && li.querySelector('.nested') && !e.target.matches('.nested-complete-btn')) {
        li.classList.toggle('active');
        li.querySelector('.nested').classList.toggle('show');
      }

      // 2) 완료 버튼
      if (e.target.matches('.nested-complete-btn')) {
        e.stopPropagation();
        const item = e.target.closest('li');
        item.classList.toggle('completed');
        calculateWorkflowSum(); //추가된 부분
        // 다시 스텝 체크 상태 갱신
        const activeStep = +document.querySelector('.step.active').dataset.step;
        showStep(activeStep);
      }
    });
    
    
    // profile.js 하단에 추가


// 초기 설정 함수 (기존 값 불러오기 등)
function initializeWorkflow(userWorkflow) {
  for (let i = 0; i < toggles.length; i++) {
    if ((userWorkflow & (1 << i)) !== 0) {
      toggles[i].classList.add("completed");
    }
  }
  calculateWorkflowSum();
}

// 합계 계산 함수
function calculateWorkflowSum() {
  workflowSum = 0;
  for (let i = 0; i < toggles.length; i++) {
    if (toggles[i].classList.contains("completed")) {
        workflowSum += (1 << i);
        console.log("["+(i+1)+"단계] 가중치 : "+(1 << i));
    }
    console.log("\t"+(i+1)+"단계까지 가중치 합 : "+workflowSum)
  }
}



document.getElementById("workflowSumSubmit").addEventListener("click",()=>{
	document.getElementById("workflowSumInput").value=workflowSum;
})


/**
 * 
 */
 
 
 const phases = [
    {
        items: [
        {
                title: "출생 신고 신청 절차",
                desc: `
      <div class="desc-wrapper">
        <div class="desc-paragraph">
          <strong>출생신고 절차</strong><br>
          서류준비 → 가정법원에 확인신청서 및 자료 제출 → 주민센터 방문하여 출생신고
        </div>
        <div class="desc-paragraph">
          출생신고는 <a href="https://efamily.scourt.go.kr/ar/ArChkPrcd.do" target="_blank">여기</a>에서 신청할 수 있습니다.
        </div>
        <div class="desc-paragraph">
            <div class="desc-list">
            <strong>※ 제출 서류</strong>
            <ul>
                <li>친생자 출생신고 확인 신청서</li>
                <li>친모 성명/등록기준지/주민번호를 알 수 없는 사유 소명자료</li>
                <li>유전자 검사 결과지</li>
                <li>신청인의 주민등록초본</li>
                <li>가족관계증명서</li>
                <li>기본증명서</li>
                <li>혼인관계증명서</li>
            </ul>
            </div>
        </div>
        <div class="desc-download">
          📎 문서 다운로드<br>
          <a href="친생자 출생신고를 위한 확인 신청서(법원제출용).hwp" download target="_blank">
            친생자 출생신고 확인 신청서.hwp (15.5KB)
          </a>
        </div>
      </div>`
        },
            { title: "특별대리인 허가", desc:  `
      <div class="desc-wrapper">
        <div class="desc-paragraph">
          <strong>소요기간</strong><br>  약 2주
        </div>
        <div class="desc-paragraph">
            <div class="desc-list">
            <strong>※ 제출 서류</strong>
            <ul>
                <li>친생자 출생신고 확인 신청서</li>
                <li>가족관계증명서</li>
                <li>주민등록등본</li>
                <li>인감증명서</li>
                <li>특별대리인 신청서</li>
            </ul>
            </div>
            </div>
            <div class="desc-download">
          📎 문서 다운로드<br>
          <a href="175_특별대리인선임 신청서(소송법상)(완료3).hwp" download target="_blank">
            특별대리인선임 신청서.hwp (15.5KB)
          </a>
        </div>
        </div>`
             },
            { title: "인지 신고, 친모 동의", desc: `
      <div class="desc-wrapper">
        <div class="desc-paragraph">
          <strong>​인지(認知)  </strong><br>
           인지는 혼인 외의 출생자를 그의 생부(生父) 또는 생모(生母)가 자기의 자녀라고 인정하는 행위. 인지는 피인지자가 사망하거나 아직 출생하지 아니한 태아인 경우에도 가능.
        </div>
        <div class="desc-paragraph">
          <strong>친모의 동의서  </strong><br>
           출생신고와 인지 신고를 원활하게 진행하기 위해 친모의 동의가 필요.
        </div>
        <div class="desc-paragraph">
          <strong>출생확인서  </strong><br>
           아이가 태어난 병원에서 발급.
        </div>
        <div class="desc-paragraph">
            <div class="desc-list">
            <strong>※ 제출 서류</strong>
            <ul>
                <li>인지신고서</li>
                <li>피인지자의 출생증명서</li>
                <li>모가 자녀 출생 당시 유부녀가 아님을 공증하는 서면 및 번역문</li>
                <li>부와 모의 여권</li>
            </ul>
            </div>
        </div>
       
      </div>` },
            { title: "유전자 검사 절차", desc: `
      <div class="desc-wrapper">
        <div class="desc-paragraph">
          <strong>유전자 검사 진행 기관(KOLAS) </strong><br>
          KOLAS 인증 기관으로 연락 -> 예약시 기관에서 집으로 찾아가 검사 진행함.
        </div>
        <div class="desc-paragraph">
        <strong>유전자 검사 진행 기관(KOLAS) 링크 </strong><br>
           기관 연락처는 <a href="https://www.knab.go.kr/usr/inf/srh/InfoMedicalInsttSearchList.do" target="_blank">여기</a>에 있습니다.
        </div>
        </div>
      </div>` },
            { title: "출생확인서", desc: `
      <div class="desc-wrapper">
        <div class="desc-paragraph">
          아이가 태어난 병원에서 발급.
            </div>
        </div> 
      </div>` }
        ]
    },
    {
        items: [
            { title: "신생아 특례 대출", desc: `
    <div class="desc-wrapper">
        <div class="desc-paragraph">
          <strong>대출 가능 대상  </strong> <br>
          1. (계약) 주택을 취득하기 위하여 주택매매계약을 체결한 자 (상속, 증여, 재산분할로 주택을 취득하는 경우 불가)<br>
          2. (세대주) 대출접수일 현재 민법상 성년인 세대주<br>
          3. (출산) 대출신청일 기준 2년 내 출산(입양)한 가구(다만, 신생아 특별공급 또는 우선공급 당첨자인 경우 대출신청일 현재 자녀가 만 2세 초과시에도 가능)<br>
          4. (무주택) 세대주를 포함한 세대원 전원(혼인신고를 하지 않은 경우 신생아의 가족관계증명서 상 등재된 부모 포함)이 무주택인 자<br>
        </div>
        <div class="desc-wrapper">
        <div class="desc-paragraph">
           자세한 내용은 <a href="https://nhuf.molit.go.kr/FP/FP05/FP0503/FP05030801.jsp" target="_blank">이곳</a>에 들어가 확인할수 있습니다.
        </div>
        </div>
        </div>` },
            { title: "국민 건강 보험 신청", desc: `
      <div class="desc-wrapper">
        <div class="desc-paragraph">
          <strong>신청 방법 </strong><br>
          국민건강보험공단 지사를 방문하여 지역가입자 자격취득/변동신고서 작성
        </div>
        <div class="desc-paragraph">
            <div class="desc-list">
            <strong>※ 제출 서류</strong>
            <ul>
                <li>신분증</li>
                <li>지역가입자 자격취득/변동 신고서</li>
            </ul>
            </div></div>
        <div class="desc-download">
          📎 문서 다운로드<br>
          <a href="지역가입자_자격취득·변동신고서.hwp" download target="_blank">
            지역가입자_자격취득·변동신고서.hwp (15.5KB)
          </a>
        </div>
      </div>` },
            { title: "사회 복지 시설 연동", desc: `
      <div class="desc-wrapper">
        <div class="desc-paragraph">
          <strong>시설 입소 방법  </strong><br>
          입소 서류와 신분증 소지하여 사회 복지시설에 방문.
        </div>
        <div class="desc-paragraph">
            <div class="desc-list">
            <strong>※ 제출 서류</strong>
            <ul>
                <li>신분증</li>
                <li>사회 복지 시설 입소 서류</li>
            </ul>
            </div>
            </div>
             <div class="desc-paragraph">
           자세한 내용은 <a href=" https://www.mogef.go.kr/cs/opf/cs_opf_s002.do?mid=old920" target="_blank">이곳</a>에 들어가 확인할수 있습니다.
        </div>
        <div class="desc-download">
          📎 문서 다운로드<br>
          <a href="[별지 2] 복지대상자 시설입소(이용) 신청서(사회보장급여 관련 공통서식에 관한 고시).hwpx" download target="_blank">
            시설 입소 신청서.hwp (15.5KB)
          </a>
        </div>
      </div>`},
            { title: "행복이음을 통한 전산 관리 번호 신청", desc: `
      <div class="desc-wrapper">
        <div class="desc-paragraph">
          <strong>신청 방법 </strong><br>
          주민센터를 방문하여 서류 제출<br>
          시설 입소자는 시설에서 신청
        </div>
        <div class="desc-paragraph">
            <div class="desc-list">
            <strong>전산관리번호로 받을수 있는 사회보장 급여 </strong>
            <ul>
                <li>기초생활보장급여</li>
                <li>의료급여</li>
                <li>긴급복지지원</li>
                <li>아동수당 및 부모급여</li>
                <li>유아 교육비</li>
                <li>첫만남 이용권</li>
                <li>한부모 가족지원</li>
                <li>초중등교육비지원</li>
                <li>보호출산지원</li>
                <li>복지부와 협의를 거쳐 필요하다인정되는급여</li>
            </ul>
            </div>
        </div>
        <div class="desc-paragraph">
            <div class="desc-list">
            <strong>※ 제출 서류</strong>
            <ul>
                <li>출생미신고증명서</li>
                <li>보호시설 입소증명서<br> - 시설 입소자</li>
            </ul>
            </div>
            </div>
        </div>` }
        ]
    },
    {
        items: [
            { title: "소장 작성", desc: `
      
        <div class="desc-download">
          📎 문서 다운로드<br>
          <a href="친생자관계존재확인의소.hwp" download target="_blank">
            친생자관계존재확인의소.hwp (15.5KB)
          </a>
        
      </div>` },
            { title: "소장 및 부본, 증거자료 준비", desc: `
      <div class="desc-wrapper">
        <div class="desc-paragraph">
            <div class="desc-list">
            <strong>※ 준비 서류 </strong>
            <ul>
                <li>가족관계증명서</li>
                <li>주민등록등(초)본</li>
                <li>소장부본</li>
                <li>혼인관계증명서</li>
                <li>유전자검사 결과지</li>
            </ul>
            </div>
        </div>
      </div>` },
            { title: "관할 가정법원 접수", desc: `
      <div class="desc-wrapper">
        <div class="desc-paragraph">
          <strong>법원 위치  </strong><br>
           <a href="https://egdrs.scourt.go.kr/sg/CrtLctListInq.do" target="_blank">여기</a>에서 가정 법원의 위치를 확인 할 수 있습니다.
        </div>
        </div>
      </div>`},
            { title: "상소심 제기", desc:  `
      <div class="desc-wrapper">
        <div class="desc-paragraph">
          <strong>상소 </strong><br>
          제1심 판결에 대하여 제2심 법원에 불복하는것을 항소라 하고, 제2심판결에대하여 상고심에 불복하는것을 상고라하며, 항소와 상고를 통틀어서 상소라고 합니다.
        </div>
        <div class="desc-paragraph">
          <strong>상소제기의방식 </strong><br>
          상소대상인 판결을 한 법원에 상소장 제출
        </div>
        <div class="desc-paragraph">
          <strong>상소 제기기간 </strong><br>
          판결 선고일부터 7일
        </div>
        <div class="desc-paragraph">
          <strong>상소이유서 제출기간 </strong><br>
          소송기록접수통지 받은후 20일이내 제출
        </div>
        <div class="desc-download">
          📎 문서 다운로드:<br>
          <a href="항소이유서.hwp" download target="_blank">
            항소이유서.hwp (15.5KB)
          </a><br>
          <a href="47_상고이유서.hwp" download target="_blank">
            상고이유서.hwp (15.5KB)
          </a>
        </div>
      </div>` }
        ]
    }
];


let currentPhase = 0;

function updateUI() {
	const initializing = document.querySelector(".description-box");
	if (initializing) {
		initializing.remove();
	}
    // 단계 강조
    for (let i = 0; i < phases.length; i++) {
        document.getElementById(`phase${i}`).classList.toggle("active", i === currentPhase);
    }

    // 버튼 목록 업데이트
    const container = document.getElementById("menuContainer");
    container.innerHTML = "";
	const explanation = document.getElementById("menuExplanation");
    phases[currentPhase].items.forEach(item => {
        const btn = document.createElement("div");
        btn.className = "menu-item";
        btn.innerText = item.title;

        btn.onclick = () => {
			toggleDescription(explanation, btn, item.desc);
			
		};

        container.appendChild(btn);
    });
}

function toggleDescription(row, btn, text) {
    const existing = row.querySelector(".description-box");

    if (existing && btn.classList.contains("active")) {
        existing.remove();
        btn.classList.remove("active");
        return;
    }

    document.querySelectorAll(".description-box").forEach(el => el.remove());
    document.querySelectorAll(".menu-item").forEach(el => el.classList.remove("active"));

    const desc = document.createElement("div");
    desc.className = "description-box";
    desc.innerHTML = text; // ✅ HTML 허용

    row.appendChild(desc);
    btn.classList.add("active");
}

function changePhase(dir) {
    currentPhase = (currentPhase + dir + phases.length) % phases.length;
    updateUI();
}

function selectPhase(index) {
    currentPhase = index;
    updateUI();
}

updateUI(); // 초기 렌더링
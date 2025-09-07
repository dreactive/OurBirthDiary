/**
 * 
 */
 
 
    // 카드-모달 동작
    
    // 1) 데이터 객체를 외부로 분리
    const lawyerData = {
      lawyer_1: {
        name: '장혜원 변호사',
        firm: '법무법인 청룡',
        img: '../data/img/변호사1.png',
        bio: '친절하고 꼼꼼하게 사건을 준비합니다.',
        stats: [
            '가사소송 승소 이력 10회',
            '친생자 소송 승소 이력 6회',
            '가사전담 경력 4년차'
        ],
        extra: [                                // ← 추가 정보들은 이 배열에만 넣으면 됩니다
            'Tel : 010-123-4656',
            'E-mail : **gpdyf@naver.com'
        ]
        
      },    
      lawyer_2: {
        name: '송유석 변호사',
        firm: '법무법인 주작',
        img: '../data/img/변호사2.png',
        bio: '전문적인 법률 자문을 제공합니다.',
        stats: [
          '가사소송 승소 이력 8회',
          '친생자 소송 승소 이력 5회',
          '가사전담 경력 3년차'
        ],
        extra: [                                // ← 추가 정보들은 이 배열에만 넣으면 됩니다
            'Tel : 010-123-4656',
            'E-mail : **gpdyf@naver.com'
        ]
      },
      lawyer_3: {
        name: '최혜열 변호사',
        firm: '법무법인 백호',
        img: '../data/img/변호사3.png',
        bio: '신속하고 정확한 대응을 약속합니다.',
        stats: [
          '가사소송 승소 이력 12회',
          '친생자 소송 승소 이력 7회',
          '가사전담 경력 5년차'
        ],
        extra: [                                // ← 추가 정보들은 이 배열에만 넣으면 됩니다
            'Tel : 010-123-4656',
            'E-mail : **gpdyf@naver.com'
        ]
      },
      lawyer_4: {
        name: '이하경 변호사',
        firm: '법무법인 현무',
        img: '../data/img/변호사4.png',
        bio: '고객의 목소리에 귀 기울입니다.',
        stats: [
          '가사소송 승소 이력 9회',
          '친생자 소송 승소 이력 4회',
          '가사전담 경력 2년차'
        ],
        extra: [                                // ← 추가 정보들은 이 배열에만 넣으면 됩니다
            'Tel : 010-123-4656',
            'E-mail : **gpdyf@naver.com'
        ]
      }
    };

    const cards = document.querySelectorAll('.lawyer-card');
    const modal = document.getElementById('lawyer-modal');
    const details = document.getElementById('lawyer-details');
    const closeBtn = modal.querySelector('.modal-close');

    cards.forEach(card => {
      card.addEventListener('click', () => {
        const id = card.dataset.id;
        renderModal(lawyerData[id]);
        modal.classList.remove('hidden');
        modal.setAttribute('aria-hidden', 'false');
      });
    });

    closeBtn.addEventListener('click', () => {
      modal.classList.add('hidden');
      modal.setAttribute('aria-hidden', 'true');
    });
    modal.addEventListener('click', e => {
      if (e.target === modal) {
        modal.classList.add('hidden');
        modal.setAttribute('aria-hidden', 'true');
      }
    });

    function renderModal(info) {
  // 기본 구조
  let html = `
    <div class="modal-body">
      <img src="${info.img}" alt="${info.name}" class="modal-img" />
      <div class="modal-text">
        <h2>${info.name}</h2>
        <p><strong>${info.firm}</strong></p>
        <p>${info.bio}</p>
  `;

  // extra 배열이 있으면, p 태그로 전부 추가
  if (Array.isArray(info.extra)) {
    info.extra.forEach(text => {
      html += `<p class="modal-note">${text}</p>`;
    });
  }

  // stats 리스트 추가
  html += `<ul>${info.stats.map(s => `<li>${s}</li>`).join('')}</ul>
      </div>
    </div>
  `;

  details.innerHTML = html;
}

     // 1) JSON 파일 경로
  const dataUrl = './region_hierarchy_korea.json';

  // 2) DOM 요소 가져오기
  const citySelect     = document.getElementById('city');
  const districtSelect = document.getElementById('district');

  // 3) JSON 불러와서 시/도 옵션 채우기
  fetch(dataUrl)
    .then(res => res.json())
    .then(regionData => {
      // 시/도 옵션 세팅
      citySelect.innerHTML = '<option value="">시/도 선택</option>';
      Object.keys(regionData).forEach(city => {
        const opt = document.createElement('option');
        opt.value = city;
        opt.text  = city;
        citySelect.append(opt);
      });

      // 4) 시/도 변경 시 해당 구/군 채우기
      citySelect.addEventListener('change', () => {
        const selectedCity = citySelect.value;
        const districts    = regionData[selectedCity] || {};
        
        // 구/군 초기화
        districtSelect.innerHTML = '<option value="">구/군 선택</option>';
        Object.keys(districts).forEach(district => {
          const opt = document.createElement('option');
          opt.value = district;
          opt.text  = district;
          districtSelect.append(opt);
        });
      });
    })
    .catch(err => console.error('지역 JSON 로딩 실패:', err));

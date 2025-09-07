/**
 * 
 */
 
//로딩화면 예시
 
window.addEventListener('load', () => {
    const loading = document.getElementById('loading-screen');
    if (loading) loading.style.display = 'none';
  }); 
 
document.addEventListener("DOMContentLoaded", () => {
    const bookmark = document.querySelector("#sidebar-bookmark");
    const sidebar = document.querySelector(".sidebar-section");
    const buttons = document.querySelectorAll(".btn-sidebar-menu");

    // 처음 위치를 "회원정보" 버튼에 맞춤
    const initButton = buttons[0]; // 첫 번째 버튼 (회원정보)
    const initRect = initButton.getBoundingClientRect();
    const sidebarRect = sidebar.getBoundingClientRect();
    const centerY = initRect.top + initRect.height / 2;
    const offset = centerY - sidebarRect.top - bookmark.offsetHeight / 2;

    bookmark.style.transform = `translateY(${offset}px)`;


    // 이후 클릭 시마다 해당 위치로 이동
    buttons.forEach(button => {
        button.addEventListener("click", () => {
            const rect = button.getBoundingClientRect();
            const centerY = rect.top + rect.height / 2;
            const offset = centerY - sidebarRect.top - bookmark.offsetHeight / 2;

            bookmark.style.transition = "transform 0.3s ease";
            bookmark.style.transform = `translateY(${offset}px)`;
            
            // 모든 main 요소에 inactive 클래스 추가
            document.querySelectorAll(".main").forEach(main => {
                main.classList.add("inactive");
            });

            // data-period 속성에 해당하는 main 요소의 inactive 클래스 제거
            const period = button.getAttribute("data-period");
            const targetMain = document.querySelector(`.main[data-period="${period}"]`);
            if (targetMain) {
                targetMain.classList.remove("inactive");
            }
        });
    });
    
    
    //일정관리 파트
    const colorMap = {
        빨강: '#ff4d4d', 파랑: '#4da6ff', 초록: '#28a745', 노랑: '#ffd633',
        보라: '#9b59b6', 주황: '#ff884d', 회색: '#95a5a6',
        검정: '#333333', 흰색: '#ffffff', 핑크: '#ff69b4'
    };

    function getColor(name) {
        return colorMap[name.trim()] || name;
    }

    const formEl = document.getElementById('inline-form');
    const toggleBtn = document.getElementById('toggle-form');

    const titleInput = document.getElementById('event-title');
    const startInput = document.getElementById('event-start');
    const endInput = document.getElementById('event-end');
    const colorInput = document.getElementById('event-color');
    const saveBtn = document.getElementById('save-event');
    const deleteBtn = document.getElementById('delete-event');
    const cancelBtn = document.getElementById('cancel-event');
    const formTitle = document.getElementById('form-title');

    let selectedEvent = null;

    const calendar = new FullCalendar.Calendar(document.getElementById('calendar'), {
        initialView: 'dayGridMonth',
        editable: true,
        selectable: true,
        headerToolbar: {
            start: 'prev,next today',
            center: 'title',
            end: ''
        },
        titleFormat: { year: 'numeric', month: '2-digit' },
        events: [],

        eventClick: function (info) {
            selectedEvent = info.event;
            titleInput.value = selectedEvent.title;
            startInput.value = selectedEvent.startStr.slice(0, 10);
            const end = new Date(selectedEvent.endStr);
            end.setDate(end.getDate() - 1);
            endInput.value = end.toISOString().slice(0, 10);
            colorInput.value = selectedEvent.backgroundColor;
            deleteBtn.classList.remove('hidden');
            formTitle.textContent = '일정 수정';
            formEl.classList.remove('hidden');
        }
    });

    calendar.render();

    toggleBtn.onclick = () => {
        selectedEvent = null;
        titleInput.value = '';
        startInput.value = '';
        endInput.value = '';
        colorInput.value = '';
        deleteBtn.classList.add('hidden');
        formTitle.textContent = '일정 등록';
        formEl.classList.toggle('hidden');
    };

    cancelBtn.onclick = () => {
        formEl.classList.add('hidden');
    };

    saveBtn.onclick = () => {
        const title = titleInput.value.trim();
        const start = startInput.value;
        const end = endInput.value;
        const color = getColor(colorInput.value);

        if (!title || !start || !end) {
            alert("모든 항목을 입력하세요.");
            return;
        }

        const adjustedEnd = new Date(end);
        adjustedEnd.setDate(adjustedEnd.getDate() + 1);
        const finalEnd = adjustedEnd.toISOString().slice(0, 10);

        if (selectedEvent) {
            selectedEvent.setProp('title', title);
            selectedEvent.setStart(start);
            selectedEvent.setEnd(finalEnd);
            selectedEvent.setProp('backgroundColor', color);
        } else {
            calendar.addEvent({
                title,
                start,
                end: finalEnd,
                color,
                allDay: true
            });
        }

        formEl.classList.add('hidden');
    };

    deleteBtn.onclick = () => {
        if (selectedEvent && confirm('정말 삭제하시겠습니까?')) {
            selectedEvent.remove();
            formEl.classList.add('hidden');
        }
    };
    
    //렌더링 되자마자 캘린더 렌더링 -> 렌더링 되자마자 inactive 제거하고, 렌더링하고 다시 inactive 붙이기
    const calendarMain = document.querySelector('.main[data-period="calender"]');
    
    calendarMain.classList.remove('inactive');

    setTimeout(() => {
        const calendarEl = document.getElementById('calendar');
        const calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth',
            locale: 'ko',
        });
        calendar.render();

		// resize 이벤트마다 render 호출
        window.addEventListener('resize', () => {
            calendar.render();
        });

        calendarMain.classList.add('inactive');
    }, 0);
});
    

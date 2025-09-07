<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>우리들의 출생일기</title>
	<% String contextPath = request.getContextPath(); %>
	<link href="<%= contextPath %>/css/stylesLawyerJoin.css" rel="stylesheet" >
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
</head>
<body>
	<jsp:include page="/includes/nav.jsp" />
	<div class="register-container">
    <!-- 좌·우 2컬럼 레이아웃 -->
    <div class="register-content">
      
      <!-- ▶ 왼쪽: 입력 폼 -->
      <form class="register-form">
        <!-- 이름 · 소속 -->
        <div class="row">
          <div class="input-group">
            <label for="name">이름</label>
            <input type="text" id="name" name="name" placeholder="이름을 입력하세요" required />
          </div>
          <div class="input-group">
            <label for="affiliation">소속</label>
            <input type="text" id="affiliation" name="affiliation" placeholder="소속을 입력하세요" required />
          </div>
        </div>



        <!-- 전화번호 · 이메일 -->
        <div class="row">
          <div class="input-group">
            <label for="phone">전화번호</label>
            <input type="tel" id="phone" name="phone" placeholder="010-1234-5678" required />
          </div>
          <div class="input-group">
            <label for="email">이메일</label>
            <input type="email" id="email" name="email" placeholder="example@domain.com" required />
          </div>
        </div>

        <!-- 지역 · 분야 -->
        <div class="row">
          <div class="input-group location">
            <label>지역</label>
            <div class="location-group">
              <select id="city" name="city">
                <option>시/도</option>
                <!-- ... -->
              </select>
              <select id="district" name="district">
                <option>구/군</option>
                <!-- ... -->
              </select>
            </div>
          </div>
          <div class="input-group">
            <label for="field">분야</label>
            <select id="field" name="field">
              <option>분야 선택</option>
              <!-- ... -->
            </select>
          </div>
        </div>

        <!-- 상담 방법 · 활동 시간대 -->
        <div class="row">
          <div class="input-group">
            <label for="method">상담 방법</label>
            <select id="method" name="method">
              <option>전화</option>
              <option>미팅</option>
            </select>
          </div>
          <div class="input-group">
            <label for="time">활동 시간대</label>
            <select id="time" name="time">
              <option>가능 시간대</option>
              <option>평일 오전</option>
              <option>평일 오후</option>
              <option>주말 오전</option>
              <option>주말 오후</option>
              <!-- ... -->
            </select>
          </div>
        </div>

        <!-- 자기소개 및 경력 -->
        <div class="textarea-group">
          <label for="bio">자기소개 및 경력</label>
          <textarea id="bio" name="bio" placeholder="자기소개 및 경력을 입력하세요" required></textarea>
        </div>

        <!-- 완료 버튼 -->
        <button type="submit" class="complete-btn">완료</button>
      </form>
      <!-- // register-form -->

      <!-- ▶ 오른쪽: 사진 업로드 -->
      <div class="photo-area">
        <label for="photoInput">사진 등록</label>
        <div class="photo-box">
          <!-- 실제 업로드된 미리보기 이미지는 JS로 여기 <img> 태그를 그려넣으세요 -->
          <span>클릭 또는 드래그하여<br/>사진을 등록하세요</span>
          <input type="file" id="photoInput" accept="image/*" />
        </div>
      </div>

    </div>
    <!-- // register-content -->
  </div>

   <script>
    const regionUrl     = './region_hierarchy_korea.json';
  const citySelect    = document.getElementById('city');
  const districtSelect= document.getElementById('district');

  fetch(regionUrl)
    .then(res => res.json())
    .then(data => {
      // 1) 시/도 채우기
      citySelect.innerHTML = '<option value="">시/도 선택</option>';
      Object.keys(data).forEach(city => {
        const opt = document.createElement('option');
        opt.value = city;
        opt.text  = city;
        citySelect.append(opt);
      });

      // 2) 시/도 변경 시 구/군 채우기
      citySelect.addEventListener('change', () => {
        const sel = citySelect.value;
        // data[sel]는 객체이므로 keys()로 배열로 변환
        const districts = sel ? Object.keys(data[sel]) : [];

        // 초기화
        districtSelect.innerHTML = '<option value="">구/군 선택</option>';
        // 키 배열로 forEach
        districts.forEach(dist => {
          const opt = document.createElement('option');
          opt.value = dist;
          opt.text  = dist;
          districtSelect.append(opt);
        });
      });
    })
    .catch(err => console.error('지역 데이터 로딩 실패:', err));
  </script>
</body>
</html>
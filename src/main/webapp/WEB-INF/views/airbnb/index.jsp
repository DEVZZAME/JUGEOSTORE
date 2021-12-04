<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>주거상점:휴가용 임대 숙소, 통나무집, 비치하우스 독특한 숙소</title>

<link rel="stylesheet" href="/jung/resources/css/index.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 새로 추가 된 부분 -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" /> -->
<link rel="stylesheet" href="/jung/resources/css/calendar.css">
<!-- 새로 추가 된 부분 -->
</head>

<body>
	<div class="wrap">
		<div class="top_section">
			<header>
				<div class="logo">
					<img src="${pageContext.request.contextPath}/resources/img/whitelogo.png">
				</div>
				<div class="header_middle_block">
					<a href="!#" class="header_middle_link">숙소</a>
					<a href="!#" class="header_middle_link">체험</a>
					<a href="!#" class="header_middle_link">온라인 체험</a>
				</div>
				<div class="header_right_block">
					<div class="header_right_transparent_block"
						onclick="location.href='list2.do'">
						<p>호스트 되기</p>
					</div>
					<div class="header_right_container">
						<div class="header_lines_container">
							<div class="header_line"></div>
							<div class="header_line"></div>
							<div class="header_line"></div>
						</div>

						<div class="header_sub" style="display: block;">
                            <div class="header_bar">
                                <p class="menu_bar" onclick="location.href='signUpPage.do'">회원가입</p>
                                <p class="menu_bar" onclick="location.href='loginPage.do'">로그인</p>
                                <p class="menu_bar_line"></p>
                                <p class="menu_bar">숙소 호스트 되기</p>
                                <p class="menu_bar">체험 호스팅 하기</p>
                                <p class="menu_bar" onclick="location.href='faq.do'">도움말</p>
                            </div>
                        </div>
					</div>
				</div>
			<script>
                    $('.header_right_container').click(function (event) {
                        event.stopPropagation();
                        $('.header_bar').toggle();
                    });

                    $(document).click(function (e) {
                        var target = e.target;
                        if (!$(target).is('.header_right_container') && !$(target).parents().is('.header_right_container')) {
                            $('.header_bar').hide();
                        }
                    });
                </script>
            </header>

			<div class="search">
				<div class="search_block1">
					<div class="location">
						<label for="location">위치</label> <input type="text"
							class="search_input" placeholder="어디로 여행가세요?">
					</div>
					<div class="sub1" style="display: block;">
						<div class="search_location">
							<p class="sub_back1">언제 어디로든 떠나는 여행</p>
							<p class="flex_search">
								<a href="list.do">유연한 검색</a>
							</p>
						</div>
					</div>
				</div>
				<!-- search_block1 -->
				<script>
                $('.location').click(function(event){
                   event.stopPropagation();
                   $('.search_location').toggle();
               });
               
               $(document).click(function(){
                   $('.search_location').hide();
               });               
            </script>
				<!-- script1 -->

				<div class="search_block2">
					<div class="checkIn checkOut">
						<div class="InOut" id="In">
							<label for="location">체크인/체크아웃</label> <input type="text"
								class="search_input" id="demo" name="demo" placeholder="날짜 입력" />
							<!-- 새로 추가된 부분 -->
							<script type="text/javascript">
                        $(function () {
                            $('#demo').daterangepicker({
                                "locale": {
                                    "format": "YYYY-MM-DD",
                                    "separator": " ~ ",
                                    "applyLabel": "확인",
                                    "cancelLabel": "취소",
                                    "fromLabel": "From",
                                    "toLabel": "To",
                                    "customRangeLabel": "Custom",
                                    "weekLabel": "W",
                                    "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
                                    "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                                    "firstDay": 1
                                },
        
                                "drops": "down"
                            }, function (start, end, label) {
                                console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
                            });
                        });
                        
                        </script>
							<!-- 새로 추가된 부분 -->
						</div>
					</div>
				</div>
				<!-- //search_block2 -->

				<div class="search_block4">
					<div class="guest">
						<div>
							<label for="location">인원</label> <input type="text" id="res"
								class="search_input" placeholder="게스트 추가">
						</div>
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/img/search.png"
								class="search_img">
						</div>
					</div>
					<!-- 새로 추가된 부분 -->
					<div class="sub4" style="display: block;">
						<div class="search_guest">
							<div class="guest_wrap1">
								<div class="guest_left">
									<p class="guest_left_first">성인</p>
									<p class="guest_left_second">만 13세 이상</p>
								</div>
								<div class="guest_right">
									<input class="guest_button" type='button' id="minusbutton"
										onclick='count("minus1")' value='-'
										style="width: 36px; height: 36px;" />
									<div id='result1'>0</div>
									<input class="guest_button" type='button'
										onclick='count("plus1")' value='+'
										style="width: 36px; height: 36px;" />
								</div>
							</div>
							<div class="guest_wrap2">
								<div class="guest_left">
									<p class="guest_left_first">어린이</p>
									<p class="guest_left_second">만 2~12세</p>
								</div>
								<div class="guest_right">
									<input class="guest_button" type='button' id="minusbutton"
										onclick='count("minus2")' value='-'
										style="width: 36px; height: 36px;" />
									<div id='result2'>0</div>
									<input class="guest_button" type='button'
										onclick='count("plus2")' value='+'
										style="width: 36px; height: 36px;" />
								</div>
							</div>
							<div class="guest_wrap3">
								<div class="guest_left">
									<p class="guest_left_first">유아</p>
									<p class="guest_left_second">만 2세 미만</p>
								</div>
								<div class="guest_right">
									<input class="guest_button" type='button' id="minusbutton"
										onclick='count("minus3")' value='-'
										style="width: 36px; height: 36px;" />
									<div id='result3'>0</div>
									<input class="guest_button" type='button'
										onclick='count("plus3")' value='+'
										style="width: 36px; height: 36px;" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- //search_block4 -->
				<script>
                function count(type)  {
                    const resultElement1 = document.getElementById('result1');
                    const resultElement2 = document.getElementById('result2');
                    const resultElement3 = document.getElementById('result3');
                    
                    let number1 = resultElement1.innerText;
                    let number2 = resultElement2.innerText;
                    let number3 = resultElement3.innerText;
                    // 더하기/빼기
                    if(type === 'plus1') {
                        number1 = parseInt(number1) + 1;
                    }else if(type === 'minus1')  {
                        number1 = parseInt(number1) - 1;
                        if(number1<0){
                            return;
                        }
                    }
                    if(type === 'plus2') {
                        number2 = parseInt(number2) + 1;
                    }else if(type === 'minus2')  {
                        number2 = parseInt(number2) - 1;
                        if(number2<0){
                            return;
                        }
                    }
                    if(type === 'plus3') {
                        number3 = parseInt(number3) + 1;
                    }else if(type === 'minus3')  {
                        number3 = parseInt(number3) - 1;
                        if(number3<0){
                            return;
                        }
                    }
                    // 결과 출력
                    resultElement1.innerText = parseInt(number1);
                    resultElement2.innerText = parseInt(number2);
                    resultElement3.innerText = parseInt(number3);
                    document.getElementById('res').value = `게스트 \${parseInt(number1)+parseInt(number2)}\명`;
                }
            
            </script>
				<!-- script4 -->
			</div>
			<!-- 새로 추가된 부분 -->
			<!-- //search -->

			<div class="top_title">
				<div class="top_title_text">
					<p>어디든 상관없이 떠나고 싶을 때 에어비앤비가 도와드립니다!</p>
				</div>
				<div class="top_title_button" onclick="location.href='list.do'">
					<p>
						<a>유연한 검색</a>
					</p>
				</div>
			</div>
			<script>
        /* location show */    
            $('.location').click(function(event){
               event.stopPropagation();
               $('.search_location').show();
           });        
        /* checkin,out show */   
            $('#In, #Out').click(function(event){
                event.stopPropagation();
               $('.search_checkInOut').show();
          });
        /* guest show */ 
            $('.guest').click(function(event){
                event.stopPropagation();
                $('.search_guest').show();
              });
        /* 다른 메뉴 눌렀을 때 hide */
            $('#In, #Out, .guest').click(function(){
                 $('.search_location').hide();
             });
             $('.location, .guest').click(function(){
                 $('.search_checkInOut').hide();
             });
             $('.location, #In, #Out').click(function(){
                 $('.search_guest').hide();
             });
            /* 서브메뉴 제외 영역 클릭 시 hide */ 
            $(document).click(function(e) {
                var target = e.target;
                if (!$(target).is('.search_block1') && !$(target).parents().is('.search_block1')) {
                    $('.search_location').hide();
                }
            });
            $(document).click(function(e) {
                var target = e.target;
                if (!$(target).is('.search_block2') && !$(target).parents().is('.search_block2')) {
                    $('.search_checkInOut').hide();
                }
            });
            $(document).click(function(e) {
                var target = e.target;
                if (!$(target).is('.search_block4') && !$(target).parents().is('.search_block4')) {
                    $('.search_guest').hide();
                }
            });
            /* top_section hide */
            $('.location, #In, #Out, .guest').click(function(){
                   $('.top_title').hide();
               });
            $(document).click(function(){
                   $('.top_title').show();
               });
        </script>
		</div>

		<main class="main">
			<div class="white_section">
				<div class="city_cards_container">
					<div class="city_card" onclick="location.href='list.do'">
						<img
							src="${pageContext.request.contextPath}/resources/img/nav1.jpg"
							alt="Vienna">
						<div>
							<h3 class="city_card_title">서울</h3>
							<p class="city_card_text">차로 15분 거리</p>
						</div>
					</div>
					<div class="city_card">
						<img
							src="${pageContext.request.contextPath}/resources/img/nav2.jpg"
							alt="Vienna">
						<div>
							<h3 class="city_card_title">양양군</h3>
							<p class="city_card_text">차로 2.5시간 거리</p>
						</div>
					</div>
					<div class="city_card">
						<img
							src="${pageContext.request.contextPath}/resources/img/nav3.jpg"
							alt="Vienna">
						<div>
							<h3 class="city_card_title">제주도(Jeju)</h3>
							<p class="city_card_text">차로 7.5시간 거리</p>
						</div>
					</div>

					<div class="city_card">
						<img
							src="${pageContext.request.contextPath}/resources/img/nav4.jpg"
							alt="Vienna">
						<div>
							<h3 class="city_card_title">부산</h3>
							<p class="city_card_text">차로 5시간 거리</p>
						</div>
					</div>
					<div class="city_card">
						<img
							src="${pageContext.request.contextPath}/resources/img/nav5.jpg"
							alt="Vienna">
						<div>
							<h3 class="city_card_title">속초시</h3>
							<p class="city_card_text">차로 2.5시간 거리</p>
						</div>
					</div>
					<div class="city_card">
						<img
							src="${pageContext.request.contextPath}/resources/img/nav6.jpg"
							alt="Vienna">
						<div>
							<h3 class="city_card_title">광주</h3>
							<p class="city_card_text">차로 3시간 거리</p>
						</div>
					</div>

				</div>
				<h2 class="section_title">어디에서나, 여행은 살아보는 거야!</h2>
				<div class="live_container">
					<div class="live_card">
						<img
							src="${pageContext.request.contextPath}/resources/img/live1.jpg"
							alt="host1">
						<p>자연생활을 만끽할 수 있는 숙소</p>
					</div>
					<div class="live_card">
						<img
							src="${pageContext.request.contextPath}/resources/img/live2.jpg"
							alt="host1">
						<p>독특한 공간</p>
					</div>
					<div class="live_card">
						<img
							src="${pageContext.request.contextPath}/resources/img/live3.jpg"
							alt="host1">
						<p>집 전체</p>
					</div>
				</div>
			</div>

		</main>
		<footer>
			<div class="footer_container">
				<div class="footer_block">
					<a href="" class="footer_link_title">소개</a> <a href=""
						class="footer_link">에어비앤비 이용방법</a> <a href="" class="footer_link">투자자정보</a>
					<a href="" class="footer_link">호텔투나잇</a> <a href=""
						class="footer_link">채용정보</a> <a href="" class="footer_link">뉴스룸</a>
					<a href="" class="footer_link">에어비앤비플러스</a> <a href=""
						class="footer_link">에어비앤비 비즈니스 프로그램</a> <a href=""
						class="footer_link">창립자 편지</a>

				</div>
				<div class="footer_block">
					<a href="" class="footer_link_title">커뮤니티</a> <a href=""
						class="footer_link">다양성 및 소속감</a> <a href="" class="footer_link">구호
						인력을 위한 숙소</a> <a href="" class="footer_link">접근성</a> <a href=""
						class="footer_link">게스트추천</a> <a href="" class="footer_link">에어비앤비
						어소시에이트</a> <a href="" class="footer_link">Airbnb.org</a> <a href=""
						class="footer_link">에어비앤비 2021</a> <a href="" class="footer_link">에어비앤비
						Luxe</a>

				</div>
				<div class="footer_block">
					<a href="" class="footer_link_title">호스팅하기</a> <a href=""
						class="footer_link">숙소 호스팅</a> <a href="" class="footer_link">책임감
						있는 호스팅</a> <a href="" class="footer_link">온라인 체험 호스팅하기</a> <a href=""
						class="footer_link">체험 호스팅하기</a> <a href="" class="footer_link">자료
						센터</a> <a href="" class="footer_link">커뮤니티센터</a>
				</div>
				<div class="footer_block">
					<a href="" class="footer_link_title">에어비앤비 지원</a> <a href=""
						class="footer_link">코로나19 대응방안</a> <a href="" class="footer_link">이웃
						민원 지원</a> <a href="" class="footer_link">도움말 센터</a> <a href=""
						class="footer_link">신뢰와 안전</a> <a href="" class="footer_link">예약
						취소 옵션</a> <a href="" class="footer_link">고객센터</a>
				</div>
			</div>
		</footer>


	</div>
</body>
</html>
<!--         <script>
            $('.search_block4').click(function(event){
               event.stopPropagation();
               $('.sub4').toggle();
           });
           
           $(document).click(function(){
               $('.sub4').hide();
           });
           $('.search_block1, .search_block2, .search_block3').click(function(){
               $('.sub4').hide();
           });
        </script> -->
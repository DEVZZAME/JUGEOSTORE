<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>숙소3</title>
    <link rel="stylesheet" href="/jung/resources/css/acco_detail.css">
    
    	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
		<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" /> -->
		<link rel="stylesheet" href="/jung/resources/css/acc_calendar.css">
		
		<script>
			function send(f) {
			
			var surname = f.surname.value;
			var name = f.name.value;
			var email = f.email.value;
			var phoneno = f.phoneno.value;
			 var checkin = f.checkin.value; 
			 var checkout = f.checkout.value; 
						
			 //alert(checkin + "," + checkout);
			 
			if (name == "") {
			alert("이름을 입력해주세요");
			return;
			}
	
			if (surname == "") {
			alert("성을 입력해주세요");
			return;
			}
	
			if (phoneno == "") {
			alert("전화번호를 입력해주세요");
			return;
			}
	
			var phoneno_pattern = /^\d{3}-\d{3,4}-\d{4}$/;
			if (!phoneno_pattern.test(phoneno)) {
			alert("올바른 형식으로 입력해주세요");
			return;
			}
	
	
			f.action = "reserv.do";
			f.method = "POST";
			f.submit();
			}
		</script>
		
		
</head>
<body>
	<div class="wrap">
        <header>
            <div class="logo">
                <a href="index.html"><img src="${pageContext.request.contextPath}/resources/img/2.png"></a>
            </div>
            <div class="search">
                <div class="search_block1">
                    <input type="text" class="location" placeholder="연남동">
                </div>
                <div class="search_block2">
                    <input type="text" class="date" placeholder="10월 30일 - 11월 11일">
                </div>
                <div class="search_block3">
                    <input type="text" class="guest" placeholder="게스트 추가">
                </div>
            </div>
            <div class="header_right_block">
                <div class="header_right_container">
                    <div class="header_lines_container">
                        <div class="header_line"></div>
                        <div class="header_line"></div>
                        <div class="header_line"></div>
                    </div>
                </div>
            </div>
        </header>
        <div class="container">
            <main>
                <div class="title">
                    <h2>${list[2].hotelname}</h2>
                    <div class="title_2">
                        <p>
                            <img class="star" src="${pageContext.request.contextPath}/resources/img/star.png">
                            4.70 <a href="#">후기126개</a> · 
                            <img class="medal" src="${pageContext.request.contextPath}/resources/img/medal.png">
                   				 슈퍼호스트 · <a href="https://www.google.co.kr/maps">${list[2].hoteladdr}</a>
                        </p>
                </div>
                </div>
                <div class="image_section">
                    <div class="left">
                        <img class="left_image" src="${pageContext.request.contextPath}/resources/img/stay3/stay1.PNG">
                    </div>
                    <div class="right">
                        <div class="top">
                            <div class="top_left">
	                    		<img class="right_image" src="${pageContext.request.contextPath}/resources/img/stay3/stay2.PNG">
	                		</div>
                            <div class="top_right">   
	                    		<img class="right_image" src="${pageContext.request.contextPath}/resources/img/stay3/stay3.PNG">
	                		</div>
                        </div>
                        <div class="bottom">
                            <div class="bottom_left">
                                <img class="right_image" src="${pageContext.request.contextPath}/resources/img/stay3/stay4.PNG">
                            </div>
                            <div class="bottom_right">
                                <img class="right_image" src="${pageContext.request.contextPath}/resources/img/stay3/stay5.PNG">
                                <button id="image_show">::: 사진 모두 보기</button>
                                <div class="image_background">
                                    <div class="image_window">
                                        <div class="image_popup" style="overflow: scroll;">
                                            <button id="image_close">
                                                <img src="${pageContext.request.contextPath}/resources/img/close.png">
                                            </button>
                                            <div>
                                                <img class="modal_image" src="${pageContext.request.contextPath}/resources/img/stay3/stay1.PNG">
                                                <img class="modal_image" src="${pageContext.request.contextPath}/resources/img/stay3/stay2.PNG">
                                                <img class="modal_image" src="${pageContext.request.contextPath}/resources/img/stay3/stay3.PNG">
                                                <img class="modal_image" src="${pageContext.request.contextPath}/resources/img/stay3/stay4.PNG">
                                                <img class="modal_image" src="${pageContext.request.contextPath}/resources/img/stay3/stay5.PNG">
                                            </div>
                                        </div>
                                        <div>
                                            <div></div>
                                        </div>
                                    </div>
                                </div>
                                
                                <script>
                                    function show() {
                                        document.querySelector(".image_background").className = "image_background image_show";
                                    }
                                    
                                    function close() {
                                        document.querySelector(".image_background").className = "image_background";
                                    }
                                    
                                    document.querySelector("#image_show").addEventListener("click", show);
                                    document.querySelector("#image_close").addEventListener("click", close);
                                    </script>
                         
                    </div>
                </div>
                </div>
                </div>
          
<!-- 페이지 오늘쪽 분홍색 칸  -->
				 <div class="right_section">
					<p class="right_section_first">요금을 확인하려면 날짜를 입력하세요</p>
					<p class="right_section_second">
						<img class="star" src="${pageContext.request.contextPath}/resources/img/star.png"> 4.86 <a
							href="#" class="right_section_review">(후기43개)</a>
					</p>
					<div class="reservation">
						<div class="reservation_block1">
							<input type="text" class="reservation_block1_first" id="demo"
								name="demo" placeholder="날짜 입력" />
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
						</div>
						<div class="reservation_block2">
							<div class="rev_guest">
								<input type="text" id="res" class="reservation_block2_first"
									placeholder="인원">
							</div>
							<!--  -->
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
							<!--  -->
						</div>
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
                    
                                $('.rev_guest').click(function(event){
                                event.stopPropagation();
                                $('.search_guest').show();
                                });			
                                $('.reservation_block1, #rev_show').click(function(){
                                $('.search_guest').hide();
                                });
                                $(document).click(function(e) {
                                 var target = e.target;
                                 if (!$(target).is('.sub4') && !$(target).parents().is('.sub4')) {
                                     $('.search_guest').hide();
                                 }
                               });
                            </script>
					</div>


					<div class="reservation2">
						<button id="rev_show">예약하기</button>
						<div class="rev_background">
							<div class="rev_window">
								<div class="rev_popup" style="overflow: scroll;">
									<button id="rev_close">
										<img src="${pageContext.request.contextPath}/resources/img/close.png">
									</button>
									<div class="rev_form">
										<p
											style="color: black; font-size: 20px; font-weight: bold; margin-top: 10px; margin-bottom: 20px;">숙소
											예약</p>
				<form>
										<div class="rev_name">
											<div class="rev_name1">
												<p>성</p>
												<input type="text" name="surname" id="rev_name1" placeholder="성을 입력해주세요">
											</div>
											<div class="rev_name2">
												<p>이름</p>
												<input type="text" name="name" id="rev_name2" placeholder="이름을 입력해주세요">
											</div>
										</div>
										<div class="rev_email">
											<p>이메일</p>
											<div id="rev_email1">
												<input type="text" name="email" id="rev_email" placeholder="이메일을 입력해주세요">
											</div>
										</div>
										<div class="rev_phone">
											<p>연락처</p>
											<div class="rev_phone_row">
												<input type="text" name="phoneno" id="rev_phone" placeholder="연락쳐를 입력해주세요" maxlength="50">
											</div>
										</div>
										<div class="rev_acc">
											<p>숙소명</p>
											<div class="rev_acc_row">
												<input type="text" name="hotelname" id="rev_acc" placeholder="내용을 입력해주세요" maxlength="100">
											</div>
										</div>
										<div class="rev_addr">
											<p>숙소주소</p>
											<div class="rev_addr_row">
												<input type="text" name="hoteladdr" id="rev_addr" placeholder="내용을 입력해주세요" maxlength="100">
											</div>
										</div>
										<div class="rev_date">
											<div class="rev_checkin">
												<p>체크인</p>
												<input type="date" name="checkin" id="rev_date">
											</div>
											<div class="rev_checkout">
												<p>체크아웃</p>
												<input type="date" name="checkout" id="rev_date">
											</div>
										</div>
										<div class="rev_complete">
											<button onclick="send(this.form)">완료</button>
										</div>
				</form>
										
										<p style="font-size: 14px; color: red; margin: 15px auto;">원활한
											예약을 위해 정확한 정보를 입력해주세요</p>
									</div>
								</div>
							</div>
						</div>
					</div>


					<script>
                        function show() {
                            document.querySelector(".rev_background").className = "rev_background rev_show";
                        }
                    
                        function close() {
                            document.querySelector(".rev_background").className = "rev_background";
                        }
                    
                        document.querySelector("#rev_show").addEventListener("click", show);
                        document.querySelector("#rev_close").addEventListener("click", close);
                    </script>




					<div class="reservation3">
						<p>예약 확정 전에는 요금이 청구되지 않습니다.</p>
					</div>
				</div>
<!-- 페이지 오늘쪽 분홍색 칸  끝-->    


                <div class="detail">
                    <div class="what">
                        <h3>표승연님이 호스팅하는 주거용 공간 전체</h3>
                        <p>최대 인원 4명 · 침실 1개 · 침대 3개 · 욕실 1개</p>
                    </div>
                    <div class="about">
                        <div class="sec1">
                            <div class="sec1_1">
                                <img src="${pageContext.request.contextPath}/resources/img/house.png">
                            </div>
                            <div class="sec1_2">
                                <p class="sec1_2_1">집 전체</p>
                                <p class="sec1_2_2">로프트 전체를 단독으로 사용하시게 됩니다.</p>
                            </div>
                        </div>
                        <div class="sec2">
                            <div class="sec1_1">
                                <img src="${pageContext.request.contextPath}/resources/img/clean.png">
                            </div>
                            <div class="sec1_2">
                                <p class="sec1_2_1">청결 강화</p>
                                <p class="sec1_2_2">에어비앤비의 강화된 5단계 청소 절차를 준수하겠다고 동의한 호스트입니다</p>
                            </div>
                        </div>
                        <div class="sec3">
                    		<div class="sec1_1">
                        		<img src="${pageContext.request.contextPath}/resources/img/door.png">
                    		</div>
                   			 <div class="sec1_2">
                       			<p class="sec1_2_1">셀프 체크인</p>
                        		<p class="sec1_2_2">최근 숙박한 게스트 중 90%가 체크인 과정에 별점 5점을 준 숙소입니다.</p>
                    		</div>
               			</div>
                        <div class="sec4">
                            <div class="sec1_1">
                                <img src="${pageContext.request.contextPath}/resources/img/superhost.png">
                            </div>
                            <div class="sec1_2">
                                <p class="sec1_2_1">표승연님은 슈퍼호스트입니다</p>
                                <p class="sec1_2_2">슈퍼호스트는 풍부한 경험과 높은 평점을 자랑하며 게스트가 숙소에서 편안히 머무를 수 있도록 최선을 다하는 호스트입니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="intro">
                       <p>** 장기투숙 게스트 구하고 있어요!</p>
                       <p>3월부터 6월까지 가능합니다 :)</p>
                       <p>we’re looking for a long-term guest.</p>
                       <p>March - June.</p>
                        <p><br></p>
                            <button id="show">더 보기</button>
                            <div class="background">
                            <div class="window">
                                <div class="popup" style="overflow: scroll;">
                                <button id="close">
                                    <img src="${pageContext.request.contextPath}/resources/img/close.png">
                                </button>
                                    <div>
                                        <br>
                                        <h2>숙소 설명</h2>
                                        <br>
                                        <p>Hello :).</p>
                                        <p>This is Victory House run by mommy & daddy of a baby named 'Victory'.</p>
                                        <p>Our place is very new (launched on 25th July 2019), you can enjoy a</p>
                                        <p>clean and neat space.</p>
                                        <p>It's pleasure to introduce our cozy house.</p>
                                        <p>You are always welcome!</p>
                                        <p><br></p>
                                        <h3>게스트 이용 가능 공간/시설</h3>
                                        <p>Bedroom</p>
                                        <p>: 2 Queen Sized bed, 1 Queen Sized Sofa bed</p>
                                        <p><br></p>
                                        <p>Kitchen</p>
                                        <p>:Sink, Kitchen utensils Flat ware, Mugs, Glasses, Frying pan, </p>
                                        <p>pot Induction Range, Fridge, Micro wave Laundry machine with detergent</p>
                                        <p><br></p>
                                        <p>Bathroom</p>
                                        <p>: Plenty of towels Hair dryer, shampoo, straightener, Conditioner,</p>
                                        <p>Body wash, Soap Toothbrush, Toothpaste, Toilet papers</p>
                                        <p><br></p>
                                        <h3>ETC</h3>
                                        <p>: Free wi-fi, Pocket wi-f</p>
                                        <p><br></p>
                                        <h3>기타 주의사항</h3>
                                        <p>A lot of restaurants, 24hours convenient store, cafe, hot spots near my apartment</p>
                                    </div>
                                </div>
                                <div>
                                <div></div>
                                </div>
                            </div>
                            </div>
                        
                            <script>
                            function show() {
                                document.querySelector(".background").className = "background show";
                            }
                        
                            function close() {
                                document.querySelector(".background").className = "background";
                            }
                        
                            document.querySelector("#show").addEventListener("click", show);
                            document.querySelector("#close").addEventListener("click", close);
                            </script>
                            

                    </div>
                    <div class="convenience">
                        <h3>숙소 편의시설<br></h3>
                    <div class="con_top">
                        <div class="con_left">
                            <div class="con_items"><img src="${pageContext.request.contextPath}/resources/img/tv.png"> <span>TV</span></div>
                            <div class="con_items"><img src="${pageContext.request.contextPath}/resources/img/hairdrier.png"> <span>헤어드라이어</span></div>
                            <div class="con_items"><img src="${pageContext.request.contextPath}/resources/img/washingmachine.png"> <span>세탁기</span></div>
                        </div>
                        <div class="con_right">
                            <div class="con_items"><img src="${pageContext.request.contextPath}/resources/img/airconditional.png"> <span>에어컨</span></div>
                            <div class="con_items"><img src="${pageContext.request.contextPath}/resources/img/wifi.png"> <span>와이파이</span></div>
                            <div class="con_items"><img src="${pageContext.request.contextPath}/resources/img/kitchen.png"> <span>주방</span></div>
                        </div>
                    </div>
                    <div class="con_bottom">
                        <button id="con_show">편의시설 모두 보기</button>
                            <div class="con_background">
                            <div class="con_window">
                                <div class="con_popup" style="overflow: scroll;">
                                <button id="con_close">
                                    <img src="${pageContext.request.contextPath}/resources/img/close.png">
                                </button>
                                <div class="modal">
                                    <br>
                                    <div><h2>숙소 편의시설</h2></div>
                                    <div><h3 class="sub_title">욕실</h3>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/hairdrier.png"> <span>헤어드라이어</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/shampoo.png"> <span>샴푸</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/showerwash.png"> <span>샤워젤</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/hotwater.png"> <span>온수</span></div>
                                        </div>
                                        <div><h3 class="sub_title">침실 및 세탁 시설</h3>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/washingmachine.png"> <span>세탁기</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/dryer.png"> <span>건조기</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/amenity.png"> <span>필수품</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/hanger.png"> <span>옷걸이</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/bedding.png"> <span>침구</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/iron.png"> <span>다리미</span></div>
                                        </div>
                                        <div><h3 class="sub_title">엔터테인먼트</h3>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/tv.png"> <span>TV</span></div>
                                        </div>
                                        <div><h3 class="sub_title">냉난방</h3>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/airconditional.png"> <span>에어컨</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/boiler.png"> <span>난방</span></div>
                                        </div>
                                        <div><h3 class="sub_title">숙소 안전</h3>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/firealram.png"> <span>화재경보기</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/carbonmonoxidedetector.png"> <span>일산화탄소 감지기</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/fireextinguisher.png"> <span>소화기</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/firstaidkit.png"> <span>구급약</span></div>
                                        </div>
                                        <div><h3 class="sub_title">인터넷 및 사무 공간</h3>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/wifi.png"> <span>와이파이</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/spaceforwork.png"> <span>업무 전용 공간</span></div>
                                        </div>
                                        <div><h3 class="sub_title">주방 및 식당</h3>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/kitchen.png"> <span>주방</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/refrigerator.png"> <span>냉장고</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/microwave.png"> <span>전자레인지</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/cooker.png"> <span>기본 조리도구</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/dish.png"> <span>식기류</span></div>
                                            <div class="modal_items"><img src="${pageContext.request.contextPath}/resources/img/gasrange.png"> <span>가스레인지</span></div>
                                            <div class="modal_items"><br></div>
                                        </div>


                                </div>
                                </div>
                                </div>
                            </div>
                            </div>
                        
                            <script>
                            function show() {
                                document.querySelector(".con_background").className = "con_background con_show";
                            }
                        
                            function close() {
                                document.querySelector(".con_background").className = "con_background";
                            }
                        
                            document.querySelector("#con_show").addEventListener("click", show);
                            document.querySelector("#con_close").addEventListener("click", close);
                            </script>
                    </div>
                </div>
            </main>
        </div>
        
<!-- 리뷰시작 -->
        <div class="re_wrap">
            <div class="re_top">
                <div class="re_top_first">
                    <img src="${pageContext.request.contextPath}/resources/img/star.png" class="re_top_first_firstchild">
                    <p class="re_top_first_secondchild">4.70 · 게스트 후기 120개</p>
                </div>
            </div>
            <div class="re_bottom">
                 <div class="re_leftcolumn"> 
                <c:forEach var="vo" items="${ rev1 }">
                     <div class="re_left">
                        <div class="re_left_top">
                            <div class="re_left_top_first">
                                <img src="${pageContext.request.contextPath}/resources/img/profile.png">
                            </div>
                            <div class="re_left_top_second">
                                <p class="re_left_top_second_first">${ vo.id }</p>
                                <p class="re_left_top_second_second">${ vo.regdate}</p>
                            </div>
                        </div>
                        <div class="re_left_bottom">
                           ${ vo.content}
                        </div>
                    </div>
                    </c:forEach>
              </div>      
                    
              <div class="re_rightcolumn">
                  <c:forEach var="vo" items="${ rev2 }">  
                    <div class="re_right">
                        <div class="re_left_top">
                            <div class="re_left_top_first">
                                <img src="${pageContext.request.contextPath}/resources/img/profile.png">
                            </div>
                            <div class="re_left_top_second">
                                <p class="re_left_top_second_first">${ vo.id }</p>
                                <p class="re_left_top_second_second">${ vo.regdate}</p>
                            </div>
                        </div>
                        <div class="re_left_bottom">
                            ${ vo.content}
                        </div>
                    </div>
                    
                     </c:forEach>
                </div>
            </div>
        </div>

<!-- 리뷰 긑 -->
        
        <footer>
            <div class="footer_container">
                <div class="footer_block">
                    <a href="" class="footer_link_title">소개</a>
                    <a href="" class="footer_link">에어비앤비 이용방법</a>
                    <a href="" class="footer_link">투자자정보</a>
                    <a href="" class="footer_link">호텔투나잇</a>
                    <a href="" class="footer_link">채용정보</a>
                    <a href="" class="footer_link">뉴스룸</a>
                    <a href="" class="footer_link">에어비앤비플러스</a>
                    <a href="" class="footer_link">에어비앤비 비즈니스 프로그램</a>
                    <a href="" class="footer_link">창립자 편지</a>
                </div>
                <div class="footer_block">
                    <a href="" class="footer_link_title">커뮤니티</a>
                    <a href="" class="footer_link">다양성 및 소속감</a>
                    <a href="" class="footer_link">구호 인력을 위한 숙소</a>
                    <a href="" class="footer_link">접근성</a>
                    <a href="" class="footer_link">게스트추천</a>
                    <a href="" class="footer_link">에어비앤비 어소시에이트</a>
                    <a href="" class="footer_link">Airbnb.org</a>
                    <a href="" class="footer_link">에어비앤비 2021</a>
                    <a href="" class="footer_link">에어비앤비 Luxe</a>
                </div>
                <div class="footer_block">
                    <a href="" class="footer_link_title">호스팅하기</a>
                    <a href="" class="footer_link">숙소 호스팅</a>
                    <a href="" class="footer_link">책임감 있는 호스팅</a>
                    <a href="" class="footer_link">온라인 체험 호스팅하기</a>
                    <a href="" class="footer_link">체험 호스팅하기</a>
                    <a href="" class="footer_link">자료 센터</a>
                    <a href="" class="footer_link">커뮤니티센터</a>
                </div>
                <div class="footer_block">
                    <a href="" class="footer_link_title">에어비앤비 지원</a>
                    <a href="" class="footer_link">코로나19 대응방안</a>
                    <a href="" class="footer_link">이웃 민원 지원</a>
                    <a href="" class="footer_link">도움말 센터</a>
                    <a href="" class="footer_link">신뢰와 안전</a>
                    <a href="" class="footer_link">예약 취소 옵션</a>
                    <a href="" class="footer_link">고객센터</a>
                </div>
            </div>
        </footer>
    </div>    
</body>
</html>
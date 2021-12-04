<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/jung/resources/css/list.css">
    
    <script type="text/javascript">
    
    function hotel1(name){
    	
    	var name = encodeURIComponent(name);
    	location.href="acc1.do?hotelname="+name;
    }
    
 	function hotel2(name){
    	
    	var name = encodeURIComponent(name);
    	location.href="acc2.do?hotelname="+name;
    }
 	
	function hotel3(name){
    	
    	var name = encodeURIComponent(name);
    	location.href="acc3.do?hotelname="+name;
    }
    
    </script>
    
</head>
<body>
<div class="wrap">
	<header>
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/img/2.png">
        </div>
        
        <div class="search">
            <div class="search_block1">
            <%-- <p class="location">${list[0].city}</p> --%>
            <input type="text" class="location" placeholder="서울">
            </div>
            <div class="search_block2">
                <input type="text" id="demo" class="date" placeholder="8월 05일 - 08월 06일">
            </div>
            <div class="search_block3">
                <input type="text" class="guest" placeholder="2명">
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
        <div class="result">
            <p class="result_result">
                검색결과 / 8월 5일 - 8월 6일
            </p>
            <h1 class="result_location">나만의 스테이 서울</h1>
        </div>
        
     <%-- <c:forEach var="vo" items="${list}" varStatus="cnt"> --%>
        <div class="accommodation">
            <div class="acc_left" onclick="hotel1('${list[0].hotelname}');"><img class="acc_img" src="${pageContext.request.contextPath}/resources/img/stay1/stay1.PNG"></div>
            <div class="acc_right">
                <div class="acc_right_top">
                    <p>서울의 주거용 공간 전체</p>
                    <p class="top_child">${list[0].hotelname}</p>
                </div>
                <div class="acc_right_mid">
                    <p>최대 인원4명·침실 1개·침대 0개·욕실 1개</p>
                    <p>주방·에어컨·무언 인터넷·세탁기</p>
                </div>
                <div class="acc_right_bottom">
                    <div class="acc_right_bottom_left">
                        <p>　</p>
                        <p>
                            <img class="star" src="${pageContext.request.contextPath}/resources/img/star.png">
                            4.86 <a href="#">후기43개</a> · 
                        </p>
                        <!-- <p>4.86(후기 43개)</p> -->
                    </div>
                    <div class="acc_right_bottom_right">
                        <p>₩${list[0].hotelprice} / 박</p>
                        <p>총액 ₩${list[0].hotelprice}</p>
                    </div>
                </div>
            </div>
        </div>
  
        <div class="accommodation">
            <div class="acc_left" onclick="hotel2('${list[1].hotelname}');"><img class="acc_img" src="${pageContext.request.contextPath}/resources/img/stay2/stay1.PNG"></div>
            <div class="acc_right">
                <div class="acc_right_top">
                    <p>서울의 주거용 공간 전체</p>
                    <p class="top_child">${list[1].hotelname}</p>
                </div>
                <div class="acc_right_mid">
                    <p>최대 인원4명·침실 2개·침대 3개·욕실 1개</p>
                    <p>주방·에어컨·무언 인터넷·세탁기</p>
                </div>
                <div class="acc_right_bottom">
                    <div class="acc_right_bottom_left">
                        <p>　</p>
                        <p>
                            <img class="star" src="${pageContext.request.contextPath}/resources/img/star.png">
                            4.55 <a href="#">후기176개</a> · 
                        </p>
                        <!-- <p>4.55(후기 176개)</p> -->
                    </div>
                    <div class="acc_right_bottom_right">
                        <p>₩${list[1].hotelprice} / 박</p>
                        <p>총액 ₩{list[1].hotelprice}</p>
                    </div>
                </div>
            </div>
        </div>
		
		    <div class="accommodation">
            <div class="acc_left" onclick="hotel3('${list[2].hotelname}');"><img class="acc_img" src="${pageContext.request.contextPath}/resources/img/stay3/stay1.PNG"></div>
            <div class="acc_right">
                <div class="acc_right_top">
                    <p>서울의 주거용 공간 전체</p>
                    <p class="top_child">${list[2].hotelname}</p>
                </div>
                <div class="acc_right_mid">
                    <p>최대 인원4명·침실 1개·침대 3개·욕실 1개</p>
                    <p>주방·에어컨·무언 인터넷·세탁기</p>
                </div>
                <div class="acc_right_bottom">
                    <div class="acc_right_bottom_left">
                        <p>　</p>
                        <p>
                            <img class="star" src="${pageContext.request.contextPath}/resources/img/star.png">
                            4.70 <a href="#">후기120개</a> · 
                        </p>
                       <!--  <p>4.70(후기 120개)</p> -->
                    </div>
                    <div class="acc_right_bottom_right">
                        <p>₩${list[2].hotelprice} / 박</p>
                        <p>총액 ₩{list[2].hotelprice}</p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="accommodation">
            <div class="acc_left"><img class="acc_img" src="${pageContext.request.contextPath}/resources/img/extra1.PNG"></div>
            <div class="acc_right">
                <div class="acc_right_top">
                    <p>서울의 주거용 공간 전체</p>
                    <p class="top_child">코코 하우스 #건대입구#소독#건대맛의거리#커먼그라운드#먹자골목</p>
                </div>
                <div class="acc_right_mid">
                    <p>최대 인원2명·원룸·침대 1개·욕실 1개</p>
                    <p>주방·에어컨·무언 인터넷·세탁기</p>
                </div>
                <div class="acc_right_bottom">
                    <div class="acc_right_bottom_left">
                        <p>　</p>
                        <p>
                            <img class="star" src="${pageContext.request.contextPath}/resources/img/star.png">
                            4.72 <a href="#">후기133개</a> · 
                        </p>
                        <!-- <p>4.72(후기 133개)</p> -->
                    </div>
                    <div class="acc_right_bottom_right">
                        <p>₩92,723 / 박</p>
                        <p>총액 ₩92,723</p>
                    </div>
                </div>
            </div>
        </div>
        
         <div class="accommodation">
            <div class="acc_left"><img class="acc_img" src="${pageContext.request.contextPath}/resources/img/extra2.PNG"></div>
            <div class="acc_right">
                <div class="acc_right_top">
                    <p>서울의 주거용 공간 전체</p>
                    <p class="top_child">#4 Clean & cozy room right next to Gangnam Station</p>
                </div>
                <div class="acc_right_mid">
                    <p>최대 인원3명·침실 1개·침대 1개·욕실 1개</p>
                    <p>주방·에어컨·무언 인터넷·세탁기</p>
                </div>
                <div class="acc_right_bottom">
                    <div class="acc_right_bottom_left">
                        <p>　</p>
                        <p>
                            <img class="star" src="${pageContext.request.contextPath}/resources/img/star.png">
                            4.83 <a href="#">후기78개</a> · 
                        </p>
                        <!-- <p>4.83(후기 78개)</p> -->
                    </div>
                    <div class="acc_right_bottom_right">
                        <p>₩116,168 / 박</p>
                        <p>총액 ₩116,168</p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="accommodation">
            <div class="acc_left"><img class="acc_img" src="${pageContext.request.contextPath}/resources/img/extra3.PNG"></div>
            <div class="acc_right">
                <div class="acc_right_top">
                    <p>서울의 주거용 공간 전체</p>
                    <p class="top_child">[서촌 한옥 독채] 모임장소/파티룸/LP턴플레이어/빔프로젝터/넷플릭스/경복궁/서촌</p>
                </div>
                <div class="acc_right_mid">
                    <p>최대 인원6명·침실 2개·침대 2개·욕실 1.5개</p>
                    <p>주방·에어컨·무언 인터넷·세탁기</p>
                </div>
                <div class="acc_right_bottom">
                    <div class="acc_right_bottom_left">
                        <p>　</p>
                        <p>
                            <img class="star" src="${pageContext.request.contextPath}/resources/img/star.png">
                            4.85 <a href="#">후기174개</a> · 
                        </p>
                       <!--  <p>4.85(후기 174개)</p> -->
                    </div>
                    <div class="acc_right_bottom_right">
                        <p>₩173,295 / 박</p>
                        <p>총액 ₩173,295</p>
                    </div>
                </div>
            </div>
        </div>
        
          <div class="accommodation">
            <div class="acc_left"><img class="acc_img" src="${pageContext.request.contextPath}/resources/img/extra4.PNG"></div>
            <div class="acc_right">
                <div class="acc_right_top">
                    <p>서울의 주거용 공간 전체</p>
                    <p class="top_child">HH's house #Han river view #Mapo St. 1min #Cozy</p>
                </div>
                <div class="acc_right_mid">
                    <p>최대 인원2명·침실 1개·침대 1개·욕실 1개</p>
                    <p>주방·에어컨·무언 인터넷·세탁기</p>
                </div>
                <div class="acc_right_bottom">
                    <div class="acc_right_bottom_left">
                        <p>　</p>
                        <p>
                            <img class="star" src="${pageContext.request.contextPath}/resources/img/star.png">
                            4.84 <a href="#">후기184개</a> · 
                        </p>
                        <!-- <p>4.84(후기 184개)</p> -->
                    </div>
                    <div class="acc_right_bottom_right">
                        <p>₩202,177 / 박</p>
                        <p>총액 ₩202,177</p>
                    </div>
                </div>
            </div>
        </div>
    </main>
 </div>
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
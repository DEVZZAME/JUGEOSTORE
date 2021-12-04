<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지</title>
		<link rel="stylesheet" href="/jung/resources/css/mypage.css">
		 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		 
		<script type="text/javascript">
		function del() {
			if (!confirm("예약을 취소하시겠습니까?")) {
				return;
			}		
						
			location.href = "delete.do";
			alert("예약이 취소되었습니다");
						
		}
		</script>
		
		<!-- <script>
		function modify() {
			if (!confirm("수정하시겠습니까?")) {
				return;
			}		
						
			location.href = "modify.do";
			alert("수정이 완료 됐습니다");		
		}
		</script>	 -->
	</head>
	
	<body>
	
		<div class="header">
	        <div class="logo" onclick="location.href='main2.do'">
           		<img src="${pageContext.request.contextPath}/resources/img/2.png">
        	</div>
	     	<div>
	            <ul class="nav">
	                <li>
	                    <img src="${pageContext.request.contextPath}/resources/img/menu.png" alt="">
	                    <ul class="subNav">
	                        <li><a href="#"><strong>메시지</strong></a></li>
	                        <li><a href="#"><strong>여행</strong></a></li>
	                        <li><a href="#"><strong>위시리스트</strong></a></li>
	                        <hr>
	                        <li><a href="#">숙소관리</a></li>
	                        <li><a href="#">체험 호스팅하기</a></li>
	                        <li><a href="#">계정</a></li>
	                        <hr>
	                        <li><a href="#">도움말</a></li>                
	                        <li><a href="#">로그아웃</a></li>                        
	                    </ul>
	                </li>
	            </ul>
	        </div>
    	</div>	<!-- header -->

    	<div class="main">
	        <div class="info">
	            <img src="${pageContext.request.contextPath}/resources/img/pic_update.png" alt="" class="pic" style="width: 150px; margin: 0 auto; display: block;">
	            <img src="${pageContext.request.contextPath}/resources/img/shield.png" alt="" class="shield" style="width: 30px; height: 30px;">
	
	            <h3>본인 인증</h3>
	            <p>
			                본인 인증 배지를 통해 본인 인증을<br>
			                마쳤다는 사실을 다른 사용자에게<br>
			                보여줄 수 있습니다.
	            </p>
	            <input type="button" value="배지 받기" class="getBadge">
	
	            <hr>
	            <p  class="detail">
	                               계정 정보 인증을 통해 더욱 안전한<br>
	                OO커뮤니티를 만들 수 있는<br>
	                                방법에 대해 <a href="#" style="font-weight: bold; text-decoration: underline; display: inline-block;" >자세히 알아보세요.</a>
	            </p>
	        </div>

	        <div class="content">
	            <p style="font-weight: bold; font-size: 30px;">마이페이지</p>
			  
			  	 <hr style="margin: 35px 0;"> 
			  
	      		<button id="con_show">프로필 수정하기</button>
	           	 	<div class="con_background">
                            <div class="con_window">
                                <div class="con_popup" style= "overflow: scroll;">
                                <button id="con_close">
                                    <img src="${pageContext.request.contextPath}/resources/img/close.png">
                                </button> 
		
		
	      	<table class="myReservation">
					<thead>
						<tr>
							<th scope="col" colspan="2">${ cus[0].name }님 환영합니다!</th>
						</tr>
					</thead>
					<tbody>
								<tr>
									<th scope="row">이름</th> <td>${ cus[0].name }</td>							
								</tr>
		
								<tr>
									<th scope="row">아이디</th> <td>${ cus[0].id }</td>							
								</tr>
		
								<tr>
									<th scope="row">전화번호</th> <td>${ cus[0].phoneno }</td>							
								</tr>
		
								<tr>
									<th scope="row">이메일</th> <td>${ cus[0].email }</td>							
								</tr>
								
								<tr>
									<th scope="row">주소</th> <td>${ cus[0].addr }</td>							
								</tr>											
					</tbody>
				</table>
					
						<div>
								<input type="button" class="cancel" value="수정하기" onclick="location.href='change.do'">
						</div>
	      		</div>
                </div>
                    <div>
                          <i class="fas fa-user-circle"></i>
                    </div>
                    
                    </div>
                    
                    <hr style="margin: 35px 0;"> 
                    
                    <button id="show">나의 예약 확인하기</button>  
                    
                    <hr style="margin: 35px 0;">
                    
                    <div>
	            		주거상점 에 오신 것을 환영합니다 !
	            	</div>
                    
                    <div class="additional">
		                <div class="search">
		                    <img src="${pageContext.request.contextPath}/resources/img/magnifier.png" alt="" width="198" height="190">
		                    <div class="caption">
		                        <h3>최고의 상품 검색하기</h3>
		                        <p>검색 전 로그인하여<br> <span style="color: blue; font-weight: bold; font-weight: bold;">시크릿 특가</span>를 확인하세요.</p>
		                    </div>
		                </div>
		
		                <div class="input_info">
		                    <img src="${pageContext.request.contextPath}/resources/img/input.png" alt="" width="198" height="190">
		                    <div class="caption">
		                        <h3>내 정보 입력하기</h3>
		                        <p>
		                            <span style="color: blue; font-weight: bold; font-weight: bold;">맞춤형 추천 정보</span>를<br> 받으실 수 있습니다.
		                        </p>
		                    </div>
		                </div>
		
		                <div class="app">
		                    <img src="${pageContext.request.contextPath}/resources/img/appdownload.png" alt="" width="198" height="190">
		                    <div class="caption">
		                        <h3>앱 다운로드하기</h3>
		                        <p>디지털 예약 확인서로<br> <span style="color: blue; font-weight: bold;">간편하게</span> 예약 정보를 확인하세요.</p>
		                    </div>
		                </div>
            		</div>
            		
            		<hr style="margin-top: 275px;">  
            		
            		<a href="#" style="text-decoration: underline; margin-top: 30px; font-weight: bold; font-size: 16px;">내가 작성한 후기</a>
                    
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
	      		
	            
	                      
	            
	           	 	
	           	 	<div class="background">
                            <div class="window">
                                <div class="popup" style="overflow: scroll;">
                                <button id="close">
                                    <img src="${pageContext.request.contextPath}/resources/img/close.png">
                                </button>
								<div>
		       <%--  <c:forEach var="vo" items="${ list }"> --%>
				<table class="myReservation">
					<thead>
						<tr>
							<th scope="col" colspan="2">나의 예약 내역</th>
						</tr>
					</thead>

					<tbody>
					<%-- 	<c:forEach var="vo" items="${ list }"> --%>
								<tr>
									<th scope="row">예약자명</th> <td>${ list[1].surname }${ list[1].name }</td>							
								</tr>
		
								<tr>
									<th scope="row">숙소명</th> <td>${ list[1].hotelname }</td>							
								</tr>
		
								<tr>
									<th scope="row">숙소 주소</th> <td>${ list[1].hoteladdr }</td>							
								</tr>
		
								<tr>
									<th scope="row">입실 날짜</th> <td>${ list[1].checkin }</td>							
								</tr>
								
								<tr>
									<th scope="row">퇴실 날짜</th> <td>${ list[1].checkout }</td>							
								</tr>							
							<%-- </c:forEach> --%>
					</tbody>
					</table>
						<div>
								<input type="button" class="cancel" value="예약 취소" onclick="del();">
						</div>
				</div>
                </div>
                    <div>
                        <i class="fas fa-user-circle"></i>
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
	
	</body>
</html>
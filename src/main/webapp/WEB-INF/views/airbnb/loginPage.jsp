<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
	<img src="${pageContext.request.contextPath}/resources/img/bg.jpg" class="bg_img1">
	<img src="${pageContext.request.contextPath}/resources/img/bg.webp" class="bg_img2">

	<head>
		<meta charset="UTF-8">
		<title>로그인</title>    
		
		<link rel="stylesheet" href="/jung/resources/css/loginPage.css">
		
		<script src="${ pageContext.request.contextPath }/resources/js/httpRequest.js"></script>
		
		<script type="text/javascript">		
					
		
			function login() {
				var id = document.getElementById("id").value;
				var pwd = document.getElementById("pwd").value;							
				
				if (id == "") {
					alert("아이디를 입력해주세요");
					return;
				}
				
				if (pwd == "") {
					alert("비밀번호를 입력해주세요");
					return;
				}					
				
				var url = "login.do";
				var param = "id=" + id + "&pwd=" + encodeURIComponent(pwd);
				
				sendRequest(url, param, login_resultFn, "GET");
			
			}
			
			function login_resultFn() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					var data = xhr.responseText;
					
					var json = eval(data);
					
					if (json[0].login_result == 'no') {
						alert("아이디 또는 비밀번호가 일치하지 않습니다");
						return;
					}else {
						alert("로그인 성공");						
						location.href='main2.do';
					}
				}
			}
		</script>    	
		
	</head>
	
	<body>
		<div class="header"> <%-- <img src="${pageContext.request.contextPath}/resources/img/1.png"> --%>
	      <div>LOGIN to<img src="${pageContext.request.contextPath}/resources/img/12.png"></div>
	    </div>
		
		<div class="container">

        <div class="login_left"></div>

        <div class="login_right">
        	<div class="main">                
            	<p class="big">Welcome Back</p>
                <p class="small">THE END OF A JOURNEY MEANS THE START OF ANOTHER ONE.<br> Enter your details and start journey with us</P>
               <!--  <P class="small"> Enter your details and start journey with us</P> -->
			<c:choose>
				<c:when test="${sessionScope.loginUser == null }">   
			
                <form class="login_form">                    
                    <ul>
                        <li><input type="text" name="id" autocomplete="off" placeholder="아이디" autofocus class="id_text" id="id"></li>
                        <li><input type="password" name="pwd" placeholder="비밀번호" class="pwd_text" id="pwd"></li>
                        <li><input type="button" value="로 그 인" onclick="login(this.form)" class="btn_login"></li>
                    </ul>                
                </form>
                </c:when>
                <%-- <c:otherwise>
                	<ul>
                		<li>현재 로그인 된 아이디 : ${sessionScope.loginUser.id }</li>
                		<li>현재 로그인 된 이름 : ${sessionScope.loginUser.name }</li>
                		<li>현재 로그인 된 비밀번호 : ${sessionScope.loginUser.pwd }</li>
                	</ul>
                </c:otherwise>  --%>
			</c:choose>
                <div class="find_info">
                    <a href="#" target="_blanck">아이디 찾기</a>
                    <span class="bar">|</span>
                    <a href="#" target="_blanck">비밀번호 찾기</a>                
                </div>
          <%--  <c:if test="${sessionScope.loginUser != null }">
               <div>
                	<a href="${contextPath }/logout.do">
                		로그아웃
                	</a>
                </div>
            </c:if> --%>
            </div>
            
            
            <div class="footer">
                <hr>
                <p>간편하게 시작하기</p> 
                <div class="simple_login">           
                    <button type="button" class="btn_naver"><img src="${pageContext.request.contextPath}/resources/img/btn_naver.png" alt="네이버로 시작하기" width="50px" height="50px"></button>
                    <button type="button" class="btn_kakao"><img src="${pageContext.request.contextPath}/resources/img/btn_kakao.png" alt="카카오로 시작하기" width="50px" height="50px"></button>
                    <button type="button" class="btn_facebook"><img src="${pageContext.request.contextPath}/resources/img/btn_facebook.png" alt="페이스북으로 시작하기" width="50px" height="50px"></button>
                </div>
            </div>

        </div>
    </div>
		
	</body>
</html>
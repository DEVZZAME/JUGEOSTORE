<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>숙소 예약하기</title>
		
		<link rel="stylesheet" href="/jung/resources/css/signUpPage.css">	
		
		<script src="${ pageContext.request.contextPath }/resources/js/httpRequest.js"></script>
		
		<script type="text/javascript">
		
			// 아이디, 이메일 중복체크를 했는지를 확인하는 변수
			var b_idCheck = false;
			var b_emailCheck = false;
		
			// 회원가입
			function signUp(f) {
				
				var id = f.id.value;
				var email = f.email.value;
				var pwd = f.pwd.value;
				var phoneno = f.phoneno.value;
				var name = f.name.value;
				var addr = f.addr.value;				
				
				if (name == "") {
					alert("이름을 입력해주세요");
					return;
				}
				
				if (id == "") {
					alert("아이디를 입력해주세요");
					return;
				}			
				
				if (!b_idCheck) {
					alert("아이디 중복확인을 해주세요");
					return;
				}
				
				if (pwd == "") {
					alert("비밀번호를 입력해주세요");
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
				
				if (email == "") {
					alert("이메일을 입력해주세요");
					return;
				}
				
				var email_pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
				if (!email_pattern.test(email)) {
					alert("올바른 형식으로 입력해주세요");
					return;
				}
				
				if (!b_emailCheck) {
					alert("이메일 중복확인을 해주세요");
					return;
				}			
				
				if (addr == "") {
					alert("주소를 입력해주세요");
					return;
				}
				
				f.action = "insert.do";
				f.method = "POST";
				f.submit();
			}
			
			// 아이디 중복확인 -------------------------------------------
 			function check_id() {
				var id = document.getElementById("id").value;
				
				if (id == "") {
					alert("아이디를 입력해주세요");
					return;
				}
				
				var url = "check_id.do";
				var param = "id=" + id;
				
				sendRequest(url, param, id_resultFn, "GET");
			}
			
			function id_resultFn() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					var data = xhr.responseText;
					
					var json = eval(data);
					
					if (json[0].id_result == 'no') {
						alert("이미 사용중인 아이디입니다");
						return;
					}else{
						alert("사용가능한 아이디입니다");
						b_idCheck = true;
						
						document.getElementById("id").readOnly = true;
					}
				}
			}
			
			// 이메일 중복확인 -------------------------------------------
 			function check_email() {
				var email = document.getElementById("email").value;
				
				if (email == "") {
					alert("이메일을 입력해주세요");
					return;
				}
				
				var url = "check_email.do";
				var param = "email=" + email;
				
				sendRequest(url, param, email_resultFn, "GET");
			}
			
			function email_resultFn() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					var data = xhr.responseText;
					
					var json = eval(data);
					
					if (json[0].email_result == 'no') {
						alert("이미 사용중인 이메일입니다");
						return;
					}else {
						alert("사용가능한 이메일입니다");
						b_emailCheck = true;
						
						document.getElementById("email").readOnly = true;
					}
				}
			}
 			
		</script>
		
		
	</head>
	
	<body class="body">
	<img src="${pageContext.request.contextPath}/resources/img/bg.jpg" class="bg_img1">
	<img src="${pageContext.request.contextPath}/resources/img/bg.webp" class="bg_img2">
	<div class="container">
		
		<div class="signUp_left">
			<div class="border">
				<div class="header">Sign Up</div>
				<div class="header">to</div>
				<div class="image">
					<img src="${pageContext.request.contextPath}/resources/img/1.png">
				</div>
			</div>
		</div>

		<div class="signUp_right">
			<div class="main">
				<p>
					Discover the most<br>amazing places on our planet!
				</p>
				<form>
					<ul>
						<li><input type="text" name="name" autocomplete="off"
							placeholder="이름" autofocus class="name_text"></li>
						<li><input type="text" name="id" autocomplete="off"
							placeholder="아이디" class="id_text" id="id"> <input
							type="button" value="중복확인" onclick="check_id();" class="id_check"></li>
						<li><input type="password" name="pwd" autocomplete="off"
							placeholder="비밀번호" class="pwd_text"></li>
						<li><input type="tel" name="phoneno" autocomplete="off"
							placeholder="ex) 010-0000-0000" class="phoneno_text"></li>
						<li><input type="email" name="email" autocomplete="off"
							placeholder="ex) abc@abc.com" class="email_text" id="email">
							<input type="button" value="중복확인" onclick="check_email()"
							class="email_check"></li>
						<li><input type="text" name="addr" autocomplete="off"
							placeholder="주소" class="addr_text" style="margin-bottom: 40px;"></li>
						<li><input type="button" value="회원가입"
							onclick="signUp(this.form)" class="btn_signUp"
							style="width: 268px; padding: 15px 0;"></li>
					</ul>
				</form>
			</div>
		</div>

	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 수정</title>
<link rel="stylesheet" href="/jung/resources/css/modify.css">
	<script src="${pageContext.request.contextPath}/resources/js/httpRequest.js"></script>
	
	<script>
		function send(f){
			var phoneno = f.phoneno.value.trim();
			var email = f.email.value.trim();
			var addr = f.addr_change.value.trim();
			var pwd = f.pwd.value.trim();
			
			if(phoneno == ''){
				alert("전화번호를 입력하세요");
				return;
			}
			
			if(email == ''){
				alert("이메일주소를 입력하세요");
				return;
			}
			
			if(addr == ''){
				alert("주소를 입력하세요");
				return;
			}
			
			if(pwd == ''){
				alert("비밀번호를 입력하세요");
				return;
			}
			
			var url = "modify.do";
			var param = "idx="+f.idx.value+
						"&phoneno="+encodeURIComponent(phoneno)+"&email="+encodeURIComponent(email)+
						"&addr="+encodeURIComponent(addr)+
						"&pwd="+encodeURIComponent(pwd);
		
			sendRequest(url, param, resultFn, "POST");
		}
		
		function resultFn(){
			
			if(xhr.readyState == 4 && xhr.status == 200){
				
				var data = xhr.responseText;
				
				if(data == 'no'){
					alert("수정실패");
				}else{
					alert("수정성공");
					location.href='myPage.do';
				}
			}
		}
	</script>
</head>
<body>
	<img src="${pageContext.request.contextPath}/resources/img/bg.jpg" class="bg_img1">
	<img src="${pageContext.request.contextPath}/resources/img/bg.webp" class="bg_img2">
    <div class="header">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/img/2.png" alt="주거상점">
        </div>
        <p>Edit My Profile</p>
    </div>


    <div class="wrap">
        <form>
            <input type="hidden" name="idx" value="${cus[0].idx}">

            <div class="container">
                <div>
                    <div class="name_section">
                        <p class="name">이　　　　름</p>
                        <p class="name_input">${ cus[0].name }</p>
                        <div class="name_box">
                            <img src="${pageContext.request.contextPath}/resources/img/locked.png" alt=""
                                class="locked1">
                        </div>
                    </div>

                    <div class="id_section">
                        <p class="id">아　&nbsp이　&nbsp디</p>
                        <p class="id_input">${ cus[0].id }
                            <!-- ${ cus[0].id } -->
                        </p>
                        <div class="id_box">
                            <img src="${pageContext.request.contextPath}/resources/img/locked.png" alt="" class="locked2">
                        </div>
                    </div>
                    <div class="tel_section">
                        <p class="tel">현재전화번호</p>
                        <div class="tel_box">
                            <p class="tel_input">${ cus[0].phoneno }</p>
                        </div>
                    </div>
                    <div class="tel_change_section">
                        <p class="tel_change">변경전화번호</p>
                        <div class="tel_change_box">
                            <input class="tel_change_input" type="tel" name="phoneno" placeholder="ex) 010-0000-0000"
                                autofocus>
                        </div>
                    </div>
                    <div class="email_section">
                        <p class="email">이　&nbsp메　&nbsp일</p>
                        <div class="email_box">
                            <input class="email_input" type="email" name="email" placeholder="ex) abc@abc.com"
                                autofocus>
                        </div>
                    </div>
                    <div class="addr_section">
                        <p class="addr">현&nbsp재&nbsp&nbsp주&nbsp소</p>
                        <div class="addr_box">
                            <p class="addr_input">${ cus[0].addr }</p>
                        </div>
                    </div>
                    <div class="addr_change_section">
                        <p class="addr_change">변&nbsp경&nbsp&nbsp주&nbsp소</p>
                        <div class="addr_change_box">
                            <input class="addr_change_input" type="addr_change" name="addr_change"
                                placeholder="ex) 서울시 서대문구" autofocus>
                        </div>
                    </div>
                    <div class="pwd_section">
                        <p class="pwd">비&nbsp밀&nbsp&nbsp번&nbsp호</p>
                        <div class="pwd_box">
                            <input class="pwd_input" type="password" name="pwd" placeholder="내용을 입력하세요" autofocus>
                        </div>
                    </div>
                    <div class="btn">
                        <input type="button" value="수정하기" class="btn_modify" onclick="send(this.form);">
                        <input type="button" value="돌아가기" class="btn_cancel" onclick="location.href='myPage.do'">
                    </div>
                </div>

            </div>
        </form>
    </div>
</body>

</html>
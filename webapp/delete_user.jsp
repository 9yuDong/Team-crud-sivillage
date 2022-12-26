<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>로그인</title>
        <!-- 폰트어썸 -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- 웹페이지 타이틀 로고 넣기 (PNG 파일로 해야함.) -->
        <link rel="shortcut icon" href="./images/favicon/montblanc_fav32.png">
        <!-- 웹페이지 저장시 아이콘 생성 코드 (PNG 파일로 해야함.) -->
        <link rel="apple-touch-icon=precomposed" href="./images/favicon/montblanc_fav144.png">
        <!-- 리셋 -->
        <link rel="stylesheet" href="./css/reset.css">
        <!-- 폰트 적용 -->
        <link rel="stylesheet" href="./css/notosans_kr_CDN.css">
        <!-- 페이지 CSS -->
        <link rel="stylesheet" href="./css/system_font.css">
        <link rel="stylesheet" href="./css/login.css">
        <link rel="stylesheet" href="./css/wrap.css">
        <link rel="stylesheet" href="./css/header.css">
        <link rel="stylesheet" href="./css/singup.css">
        <link rel="stylesheet" href="./css/footer.css">
        <!-- JS 플러그인 파일 -->
        <script src="./js/jquery-1.12.4.min.js"></script>
        <script src="./js/jquery-3.3.1.min.js"></script>
        <script src="./js/jquery-3.3.1.min.js"></script>
        <script src="./js/singup.js"></script>

        <script src="./js/prefixfree.min.js"></script> <!-- 접두어 자동완성 -->
        <!-- 페이지 JS -->

    </head>
    <style>
    	.id_input, .password_input{
            margin: 0 auto;
    	
    	}
    	.title_p {
            text-align: left;
        } 
        .singup_btn {
            width: 400px;
            margin: 50px auto;

        }
    </style>

    <body>
        <img class="img" src="./images/header_top.jpg" alt="윈터프리퀀시">
        <div id="wrap">
            <header class="header">
                <jsp:include page="/include/header_top.jsp" />
                <jsp:include page="/include/header_bottom.jsp" />
            </header>
			<main>
				<form action="DeleteUserCtrl2" method="post">
					<!-- 아이디 -->
	                <div class="id_input">
	                    <p class="title_p">아이디</p>
	                    <input type="text" name="id" id="id2" placeholder="ID">
	                    <font id="chkNotice2" size="2"></font>
	                </div>
	                <!-- 비밀번호 -->
	                <div class="password_input">
	                    <p class="title_p">비밀번호</p>
	                    <input type="password" id="userPw" class="pw" name="password"
	                        placeholder="숫자, 영문 포함 10자 이상" required>                                                    
	                </div>
					<div class="btn-wrap singup_btn">					
						<button class="btn-vlack btn-box" type="submit">회원탈퇴</button>
	                </div>
                </form>
			</main>
	 		 <script>
	 		 	$("#email3").change(function () {
	                    $("#email2").val($("#email3").val());
	             	});
	 		 </script>

            <footer class="footer">
                <jsp:include page="/include/footer_top.jsp" />
                <jsp:include page="/include/footer_bottom.jsp" />
            </footer>
        </div>
    </body>

    </html>
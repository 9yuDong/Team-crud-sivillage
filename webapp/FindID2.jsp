<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <html lang="ko">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>로그인</title>
                <!-- 폰트어썸 -->
                <link rel="stylesheet"
                    href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
                <link rel="stylesheet" href="./css/find.css">
                <link rel="stylesheet" href="./css/boardList.css">
                <link rel="stylesheet" href="./css/wrap.css">
                <link rel="stylesheet" href="./css/header.css">
                <link rel="stylesheet" href="./css/footer.css">

                <!-- JS 플러그인 파일 -->
                <script src="./js/jquery-1.12.4.min.js"></script>
                <script src="./js/jquery-3.3.1.min.js"></script>
                <script src="./js/prefixfree.min.js"></script> <!-- 접두어 자동완성 -->
                <!-- 페이지 JS -->


            </head>

            <body>
                <jsp:include page="/include/popup.jsp" />
                <div class="header_banner">
                    <div class="header">
                        <header class="w1440">
                            <jsp:include page="/include/header_top.jsp" />
                            <jsp:include page="/include/header_bottom.jsp" />
                        </header>
                    </div>
                </div>
                <div id="wrap">
                    <div class="responsive_wrap">
                        <div class="responsive_inner">
                            <div class="title">아이디 찾기 결과</div>
                            <div class="login__wrap">
                                <div class="login__form">
                                    <form class="loginForm" action="findid" method="post">
                                        <c:if test="${id!=null }">
                                            <div class="login__form-input">


                                                <div class="title">${id }</div>
                                            </div>

                                            <div class="login__form-wrap">
                                                <button class="btn-vlack btn-box " type="button"><a href="login.jsp" style="color: white;">로그인</a></button>
                                            </div>
                                        </c:if>
                                        <c:if test="${id==null }">
                                           
											<div class="title2">입력정보와 일치하는 회원정보가 없습니다.	</div>
												
                               

                                            <div class="login__form-wrap">
                                                <button class="btn-vlack btn-box " type="button"><a href="FindID.jsp" style="color: white;">다시
                                                        찾기</a></button>
                                            </div>
                                        </c:if>


                                        <div class="singup_wrap">


                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="footer">
                    <div class="footer_tel">
                        <jsp:include page="/include/footer_top.jsp" />
                    </div>
                    <div class="footer_info">
                        <jsp:include page="/include/footer_bottom.jsp" />
                    </div>
                </div>
            </body>

            </html>
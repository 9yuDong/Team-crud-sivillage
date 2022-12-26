<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <link rel="stylesheet" href="./css/boardList.css">
        <!-- JS 플러그인 파일 -->
        <script src="./js/jquery-1.12.4.min.js"></script>
        <script src="./js/jquery-3.3.1.min.js"></script>
        <script src="./js/jquery-3.3.1.min.js"></script>
        <script src="./js/singup.js"></script>

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
            <div id="wrap">
                <div id="wrap_content">
                    <div class="responsive_wrap">
                        <form action="JoinUserCtrl" method="post" onsubmit="return doAction();">
                            <div class="responsive_inner">
                                <div class="join__sign-up-simple">
                                    <div class="title">온라인 간편가입</div>
                                    <!-- 필수항목 -->
                                    <div class="title_h1">
                                        <strong>필수항목</strong>
                                    </div>
                                    <div class="join_wrap">
                                        <div class="join__sign-up-simple-form">
                                            <div class="list-form__item">
                                                <!-- 이메일 아이디 -->

                                                <div class="id_input">
                                                    <p class="title_p">E-mail</p>
                                                    <input type="email" name="email" id="id2">
                                                    <font id="chkNoticeMail" size="2"></font>
                                                </div>
                                                <!-- 아이디 -->
                                                <div class="id_input">
                                                    <p class="title_p">아이디</p>
                                                    <input type="text" name="id" id="id2">
                                                    <font id="chkNotice2" size="2"></font>
                                                </div>
                                                <!-- 비밀번호 -->
                                                <div class="password_input">
                                                    <p class="title_p">비밀번호</p>
                                                    <input type="password" id="userPw" class="pw" name="password"
                                                        placeholder="숫자, 영문 포함 10자 이상" required>
                                                </div>
                                                <!-- 비밀번호 확인 -->
                                                <div class="password_input">
                                                    <p class="title_p">비밀번호 확인</p>
                                                    <input type="password" id="userPwChk" name="password2" class="pwchk"
                                                        placeholder="숫자, 영문 포함 10자 이상" required>
                                                    <font id="chkNotice" size="2"></font>
                                                </div>
                                                <!-- 성명 -->
                                                <div class="password_input">
                                                    <p class="title_p">이름</p>
                                                    <input type="text" name="name" id="name_ch" required>
                                                    <font id="chkNotice3" size="2"></font>
                                                </div>

                                                <div class="number_box">
                                                    <p class="title_p">휴대폰번호</p>
                                                    <input type="text" name="tel" class="number_input" id="tel_ch"
                                                        required>
                                                    <font id="chkNoticeNum" size="2"></font>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 선택항목  -->
                                    <div class="title_h2">
                                        <strong>선택항목</strong>
                                    </div>
                                    <!-- 생년월일 -->
                                    <div class="birth">
                                        <p class="title_p">생년월일</p>
                                        <input type="date" name="bday" id="bday_ch" required>
                                        <font id="chkNoticeBday" size="2"></font>
                                    </div>
                                    <!-- 주소 -->
                                    <div class="address_input">
                                        <p class="title_p">주소</p>
                                        <input type="text" name="address" placeholder="주소를 입력해주세요" id="address_ch">
                                        <font id="chkNoticeAdd" size="2"></font>
                                        <p><span>회원 및 배송지 주소로 설정됩니다.</span></p>
                                    </div>
                                    <div class="marketing-consent">
                                        <p class="subheading">마케팅정보 수신동의</p>

                                        <p class="marketing-consent-notice">
                                            수신 미동의 시 신세계인터내셔날에서 진행하는 이벤트 및 할인, 인기/신상품 등의 정보를 받아보실 수 없으며, 이벤트 및 추가 혜택 제공
                                            대상에서
                                            제외될 수
                                            있습니다.
                                        </p>
                                        <p class="desc-item">
                                            회원가입/구매/회사의 주요정책 관련 정보는 수신동의와 관계없이
                                            모든 회원에게 발송됩니다.
                                        </p>
                                        <div class="list-checkbox">
                                            <ul>
                                                <li>
                                                    <label class="checkbox__label">
                                                        <input type="checkbox" id="box1" onclick='selectAll(this)'>
                                                        <span>전체수신</span>
                                                    </label>
                                                </li>
                                                <div class="flex_ul">
                                                    <li>
                                                        <label class="checkbox__label">
                                                            <input type="checkbox" name="agree" value="SMS">
                                                            <span>SMS</span>
                                                        </label>
                                                    </li>

                                                    <li>
                                                        <label class="checkbox__label">
                                                            <input type="checkbox" name="agree" value="E-mail">
                                                            <span>E-mail</span>
                                                        </label>
                                                    </li>
                                                </div>

                                                <div class="flex_ul2">
                                                    <li>
                                                        <label class="checkbox__label">
                                                            <input type="checkbox" name="agree" value="DM(카탈로그)">
                                                            <span>DM(카탈로그)</span>
                                                        </label>
                                                    </li>

                                                    <li>
                                                        <label class="checkbox__label">
                                                            <input type="checkbox" name="agree" value="CALL">
                                                            <span>CALL</span>
                                                        </label>
                                                    </li>
                                                </div>
                                                <br>
                                        </div>

                                    </div>
                                    <div class="btn-wrap singup_btn">
                                        <button class="btn-vlack btn-box" type="submit">가입 완료</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <script>$("#email3").change(function () {
                    $("#email2").val($("#email3").val());
                });</script>
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
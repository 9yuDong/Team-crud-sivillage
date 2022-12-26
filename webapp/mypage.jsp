<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!-- 황규동 추가 -->
        <c:set var="name" value="${name}" />
        <c:if test="${name==null}">
            <c:redirect url="login.jsp" />
        </c:if>
        <!DOCTYPE html>
        <html lang="ko">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="portfolio, Float, Montblanc template">
            <title>마이페이지</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
            <!-- JS 플러그인 파일 -->
            <script src="./js/jquery-1.12.4.min.js"></script>
            <script src="./js/jquery-3.3.1.min.js"></script>
            <!-- prefix 자동설정 -->
            <script src="./js/prefixfree.min.js"></script>
            <!-- 기본 코딩 파일 -->
            <link rel="stylesheet" href="./css/sireset.css">
            <link rel="stylesheet" href="./css/reset.css">
            <link rel="stylesheet" href="./css/notosans_kr_CDN.css">
            <link rel="stylesheet" href="./css/font.css">
            <link rel="stylesheet" href="./css/mypage33.css">
            <link rel="stylesheet" href="./css/boardList.css">
            <link rel="stylesheet" href="./css/header.css">
            <link rel="stylesheet" href="./css/footer.css">
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
                <!-- 상단 -->


                <!-- 왼쪽 마이페이지 메뉴  -->
                <main role="main cf">
                    <div class="pc-wrap cf">
                        <section class="top_ban_point cf">
                            <div class="top_ban">
                                <div class="top_cen">
                                    <aside>
                                        <img src="./images/icon/mypage_badge_family.png" alt="등급아이콘">
                                        <p class="grade">FAMILY</p>
                                        <p class="name">
                                            <strong>${name }</strong>
                                            <button class="btn-arrow">다음달 예상 등급 ></button>
                                        </p>
                                    </aside>
                                </div>
                                <div class="p_list cf">
                                    <div class="point">
                                        <ul class="info-point">
                                            <li><span class="p">S.I.포인트</span> <em class="w"><a href="#">0</a>P</em>
                                            </li>
                                            <li><span class="p">e포인트</span> <em class="w"><a href="#">0</a>P</em></li>
                                            <li><span class="p">쿠폰</span> <em class="w"><a href="#">0</a>장</em></li>
                                            <li><span class="p">리뷰</span> <em class="w"><a href="#">0</a>개</em></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </section>
                        <section id="nav">
                            <nav class="mypage-lnb__set">
                                <h1 class="mypage-lnb__title">
                                    <strong>마이페이지</strong>
                                </h1>
                                <div class="menu">
                                    <p class="menu-title onon">나의 쇼핑정보</p>
                                    <ul>
                                        <li class="on"><a href="#">주문/배송 조회</a></li>
                                        <li><a href="#">취소/반품/교환 조회</a></li>
                                        <li><a href="#">증빙서류 발급</a></li>
                                        <li><a href="#">선물함</a></li>
                                    </ul>
                                </div>
                                <div class="menu">
                                    <p class="menu-title">나의 혜택정보</p>
                                    <ul>
                                        <li><a href="#">S.I.포인트 내역</a></li>
                                        <li><a href="#">e포인트 내역</a></li>
                                        <li><a href="#">쿠폰 내역</a></li>
                                    </ul>
                                </div>
                                <div class="menu">
                                    <p class="menu-title">나의 활동정보</p>
                                    <ul>
                                        <li><a href="#">상품리뷰</a></li>
                                        <li><a href="#">상품문의</a></li>
                                    </ul>
                                </div>
                                <div class="menu">
                                    <p class="menu-title">나의 관심정보</p>
                                    <ul>
                                        <li><a href="#">찜</a></li>
                                    </ul>
                                </div>
                                <div class="menu">
                                    <p class="menu-title">나의 정보 관리</p>
                                    <ul>
                                        <li><a href="#">개인정보 수정</a></li>
                                        <li><a href="#">비밀번호 변경</a></li>
                                        <li><a href="#">SNS 연결 관리</a></li>
                                        <li><a href="#">배송지/환불계좌 관리</a></li>
                                        <li><a href="delete_user.jsp">회원탈퇴</a></li>
                                    </ul>
                                </div>
                                <div class="shinsegae">
                                    <p>
                                        <a code="membershipInfo" href="#">신세계인터내셔날 <br>멤버십 안내</a>
                                    </p>
                                </div>
                            </nav>
                        </section>

                        <!-- 주문/배송 조회 -->
                        <section id="content_contactus">
                            <h2 class="page_title">주문/배송 조회</h2>
                            <div class="searchForm cf">
                                <form class="search" method="post">
                                    <input type="hidden" name="page_idx" value="1">
                                    <input type="hidden" value="month" name="date_divi_tp">
                                    <input type="hidden" value="1" name="date_divi">
                                    <input type="hidden" value="2022.11.05" name="date_start">
                                    <input type="hidden" value="2022.12.05" name="date_end">
                                </form>
                            </div>
                            <div class="mypage_search_content">
                                <input type="hidden" id="date_divi" value="1">
                                <input type="hidden" id="date_divi_tp" value="month">
                                <div class="search">
                                    <span>기간 조회</span>
                                    <div class="search_btn">
                                        <input type="radio" id="aa0" name="selPeriod" value="1개월" data-type="month"
                                            data-val="1" checked="checked">
                                        <label for="aa0">
                                            <span>1개월</span>
                                        </label>

                                        <input type="radio" id="aa1" name="selPeriod" value="3개월" data-type="month"
                                            data-val="3">
                                        <label for="aa1">
                                            <span>3개월</span>
                                        </label>

                                        <input type="radio" id="aa2" name="selPeriod" value="6개월" data-type="month"
                                            data-val="6">
                                        <label for="aa2">
                                            <span>6개월</span>
                                        </label>
                                    </div>

                                </div>
                                <div class="searchcal cf">
                                    <input type="month" class="form_input" name="input-month" id="monthSearch">
                                    <span>-</span>
                                    <input type="month" class="form_input" name="input-month" id="monthSearch">
                                    <input type="submit" class="form_input btnSearch" value="조회">
                                </div>
                            </div>
                            <div class="info">
                                <ul class="tx_l">
                                    <li>- 최대 6개월 단위로 조회 가능합니다.</li>
                                </ul>
                                <p class="tx_ct">
                                    주문/배송 내역이 없습니다.
                                </p>
                            </div>
                            <!-- 주문/배송 단계 안내 -->
                            <article class="shop_step">
                                <h3 class="section-title">주문/배송 단계 안내</h3>
                                <div class="shop_step_imgbox">
                                    <ul class="show_step_list">
                                        <li class="show_step_list_icon">
                                            <div class="show_step_list_num">
                                                <img src="./images/icon/mypage_delivery_deposit.svg" alt="입금대기">
                                                <p>입금대기</p>
                                            </div>
                                        </li>
                                        <li class="show_step_list_icon">
                                            <div class="show_step_list_icon_num">
                                                <img src="./images/icon/mypage-thin-arrow-right-gray.svg" alt="화살표">
                                            </div>
                                        </li>
                                        <li class="show_step_list_icon">
                                            <div class="show_step_list_num">
                                                <img src="./images/icon/mypage_delivery_payment.svg" alt="결제완료">
                                                <p>결제완료</p>
                                            </div>
                                        </li>
                                        <li class="show_step_list_icon">
                                            <div class="show_step_list_icon_num">
                                                <img src="./images/icon/mypage-thin-arrow-right-gray.svg" alt="화살표">
                                            </div>
                                        </li>
                                        <li class="show_step_list_icon">
                                            <div class="show_step_list_num">
                                                <img src="./images/icon/mypage_delivery_box.svg" alt="상품준비">
                                                <p>상품준비중</p>
                                            </div>
                                        </li>
                                        <li class="show_step_list_icon">
                                            <div class="show_step_list_icon_num">
                                                <img src="./images/icon/mypage-thin-arrow-right-gray.svg" alt="화살표">
                                            </div>
                                        </li>
                                        <li class="show_step_list_icon">
                                            <div class="show_step_list_num">
                                                <img src="./images/icon/mypage_delivery_cart.svg" alt="배송준비">
                                                <p>배송준비중</p>
                                            </div>
                                        </li>
                                        <li class="show_step_list_icon">
                                            <div class="show_step_list_icon_num">
                                                <img src="./images/icon/mypage-thin-arrow-right-gray.svg" alt="화살표">
                                            </div>
                                        </li>
                                        <li class="show_step_list_icon">
                                            <div class="show_step_list_num">
                                                <img src="./images/icon/mypage_delivery_truck.svg" alt="배송중">
                                                <p>배송중</p>
                                            </div>
                                        </li>
                                        <li class="show_step_list_icon">
                                            <div class="show_step_list_icon_num">
                                                <img src="./images/icon/mypage-thin-arrow-right-gray.svg" alt="화살표">
                                            </div>
                                        </li>
                                        <li class="show_step_list_icon">
                                            <div class="show_step_list_num">
                                                <img src="./images/icon/mypage_delivery_complete.svg" alt="배송완료">
                                                <p>배송완료</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>


                                <ul class="mypage-shopping__step-wrap">
                                    <li class="mypage-shopping__step-item-2">
                                        <p class="mypage-shopping__step-step">STEP 01.</p>
                                        <div class="mypage-shopping__step-wrap-2">
                                            <p class="mypage-shopping__step-title-2">입금대기</p>
                                            <div>
                                                <p class="mypage-shopping__step-description">주문이 정상적으로 접수되었으니,<br> 입금기한
                                                    내에 결제를 완료해 주세요.</p>
                                                <ul class="siv-bullet siv-bullet--gray">
                                                    <li>배송지 변경 가능</li>
                                                    <li>주문취소 가능</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="mypage-shopping__step-item-2">
                                        <p class="mypage-shopping__step-step">STEP 02.</p>
                                        <div class="mypage-shopping__step-wrap-2">
                                            <p class="mypage-shopping__step-title-2">결제완료</p>
                                            <div>
                                                <p class="mypage-shopping__step-description">주문 접수 및 결제가 완료되었습니다.</p>
                                                <ul class="siv-bullet siv-bullet--gray">
                                                    <li>배송지 변경 가능</li>
                                                    <li>주문취소 가능</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="mypage-shopping__step-item-2">
                                        <p class="mypage-shopping__step-step">STEP 03.</p>
                                        <div class="mypage-shopping__step-wrap-2">
                                            <p class="mypage-shopping__step-title-2">상품준비중</p>
                                            <div>
                                                <p class="mypage-shopping__step-description">주문상품을 확인하고 있습니다.<br> 배송 지연
                                                    및 품절이 발생할 수 있습니다.</p>
                                                <ul class="siv-bullet siv-bullet--gray">
                                                    <li>배송지 변경 가능</li>
                                                    <li>주문취소 가능</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="mypage-shopping__step-item-2">
                                        <p class="mypage-shopping__step-step">STEP 04.</p>
                                        <div class="mypage-shopping__step-wrap-2">
                                            <p class="mypage-shopping__step-title-2">배송준비중</p>
                                            <div>
                                                <p class="mypage-shopping__step-description">상품의 배송을 준비하는 중입니다.<br> 배송
                                                    지연 및 품절이 발생할 수 있습니다.</p>
                                                <ul class="siv-bullet siv-bullet--gray">
                                                    <li>고객센터를 통한 주문취소 가능</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="mypage-shopping__step-item-2">
                                        <p class="mypage-shopping__step-step">STEP 05.</p>
                                        <div class="mypage-shopping__step-wrap-2">
                                            <p class="mypage-shopping__step-title-2">배송중</p>
                                            <div>
                                                <p class="mypage-shopping__step-description">택배사로 상품이 전달되어<br> 배송이
                                                    시작되었습니다.</p>
                                                <ul class="siv-bullet siv-bullet--gray">
                                                    <li>교환신청 가능</li>
                                                    <li>반품신청 가능</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="mypage-shopping__step-item-2">
                                        <p class="mypage-shopping__step-step">STEP 06.</p>
                                        <div class="mypage-shopping__step-wrap-2">
                                            <p class="mypage-shopping__step-title-2">배송완료</p>
                                            <div>
                                                <p class="mypage-shopping__step-description">고객님께서 상품을 안전하게 받으셔서<br> 배송이
                                                    완료된 상태입니다.</p>
                                                <ul class="siv-bullet siv-bullet--gray">
                                                    <li>교환신청 가능</li>
                                                    <li>반품신청 가능</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </article>
                        </section>
                    </div>
                </main>
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
        
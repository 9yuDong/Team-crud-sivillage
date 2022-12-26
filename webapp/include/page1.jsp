<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="page1">

                <!-- A. 스와이퍼 최상위 구조 클래스 -->
                <div class="swiper-container">
                    <!-- B. 스와이퍼 될 Contents 부모 클래스 -->
                    <div class="swiper-wrapper">
                        <!-- C-1. 스와이퍼 될 Slider 각각 내용들 -->
                        <div class="swiper-slide slide1">
                            <h2>장갑, 모자, 스카프<br>선물의 정석</h2>
                            <div class="p_mockup">
                                <img src="./images/img_bxSlider/모자.jpg" alt="목업이미지600x500" width="600" height="614">
                            </div>
                        </div>
                        <!-- /C-2. 스와이퍼 될 Slider 각각 내용들 -->
                        <!-- C-1. 스와이퍼 될 Slider 각각 내용들 -->
                        <div class="swiper-slide slide2">       
                            <h2>피부미인이 되고싶다면<br>지금 클릭!</h2>                                                 
                            <div class="p_mockup">
                                <img src="./images/img_bxSlider/얼굴.jpg" alt="목업이미지600x500" width="600" height="614">
                            </div>    
                        </div>
                        <!-- /C-2. 스와이퍼 될 Slider 각각 내용들 -->
                        <!-- C-1. 스와이퍼 될 Slider 각각 내용들 -->
                        <div class="swiper-slide slide3">
                            <h2>올 겨울 신개념<br>겨울나기</h2> 
                            <div class="p_mockup">
                                <img src="./images/img_bxSlider/상자.jpg" alt="목업이미지600x500" width="600" height="614">
                            </div>
                        </div>
                        <!-- /C-2. 스와이퍼 될 Slider 각각 내용들 -->        
                    </div>
                    <!-- /B. 스와이퍼 될 Contents 부모 클래스 -->

                    <!-- E. 스와이퍼 좌우 화살표 -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <!-- /E. 스와이퍼 좌우 화살표 -->
                </div>

        </section>
        <!-- 제이쿼리 플러그인 추가 -->
<script src="./js/swiper-bundle.js"></script>
<!-- 본인 사이트에 맞게 속성값 변경 -->
<script src="./js/swiperCustom.js"></script>
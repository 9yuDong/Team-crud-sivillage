<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="apple-touch-icon=precomposed" href="./favicon/favicon.ico">
	<link rel="shortcut icon" href="./favicon/favicon.ico">
	<!-- css -->
	<link rel="stylesheet" href="./css/reset.css">
	<link rel="stylesheet" href="./css/page2.css">
	<link rel="stylesheet" href="./css/header.css">
	<link rel="stylesheet" href="./css/footer.css">
	<!-- 스와이퍼 CSS -->
	<link rel="stylesheet" href="./css/swiper-bundle.css">
	<link rel="stylesheet" href="./css/swiper.css">
    <!-- js플러그인 파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/header.js"></script>
	<title>상품페이지 2</title>
<style>
      header {
         background-color: #fff; 
      }
      .popup_img{
         width:100%;
      }
      .popupclosebox {
         position:absolute;
         border: 1px solid white;
         top:25px;
         left:1420px;
         width:25px;
         height:25px;
         background-color:block;
         cursor: pointer;
      }
      .popupclosebox span {
         display:block;
         position:absolute;
         left:50%;
         top:50%;
         height:2px;
         width:24px;
         background-color: white;
         opacity:  1;
      }
      .popupclosebox span:nth-child(1) {
         transform: translate(-50%,-50%) rotate(45deg);
      }
      .popupclosebox span:nth-child(2) {
         transform: translate(-50%,-50%) rotate(-45deg);
      }
      #wrap {
/*          display:none; */
      }
   </style>
</head>
<body>
   <section class="popup">
      <img class="popup_img" src="./images/header_top.jpg" alt="윈터프리퀀시">
      <div class="popupclosebox" onclick="popupclose()">
         <span></span>
         <span></span>
      </div>
   </section>
   <script>
      function popupclose(){
         document.querySelector('.popup').style.display = "none";
      }
   </script>
       <header class="header">
            <jsp:include page="/include/header_top.jsp"/>
            <jsp:include page="/include/header_bottom.jsp"/>
        </header>
    <div id="wrap">
        <main>
           <jsp:include page="/include/page1.jsp"/>
           <jsp:include page="/include/page2.jsp"/>
           <jsp:include page="/include/page3.jsp"/>
           <jsp:include page="/include/page4.jsp"/>
        </main>
    </div>
        <footer class="footer">
            <jsp:include page="/include/footer_top.jsp"/>
            <jsp:include page="/include/footer_bottom.jsp"/>
        </footer>
	<!-- 제이쿼리 플러그인 추가 -->
	<script src="./js/swiper-bundle.js"></script>
	<!-- 본인 사이트에 맞게 속성값 변경 -->
	<script src="./js/swiperCustom.js"></script>
</body>
</html>

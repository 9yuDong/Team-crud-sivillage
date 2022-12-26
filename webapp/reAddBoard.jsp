<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
         <!DOCTYPE html>
         <html lang="en">

         <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>문의내역확인</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
            <link rel="stylesheet" href="./css/reset.css">
            <!-- 페이지 CSS 파일 -->
            <link rel="stylesheet" href="./css/header.css">
            <link rel="stylesheet" href="./css/footer.css">
            <link rel="stylesheet" href="./css/popup.css">
            <link rel="stylesheet" href="./css/boardList.css">
            <!-- JS 플러그인 파일 -->
            <script src="./js/jquery-1.12.4.min.js"></script>
            <script src="./js/jquery-3.3.1.min.js"></script>
            <script src="./js/prefixfree.min.js"></script>
            <!-- 페이지 JS 파일 -->
            <script src="./js/boardList.js"></script>
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
            <div id="container">
               <div class="customer_snb">
                  <ul>
                     <li>
                        <h2>고객센터</h2>
                     </li>
                     <li><a href="#">고객센터 메인</a></li>
                     <li><a href="#">1:1 문의작성</a></li>
                     <li><a href="#">1:1 문의내역</a></li>
                     <li><a href="#">쇼핑가이드</a></li>
                     <li><a href="#">매장안내</a></li>
                     <li><a href="#">공지사항</a></li>
                     <li><a href="#">자주 찾는 질문</a></li>
                  </ul>
               </div>
               <form method="post" action="ReAddBoardCtrl2.do">
                  <div class="customer_right">
                     <div class="customer_list_board">
                        <div class="lower_box">
                           <div class="customer_select_box">
                              <p>1:1 문의내역 입니다</p>
                           </div>
                           <div class="customer_inquiry">
                              <div class="customer_ask">
                                 <p>
                                    답변완료
                                 </p>
                                 <div class="ans_box">
                                    <div>
                                       <input type="text" name="type" value="${bean.type }" />
                                       <input type="text" name="title" value="${bean.title } 답변  " />
                                    </div>
                                 </div>
                                 <p>
                                    <textarea name="content" cols="30" rows="10"></textarea>
                                 </p>
                                 <div class="date">
                                    ${bean.regdate }
                                 </div>
                                 <input type="hidden" name="ref" value="${ref }">
                                 <input type="hidden" name="re_step" value="${re_step }">
                                 <input type="hidden" name="re_level" value="${re_level }">
                                 <input type="submit" value="답글쓰기"> &nbsp;&nbsp;
                              </div>
                           </div>
                        </div>
                        <div class="lower_box">
                           <div class="customer_inquiry">
                              <div class="ans_box">
                                 <div class="customer_ask2">
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </form>
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
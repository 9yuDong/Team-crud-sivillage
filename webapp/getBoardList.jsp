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
                     <li><a href="addBoard.jsp">1:1 문의작성</a></li>
                     <li><a href="GetBoardListCtrl">1:1 문의내역</a></li>
                     <li><a href="#">쇼핑가이드</a></li>
                     <li><a href="#">매장안내</a></li>
                     <li><a href="#">공지사항</a></li>
                     <li><a href="#">자주 찾는 질문</a></li>
                  </ul>
               </div>
               <div class="customer_right">
                  <div class="customer_upper_box">
                     <button onclick="location.href='addBoard.jsp'" class="customer_btn">
                        <img src="./images/customer_service_pencil.png" alt="펜슬이미지">
                        <span>1:1 문의작성</span>
                     </button>
                  </div>
                  <div class="customer_list_board">
                     <div class="lower_box">
                        <div class="customer_select_box">
                           <p>1:1 문의내역 입니다</p>
                           <select name="month">
                              <option value="1개월">1개월</option>
                              <option value="2개월">2개월</option>
                              <option value="3개월">3개월</option>
                           </select>
                        </div>
                        <c:set var="pageSize" value="${pageSize }" />
                        <c:set var="count" value="${count }" />
                        <c:set var="currentPage" value="${currentPage }" />
                        <c:forEach var="list" items="${list }" varStatus="status">
                           <div class="customer_inquiry">
                              <div class="customer_ask">
                                 <c:if test="${list.re_step == 1}">
                                    <p>
                                       답변요청
                                    </p>
                                 </c:if>
                                 <c:if test="${list.re_step != 1}">
                                    <p style="color:#000;">
                                       답변완료
                                    </p>
                                 </c:if>
                                 <c:if test="${list.re_step>1 }">
                                    <c:forEach var="j" begin="1" end="${(list.re_step-1)*5 }" step="1">
                                       &nbsp;&nbsp;
                                    </c:forEach>
                                 </c:if>
                                 <div class="ans_box">
                                    <c:if test="${list.re_step == 1}">
                                       <a>
                                          <span>[${list.type }]</span> ${list.title }
                                       </a>
                                    </c:if>
                                    <c:if test="${list.re_step != 1}">
                                       <a>
                                          <span>[${list.type }]</span> ${list.title }
                                       </a>
                                    </c:if>
                                    <img src="./images/icon_arrow_down_thin.svg" alt="화살표">
                                 </div>
                                 <div class="date">
                                    ${list.regdate }
                                 </div>
                              </div>
                              <div class="customer_ask2">
                                 <c:if test="${list.re_step == 1}">
                                    <p>
                                       <b>Q</b> ${list.content }
                                    </p>
                                 </c:if>
                                 <c:if test="${list.re_step != 1}">
                                    <p>
                                       <b>A</b> ${list.content }
                                    </p>
                                 </c:if>
                                 <div class="customer_input">
                                    <c:if test="${role=='admin' }"> 
                                       <input type="button" value="댓글"
                                          onclick='location.href="ReAddBoardCtrl.do?num=${list.seq}&ref=${list.ref}&re_step=${list.re_step }&re_level=${list.re_level}"'>
                                       </c:if> 
                                          <input type="button" value="수정"
                                             onclick='location.href="UpdateBoardProCtrl.do?num=${list.seq }"'>
                                          <a href="DeleteBoardCtrl.do?num=${list.seq }"
                                             onclick="alert('삭제하시겠습니까?')"><input type="button" value="삭제"></a>
                                 </div>
                              </div>
                           </div>
                        </c:forEach>
                     </div>
                  </div>
                  <p class="pageNum">
                     <c:if test="${count>0 }">
                        <c:set var="pageCount" value="${count / pageSize + (count%pageSize == 0?0:1) }" />
                        <c:set var="startPage" value="${1 }" />
                        <c:if test="${currentPage%10 !=0 }">
                           <fmt:parseNumber var="result" value="${currentPage/10 }" integerOnly="true" />
                           <c:set var="startPage" value="${result*10+1 }" />
                        </c:if>
                        <c:if test="${currentPage%10 ==0 }">
                           <c:set var="startPage" value="${(result-1)*10+1 }" />
                        </c:if>
                        <c:set var="pageBlock" value="${10 }" />
                        <c:set var="endPage" value="${startPage+pageBlock-1 }" />

                        <c:if test="${endPage>pageCount }">
                           <c:set var="endPage" value="${pageCount }" />
                        </c:if>
                        <c:if test="${startPage>10 }">
                           <a href="GetBoardListCtrl?pageNum=${startPage-10 }">[이전]</a>
                        </c:if>
                        <c:forEach var="i" begin="${startPage }" end="${endPage}">
                           <a href="GetBoardListCtrl?pageNum=${i }">[${i }]</a>
                        </c:forEach>
                        <c:if test="${endPage<pageCount }">
                           <a href="GetBoardListCtrl?pageNum=${startPage+10 }">[다음]</a>
                        </c:if>
                     </c:if>
                  </p>
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
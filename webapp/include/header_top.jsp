<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
         <div class="header_top">
                <h1 class="logo">
                    <a href="index.jsp">
                        <img src="./icon/siv_logo.svg" alt="logo">
                    </a>
                </h1>
                <div class="search">
                    <input type="text" placeholder="매일 출석체크 해택 모으기">
                    <a href="#"><img src="./icon/ico_search.svg" alt="검색"></a>
                </div>
                <div class="icon">
                    <ul>
                     <c:if test="${empty name }">
                        <li>
                            <a href="LoginCtrl">
                                <img src="./icon/ico_login.svg" alt="로그인">
                                <p>로그인</p>
                            </a>
                        </li>
                         </c:if>
                        <c:if test="${not empty name }">
                        <li>
                            <a href="LogoutCtrl">
                                <img src="./icon/ico_logout.svg" alt="로그아웃">
                                <p>로그아웃</p>
                            </a>
                        </li> 
                       </c:if>                       
                        <li>
                            <a href="addBoard.jsp">
                                <img src="./icon/ico_customer_center.svg" alt="고객센터">
                                <p>고객센터</p>
                            </a>
                        </li>
                        <li>
                            <a href="mypage.jsp">
                                <img src="./icon/ico_mypage.svg" alt="마이페이지">
                                <p>마이페이지</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="./icon/ico_recent_item.svg" alt="최근본상품">
                                <p>최근본상품</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="./icon/ico_shopping_bag.svg" alt="쇼핑백">
                                <p>쇼핑백</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
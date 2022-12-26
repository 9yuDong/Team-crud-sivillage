<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String home = request.getContextPath();
%>
 
	<section id="content_main_customer">
		<article class="box1">
			<a href="<%=home %>/addBoard.jsp?content=/include/main_contentcontactus.jsp">
				<div class="link_addboard">
					<img src="<%=home %>/icon/customer_service_pencil.png" alt="연필아이콘" />1:1문의하기
				</div>
			</a>
			<a href="#">
				<div class="link_kakaoboard">
					<img src="<%=home %>/icon/05Icon32PxSnsKakaotalkB_3x.png" alt="카카오아이콘" />카카오톡 상담하기
				</div>
			</a>
		</article>
		<article class="box2">
			<div>
				<h2>S.I VILLAGE 고객센터(유료) <span><u>1644-4490</u></span></h2> 
				<p>월~금 09:00~18:00 (점심시간 12:00~13:00) 주말/공휴일 휴무</p>
			</div>
		</article>
		<article class="box3">
			<section class="gridbox">
				<div>
					1:1 문의내역 확인
				</div>
				<div>
					쇼핑가이드
				</div>
				<div>
					매장안내
				</div>
				<div>
					공지사항
				</div>
			</section>				
		</article>	
		<article class="box4">
			<div>
				<p>[공지] 개인정보처리방침 개정 안내입니다. (2022년 12월 14일)</p>
				<p>산타마리아 노벨라 일부 상품 배송일정 관련 안내사항</p>
			</div>
		</article>
	</section>
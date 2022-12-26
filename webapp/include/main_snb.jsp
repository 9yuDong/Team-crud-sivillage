<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String home = request.getContextPath();
%>
			<section id="SNB">				
				<p>고객센터</p>
				<ul>
					<li>
						<a href="<%=home %>/addBoard.jsp?content=/include/main_customer.jsp">
							<b>
							고객센터 메인
							<b>
						</a>
					</li>
					<li>
						<a href="<%=home %>/addBoard.jsp?content=/include/main_contentcontactus.jsp">
							<b>
								1:1 문의작성
							</b>
						</a>
					</li>
					<li>
						<a href="<%=home %>/GetBoardListCtrl?content=/include/main_contentcontactus.jsp">
							1:1 문의내역
						</a>
					</li>
					<li>쇼핑가이드</li>
					<li>매장안내</li>
					<li>공지사항</li>
					<li>자주 찾는 질문</li>
				</ul>
			</section>
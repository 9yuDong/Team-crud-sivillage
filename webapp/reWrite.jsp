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
				<link rel="stylesheet"
					href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
				<link rel="stylesheet" href="./css/reset.css">
				<!-- 페이지 CSS 파일 -->
				<link rel="stylesheet" href="./css/boardList.css">
				<link rel="stylesheet" href="./css/header.css">
				<link rel="stylesheet" href="./css/footer.css">
				<!-- JS 플러그인 파일 -->
				<script src="./js/jquery-1.12.4.min.js"></script>
				<script src="./js/jquery-3.3.1.min.js"></script>
				<script src="./js/prefixfree.min.js"></script>
				<!-- 페이지 JS 파일 -->
				<script src="./js/boardList.js"></script>
			</head>

			<body>
				<div id="wrap">
					<img class="img" src="./images/header_top.jpg" alt="윈터프리퀀시">
					<header class="header">
						<jsp:include page="/include/header_top.jsp" />
						<jsp:include page="/include/header_bottom.jsp" />
					</header>
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
						<div class="customer_right">
							<div class="customer_upper_box">
								<button>
									<a href="#" class="customer_btn">
										<img src="./images/customer_service_pencil.png" alt="펜슬이미지">
										<span>1:1 문의작성</span>
									</a>
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
									<div class="customer_inquiry">
										<div class="customer_ask">
											<p>
												답변완료
											</p>
											<p>
												<img src="./images/icon_arrow_down_thin.svg" alt="화살표">
											</p>
										</div>
										<div class="customer_ask2">
											<p>
												<textarea name="content" cols="40" rows="10"
													class="form-control">Q</textarea>
											</p>
											<div class="customer_input">
												<input type="hidden" name="ref" value="${ref }">
												<input type="hidden" name="re_step" value="${re_step }">
												<input type="hidden" name="re_level" value="${re_level }">
												<a href="ReAddBoardCtrl.do"><input type="text" value="댓글"></a>
												<a href="UpdateBoardCtrl.do"><input type="text" value="수정"></a>
												<a href="DeleteBoardCtrl.do"><input type="text" value="삭제"></a>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
					<footer class="footer">
						<jsp:include page="/include/footer_top.jsp" />
						<jsp:include page="/include/footer_bottom.jsp" />
					</footer>
				</div>
			</body>

			</html>
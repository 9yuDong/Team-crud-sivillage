<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
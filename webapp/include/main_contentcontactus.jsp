<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%       String email = (String)session.getAttribute("email");
             String tell = (String)session.getAttribute("tel");
            
             
    %>
         <section id="content_contactus">
            <form action="AddBoardCtrl.do" method="post">
               <h2>1:1 문의 내용을 작성해주세요</h2>
               <select name="type" class="option1" onchange="SelectFuntion()">
                  <option value="" selected>문의유형 대분류</option>
                  <option value="상품">상품</option>
                  <option value="주문">주문</option>
                  <option value="배송">배송</option>
                  <option value="이벤트">이벤트</option>
                  <option value="교환/반품">교환/반품</option>
                  <option value="기타">기타</option>
                  <option value="취소/환불">취소/환불</option>
                  <option value="회원">회원</option>
                    </select>
                     <select name="choice" class="option2">
                  <option value="" selected>중분류</option>
                  <option value="상품조회" class="a1">상품조회</option>
                  <option value="주문" class="a2">주문</option>
                  <option value="결제" class="a2">결제</option>
                  <option value="단순정보확인" class="a3">단순정보확인</option>
                  <option value="정보변경(주소/옵션)" class="a3">정보변경(주소/옵션)</option>
                  <option value="이벤트" class="a4">이벤트</option>
                  <option value="혜택" class="a4">혜택</option>
                  <option value="교환" class="a5">교환</option>
                  <option value="반품" class="a5">반품</option>
                  <option value="기타" class="a6">기타</option>
                  <option value="취소" class="a7">취소</option>
                  <option value="환불" class="a7">환불</option>
                  <option value="회원가입/탈퇴" class="a8">회원가입/탈퇴</option>
                  <option value="회원정보변경" class="a8">회원정보변경</option>
                  <option value="회원혜택" class="a8">회원혜택</option>
               </select>
               <script>
                  var option1 = document.querySelector('.option1');
                  var option2 = document.querySelector('.option2');
                  var a1 = document.querySelectorAll('.a1');
                  var a2 = document.querySelectorAll('.a2');
                  var a3 = document.querySelectorAll('.a3');
                  var a4 = document.querySelectorAll('.a4');
                  var a5 = document.querySelectorAll('.a5');
                  var a6 = document.querySelectorAll('.a6');
                  var a7 = document.querySelectorAll('.a7');
                  var a8 = document.querySelectorAll('.a8');
                  function allclose() {
                     for (var i = 0; i < a1.length; i++) {
                        a1.item(i).style.display = "none";
                     }
                     for (var i = 0; i < a2.length; i++) {
                        a2.item(i).style.display = "none";
                     }
                     for (var i = 0; i < a3.length; i++) {
                        a3.item(i).style.display = "none";
                     }
                     for (var i = 0; i < a4.length; i++) {
                        a4.item(i).style.display = "none";
                     }
                     for (var i = 0; i < a5.length; i++) {
                        a5.item(i).style.display = "none";
                     }
                     for (var i = 0; i < a6.length; i++) {
                        a6.item(i).style.display = "none";
                     }
                     for (var i = 0; i < a7.length; i++) {
                        a7.item(i).style.display = "none";
                     }
                     for (var i = 0; i < a8.length; i++) {
                        a8.item(i).style.display = "none";
                     }
                  }
                     function SelectFuntion() {
                        allclose();
                        var aa = option1.value;
                        switch (aa) {
                        case "상품":
                           for (var i = 0; i < a1.length; i++) {
                              a1.item(i).style.display = "block";
                           }
                           break;
                        case "주문":
                           for (var i = 0; i < a2.length; i++) {
                              a2.item(i).style.display = "block";
                           }
                           break;
                        case "배송":
                           for (var i = 0; i < a3.length; i++) {
                              a3.item(i).style.display = "block";
                           }
                           break;
                        case "이벤트":
                           for (var i = 0; i < a4.length; i++) {
                              a4.item(i).style.display = "block";
                           }
                           break;
                        case "교환/반품":
                           for (var i = 0; i < a5.length; i++) {
                              a5.item(i).style.display = "block";
                           }
                           break;
                        case "기타":
                           for (var i = 0; i < a6.length; i++) {
                              a6.item(i).style.display = "block";
                           }
                           break;
                        case "취소/환불":
                           for (var i = 0; i < a7.length; i++) {
                              a7.item(i).style.display = "block";
                           }
                           break;
                        case "회원":
                           for (var i = 0; i < a8.length; i++) {
                              a8.item(i).style.display = "block";
                           }
                           break;
                        }
                     }
                  </script>

               </article>
               <article class="askinfo">
                  <input type="button" name="product_choice" value="문의상품 선택하기"
                     class="product_choice"> <input type="text" name="title"
                     placeholder="문의 제목을 입력해주세요">
                  <textarea name="content" onkeyup="check_length(this);"
                     onkeypress="check_enter()" placeholder="문의유형 선택 후 , 내용을 입력해주세요."
                     rows="10"></textarea>
                  <!-- 입력 글자 수 제한 스크립트 -->
                  <script>
                     function check_length(area) {
                        var text = area.value;
                        var test_length = text.length;

                        //최대 글자수 
                        var max_length = 100;

                        if (test_length > max_length) {
                           alert(max_length + "자 이상 작성할 수 없습니다.")
                           text = text.substr(0, max_length);
                           area.value = text;
                           area.focus();
                        }
                     }
                     //엔터키 입력 제한
                     // function check_enter(){
                     // if(event.keyCode==13){
                     // event.returnValue=false;
                     // }
                     // }
                  </script>
                  <div class="fileupload">
                     <span></span> <span></span>
                  </div>
                  <div class="warning_text">
                     <ul>
                        <li>사진은 5MB미만의 JPG, PNG 형식으로 업로드 가능합니다.</li>
                        <li>파일명에 “_”, “-”이외의 특수문자는 사용이 불가능합니다.</li>
                        <li>이미지는 3개까지 등록 가능합니다.</li>
                     </ul>
                  </div>
               </article>
         
               <article class="userinfo">

                  <input type="text" name="user_name" placeholder="문의자 이름 입력" value="${name }">
                  <input type="text" name="user_email" placeholder="이메일입력" value="${email}">
                  <div class="phone_num cf">
                     <select name="first_tel" class="first_tel">
                        <option value="010">010</option>
                        <option value="011">011</option>
                        <option value="016">016</option>
                        <option value="017">017</option>
                        <option value="018">018</option>
                        <option value="019">019</option>
                     </select> <input type="tel" name="second_tel" class="second_tel" placeholder="휴대전화번호입력" value="${tel}">
                  </div>
                  <div class="checklist">
                     <article class="checkbox cf">
                        <div class="cf">
                           <input type="checkbox" id="emailchecked" name="emailchecked">
                           <p>이메일 답변 수신</p>
                        </div>
                        <div class="cf">
                           <input type="checkbox" id="smschecked" name="smschecked">
                           <p>SMS 알림 신청</p>
                        </div>
                     </article>
                     <h2>
                        개인정보 수집 및 이용약관 <span>(필수)</span>
                     </h2>
                     <p>고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있습니다. 다만, 고객님의 동의 거부 시 온라인
                        상담이 제한됩니다.</p>
                     <article class="graybox cf">
                        <ul>
                           <li>개인정보의 수집/이용 목적 : 고객센터 온라인 상담(1:1 문의 신청)</li>
                           <li>수집하는 개인정보의 항목 : 이름, 이메일 주소, 휴대폰 번호</li>
                           <li></li>
                           <li>개인정보의 보유 및 이용기간 : 전자상거래 등에서의 소비자보호에 관한 법률에 의해 소비자의 불만
                              또는 분쟁처리에 관한 기록 (3년간 보관)</li>
                        </ul>
                     </article>
                  </div>
                  <div class="lastcheck cf">
                     <input type="checkbox" name="agree" class="agreebox">
                     <p>동의합니다</p>
                  </div>
                  <ul>
                     <li>문의하신 내용의 답변은 회원님의 메일을 통해 확인하실 수 있습니다.</li>
                  </ul>
               </article>
               <input type="reset" value="취소" class="reset">
               <input type="submit" value="등록" class="submit">
            </form>
         </section>
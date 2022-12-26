<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


      <!-- 황규동 추가 -->
      <c:set var="name" value="${name}" />
      <c:set var="email" value="${email}" />
      <c:set var="tell" value="${tell}" />
      <c:if test="${name==null}">
         <c:redirect url="login.jsp" />
      </c:if>

      <!-- 송한솔 추가 -->
      <% String home=request.getContextPath(); %>
         <% String content=request.getParameter("content"); if(content==null){
            content="./include/main_contentcontactus.jsp" ; } %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
               <meta charset="UTF-8">
               <meta http-equiv="X-UA-Compatible" content="IE=edge">
               <meta name="viewport" content="width=device-width, initial-scale=1.0">
               <title>프로젝트 1:1문의하기</title>
               <link rel="apple-touch-icon=precomposed" href="./favicon/favicon.ico">
               <link rel="shortcut icon" href="./favicon/favicon.ico">
               <link rel="stylesheet" href="./css/reset.css">
               <link rel="stylesheet" href="./css/header.css">
               <link rel="stylesheet" href="./css/footer.css">
               <link rel="stylesheet" href="./css/project_si.css">
               <link rel="stylesheet" href="./css/popup.css">
               <link rel="stylesheet" href="./css/main_customer.css">
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
               <div id="wrap">
                  <main role="main" class="cf">
                     <jsp:include page="/include/main_snb.jsp" />
                     <jsp:include page="<%=content %>" />
                  </main>
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
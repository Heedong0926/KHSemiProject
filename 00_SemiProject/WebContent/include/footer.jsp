<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main_footer</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/include/footer.css">
</head>
<body>
	<div id="footer">
		<div id="link_footer">
			<div class="faq_footer">
	      		<ul>
	       	 		<li>
		        		<a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
		        		<a href="https://www.youtube.com/"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
		        		<a href="https://ko-kr.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a>
	        		</li>
	        		<li><a href="board/faq_main.jsp"><i class="fa fa-question-circle" aria-hidden="true"></i>고객문의(FAQ)</a></li>
	      		</ul>
    		</div>
    		<div class="term_footer">
	      		<ul>
		        	<li><a href="<%=request.getContextPath()%>/terms/footer/privat.jsp">개인정보 처리방침</a></li>
		        	<li><a href="<%=request.getContextPath()%>/terms/footer/serviceterm.jsp">서비스 이용 약관</a></li>
		        	<li><a href="<%=request.getContextPath()%>/terms/footer/useterm.jsp">사용약관</a></li>
	      		</ul>
    		</div>
    		<div class="term_footer">
      			<ul>	
		        	<li><a href="<%=request.getContextPath()%>/terms/footer/couponterm.jsp">쿠폰</a></li>
		        	<li><a href="<%=request.getContextPath()%>/terms/footer/kidterm.jsp">아동</a></li>
	      		</ul>
    		</div>
    		<div class="logo_footer">
      			<img src="<%=request.getContextPath()%>/image/include/logo2.png" width ="100%">
    		</div>
   		</div>
   		<div class="info_footer">
     		<ul>
     			<li>Copyright 2023. 주식회사명 inc. all rights reserved.</li>
	        	<li>상호명: (주)고우캐치스테이</li>
	        	<li>대표자: 이희용</li>
	        	<li>주소: 서울특별시 중구 남대문로 120 그레이츠 청계(구 대일빌딩) 2F, 3F </li>
	        	<li>(주)캐치스테이는 통신판매 중개자로서 통신판매의 당사자가 아니며</li>
	        	<li> 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다.</li>
     		</ul>
   		</div>
	</div>
</body>
</html>

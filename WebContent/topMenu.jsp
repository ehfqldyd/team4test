<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	<div id="top-menu">
		<a id="top"></a>
			<div>
			<% 
			if(session.getAttribute("userId")!= null){ 
			%>
				<%= session.getAttribute("userId")%>
				<%= session.getAttribute("name")%>
				[<%= session.getAttribute("grade") %>] 님 반갑습니다 </div> 
				<a href ="Controller?action=logout"><img src="images/logout-btn.png" width="120"></a> 
					<%
					if (session.getAttribute("grade").equals("A")) { 
					%>
					<a href ="Controller?action=allInfo"><img src="images/allInfo.png" width="120"></a>
					<a href ="insertBike.jsp"><img src="images/insertBike.png" width="120"></a>
					<a href ="Controller?action=allInfoBike"><img src="images/bikeAll.png" width="120"></a>
					<%
						} 
					%>
			<% 
				} else { 
			%>			
			<a href="login.jsp" ><img src="images/login-bt.png" width="120" ></a>
			<a href="memberInput.jsp" ><img src="images/join-btn.png" width="120" ></a><% }%>
			<!-- /Controller?action=logout 을   logout에-->
			<form action="index.jsp">
				<div class="logo" >
					<span ><input  type="image" src="images/1.png"  width="200"></span>
				</div>
			</form>
				<div class="dropdownmenu">
					<ul class="topdropdown">
  						<li><a class="active" href="index.jsp">Home</a></li>
  				 		<li class="dropdown">
   				 			<a href="customerCenter.jsp" class="dropbtn">고객센터</a>
    						<div class="dropdown-content">
     							<a href="#">공지사항</a>
     							<a href="#">FAQ</a>
     							<a href="#">시민의견수렴</a>
     							<a href="#">추천</a>
   	 						</div>
  						</li>
  						<li class="dropdown">
  							<a href="Controller?action=myInfo" class="dropbtn">나의 공간</a>
    						<div class="dropdown-content">
     							<a href="Controller?action=myRentDetail">이용내역</a>
     							<a href="updateMyInfo.jsp">개인정보수정</a>
     							<a href="updatePw.jsp">비밀번호변경</a>
   	 						</div>
  						</li>
  				 		<li class="dropdown">
   				 			<a href="guide.jsp" class="dropbtn">이용안내</a>
    						<div class="dropdown-content">
     							<a href="#">서비스 안내</a>
     							<a href="#">결제</a>
     							<a href="#">이용절차</a>
     							<a href="#">자전거 대여</a>
     							<a href="#">자전거 반납</a>
     							<a href="#">자전거 안전운행 안내</a>
   	 						</div>
  						</li>
  						<li class="dropdown">
   				 			<a href="rentPlace.jsp" class="dropbtn">대여소 조회</a>
    						<div class="dropdown-content">
     							<a href="#">대여소 실시간 현황</a>
     							<a href="#">대여소 조회</a>
   	 						</div>
  						</li>
  						<li class="dropdown">
   				 			<a href="ticketBuy.jsp" class="dropbtn">이용권 구매</a>
    						<div class="dropdown-content">
     							<a href="#">정기권구매</a>
     							<a href="#">일일권구매</a>
     							<a href="#">선물</a>
   	 						</div>
  						</li>
  						<li class="dropdown">
   				 			<a href="Controller?action=allInfoRent" class="dropbtn">대여조회</a>
    						<div class="dropdown-content">
     							<a href="Controller?action=allInfoRent">대여</a>
     							<a href="Controller?action=allInfoRent">반납</a>
     							
   	 						</div>
  						</li>
					</ul>
				</div>
			
		</div>
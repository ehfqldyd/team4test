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
				[<%= session.getAttribute("grade") %>] �� �ݰ����ϴ� </div> 
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
			<!-- /Controller?action=logout ��   logout��-->
			<form action="index.jsp">
				<div class="logo" >
					<span ><input  type="image" src="images/1.png"  width="200"></span>
				</div>
			</form>
				<div class="dropdownmenu">
					<ul class="topdropdown">
  						<li><a class="active" href="index.jsp">Home</a></li>
  				 		<li class="dropdown">
   				 			<a href="customerCenter.jsp" class="dropbtn">������</a>
    						<div class="dropdown-content">
     							<a href="#">��������</a>
     							<a href="#">FAQ</a>
     							<a href="#">�ù��ǰ߼���</a>
     							<a href="#">��õ</a>
   	 						</div>
  						</li>
  						<li class="dropdown">
  							<a href="Controller?action=myInfo" class="dropbtn">���� ����</a>
    						<div class="dropdown-content">
     							<a href="Controller?action=myRentDetail">�̿볻��</a>
     							<a href="updateMyInfo.jsp">������������</a>
     							<a href="updatePw.jsp">��й�ȣ����</a>
   	 						</div>
  						</li>
  				 		<li class="dropdown">
   				 			<a href="guide.jsp" class="dropbtn">�̿�ȳ�</a>
    						<div class="dropdown-content">
     							<a href="#">���� �ȳ�</a>
     							<a href="#">����</a>
     							<a href="#">�̿�����</a>
     							<a href="#">������ �뿩</a>
     							<a href="#">������ �ݳ�</a>
     							<a href="#">������ �������� �ȳ�</a>
   	 						</div>
  						</li>
  						<li class="dropdown">
   				 			<a href="rentPlace.jsp" class="dropbtn">�뿩�� ��ȸ</a>
    						<div class="dropdown-content">
     							<a href="#">�뿩�� �ǽð� ��Ȳ</a>
     							<a href="#">�뿩�� ��ȸ</a>
   	 						</div>
  						</li>
  						<li class="dropdown">
   				 			<a href="ticketBuy.jsp" class="dropbtn">�̿�� ����</a>
    						<div class="dropdown-content">
     							<a href="#">����Ǳ���</a>
     							<a href="#">���ϱǱ���</a>
     							<a href="#">����</a>
   	 						</div>
  						</li>
  						<li class="dropdown">
   				 			<a href="Controller?action=allInfoRent" class="dropbtn">�뿩��ȸ</a>
    						<div class="dropdown-content">
     							<a href="Controller?action=allInfoRent">�뿩</a>
     							<a href="Controller?action=allInfoRent">�ݳ�</a>
     							
   	 						</div>
  						</li>
					</ul>
				</div>
			
		</div>
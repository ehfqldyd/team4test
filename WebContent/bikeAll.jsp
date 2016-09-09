
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ page import = "java.util.ArrayList" %>
   <%@ page import = "work.model.dto.User" %>
   <%@ page import = "work.model.dto.Bike" %>
   <%@ page import ="work.util.Utility" %>
   
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/common.css">



</head>
<body>
<div id="wrap">
   <div id="header">
   		<%@include file="topMenu.jsp" %>
	</div>
   <div id="middle">
       <%@include file="sidebarAdmin.jsp" %>
       <div id="content">
      
       <form  method="get" action="Controller?action=allInfoBike">
       		<table align="center"> 
       			<input type="hidden" name="action" value="selectAllInfoBike">
	 			<td><input type="text"  name="location" maxlength="20" size="70px" placeholder="지역명"  autofocus="autofocus"  ></i></td>
	 			<td><input class="button" type="submit" value="검색"></td>
       		</table>
       </form>
       <div id=allInfo >
      	 <table cellspacing="2px">
      	 	<tr>
      	 		<td width=10%>자전거 번호</td>
	       		<td width=50%>장소</td>
       			<td>대여여부</td>
       			<td>위치변경</td>
      	 	</tr>
      	 	 <jsp:useBean id="list" class="java.util.ArrayList" scope="request"/> 
    	<%
       		if(request.getAttribute("list") != null) {
				//ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
       			Bike bike = new Bike();
				for(int i=0; i<list.size(); i++){
       				bike=(Bike)list.get(i);
       	%>
      
       				<tr>
       					<td width=10%>
       						<a name="bikeNo" href="Controller?action=bikeDetail&bikeNo=<%= bike.getBikeNo()%>">
       							<%= bike.getBikeNo()%>
       						</a>
       					</td>
	       				<td width=50%><%= bike.getLocation()%></td>
       					<td width=10%><%= bike.getBikeCheck()%></td>
       					<td>
       						<a href="bikeUpdateLocation.jsp?bikeNo=<%= bike.getBikeNo()%>">
       						위치변경
       						</a>
       					</td>
       				</tr>
       		
       		<% }} %>
       			</table>
       		</div>
       </div>
       
    
   </div>
   	
   	<%@include file="footer.jsp" %>
</div>

</body>
</html>
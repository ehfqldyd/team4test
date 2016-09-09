
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ page import = "java.util.ArrayList" %>
   <%@ page import = "work.model.dto.User" %>
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
       <%@include file="sidebarAll.jsp" %>
       <div id="content">
      
       <form  method="get" action="Controller?action=allInfo">
       		<table align="center"> 
       			<input type="hidden" name="action" value="selectAllInfo">
	 			<td><input type="text"  name="name" maxlength="20" size="70px" placeholder="ȸ����"  autofocus="autofocus"  ></i></td>
	 			<td><input class="button" type="submit" value="�˻�"></td>
       		</table>
       </form>
       <div id=allInfo >
      	 <table cellspacing="2px">
      	 	<tr>
      	 		<td width=10%>���̵�</td>
	       		<td width=10%>��й�ȣ</td>
       			<td>�̸�</td>
       			<td>����ó</td>
       			<td>�̸���</td>
       			<td>�ּ�</td>
       			<td>���</td>
       			<td>����ȸ</td>
       			<td>ȸ��Ż��</td>
      	 	</tr>
      	 	 <jsp:useBean id="list" class="java.util.ArrayList" scope="request"/> 
    	<%
       		if(request.getAttribute("list") != null) {
       			User user = new User();
				for(int i=0; i<list.size(); i++){
       				user=(User)list.get(i);
       	%>
      
       				<tr>
       					<td width=10%>
       						<a name="userId" href="Controller?action=memberDetail&userId=<%= user.getUserId()%>">
       							<%= user.getUserId()%>
       						</a>
       					</td>
	       				<td width=10%><%= Utility.convertSecureCode(user.getUserPw())%></td>
	       				<td width=10%><%= user.getName()%></td>
       					<td width=10%><%= user.getMobile()%></td>
       					<td width=10%><%= user.getEmail()%></td>
       					<td><%= user.getAddress()%></td>
       					<td><%= user.getGrade()%></td>
       					<td>
       						<a href="Controller?action=memberDetail&userId=<%= user.getUserId()%>">
       						����ȸ
       						</a>
       					</td>
       					<td>
       						<a href="Controller?action=memberDelete&userId=<%= user.getUserId()%>">
       						ȸ��Ż��
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
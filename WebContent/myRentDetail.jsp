
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ page import = "java.util.ArrayList" %>
   <%@ page import = "work.model.dto.Rent" %>
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
       <%@include file="sidebarMy.jsp" %>
       <div id="content">
      
        
       <div id=allInfo >
      	 <table cellspacing="2px">
      	 	<tr>
      	 		<td width=10%>�����Ź�ȣ</td>
	       		<td width=10%>����� ���̵�</td>
       			<td width=10%>�뿩����</td>
       			<td width=10%>�뿩����</td>
       			
      	 	</tr>
      	 		 	 <jsp:useBean id="list" class="java.util.ArrayList" scope="request"/> 
    	<%
       		if(request.getAttribute("list") != null) {
       			Rent rent = new Rent();
				for(int i=0; i<list.size(); i++){
       				rent=(Rent)list.get(i);
       	%>
    	
      
       				<tr>
	       				<td width=10%><%= rent.getBikeNo()%></td>
	       				<td width=10%><%= rent.getUserId()%></td>
       					<td width=10%><%= rent.getRentStart()%></td>
       					<td width=10%><%= rent.getRentEnd()%></td>
       				</tr>
       		
       				<%}} else { %>
       			�ش�����������.
       	<% } %>
       			</table>
       		</div>
       </div>
       
    
   </div>
   	
   	<%@include file="footer.jsp" %>
</div>

</body>
</html>
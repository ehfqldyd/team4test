<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="work.model.dto.Bike" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ����</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
</head>
<body>
<div id="wrap">
   <div id="header">
   		<%@include file="topMenu.jsp" %>
	</div>
   <div id="middle">
       <%@include file="sidebarAdmin.jsp" %>
       
     <jsp:useBean id="dto" class="work.model.dto.Bike" scope="request"/> 
       <%
      	if(request.getAttribute("dto") != null) {
      	//	Member dto = (Member)request.getAttribute("dto");
       %>
       <!-- ��Ʈ�ѷ����� ������ �±� �������� -->
       <div id="content">
       	<p>
       	[�����Ź�ȣ] <%= dto.getBikeNo() %>
       	<p>
       	[�����ź�����] <%= dto.getLocation() %>
       	<p>
       	[�����Ż���] <%= dto.getBikeCheck() %>
       	
       </div>
       
       <%
       	} else {     
       %>	
       	�ش� ������������ ã�� �� �����ϴ�.
       <% 
       	}
       %>	
      
   </div>
   	
   	<%@include file="footer.jsp" %>
</div>

</body>
</html>
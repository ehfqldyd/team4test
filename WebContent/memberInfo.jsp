<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="work.model.dto.User" %>    
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
       <%@include file="sidebarMy.jsp" %>
       
     <jsp:useBean id="dto" class="work.model.dto.User" scope="request"/> 
       <%
      	if(request.getAttribute("dto") != null) {
      	//	Member dto = (Member)request.getAttribute("dto");
       %>
       <!-- ��Ʈ�ѷ����� ������ �±� �������� -->
       <div id="content">ȸ����������ȸ
       	<p>
       	���̵� <%= dto.getUserId() %>
       	<p>
       	��й�ȣ <%= dto.getUserPw() %>
       	<p>
       	�̸� <%= dto.getName() %>
       	<p>
       	����ó <%= dto.getMobile() %>
       	<p>
       	�̸��� <%= dto.getEmail() %>
       	<p>
       	�ּ� <%= dto.getAddress() %>
       	<p>
       	��� <%= dto.getGrade() %>
       	
       	
       </div>
       
       <%
       	} else {     
       %>	
       	�ش� ȸ�������� ã�� �� �����ϴ�.
       <% 
       	}
       %>	
      
   </div>
   	
   	<%@include file="footer.jsp" %>
</div>

</body>
</html>
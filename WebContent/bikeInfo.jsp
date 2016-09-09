<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="work.model.dto.Bike" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원상세</title>
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
       <!-- 컨트롤러에서 설정한 태그 가져오기 -->
       <div id="content">
       	<p>
       	[자전거번호] <%= dto.getBikeNo() %>
       	<p>
       	[자전거보관소] <%= dto.getLocation() %>
       	<p>
       	[자전거상태] <%= dto.getBikeCheck() %>
       	
       </div>
       
       <%
       	} else {     
       %>	
       	해당 자전거정보를 찾을 수 없습니다.
       <% 
       	}
       %>	
      
   </div>
   	
   	<%@include file="footer.jsp" %>
</div>

</body>
</html>
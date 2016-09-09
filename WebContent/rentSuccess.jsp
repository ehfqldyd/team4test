<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="work.model.dto.Rent" %>    
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
       <%@include file="sidebarMy.jsp" %>
       
     <jsp:useBean id="dto" class="work.model.dto.Rent" scope="request"/> 
       <%
      	if(request.getAttribute("dto") != null) {
      	//	Member dto = (Member)request.getAttribute("dto");
       %>
       <!-- 컨트롤러에서 설정한 태그 가져오기 -->
       <div id="content">
        <h3>렌트 되셨습니다! 예정된 시각에 반납 부탁드립니다.</h3>
       	<p>
       	[자전거번호] <%= dto.getBikeNo() %>
       	<p>
       	[사용자 아이디] <%= dto.getUserId() %>
       	<p>
       	[대여 시작] <%= dto.getRentStart() %>
       	<p>
       	[예정된 반납 시간] <%= dto.getRentEnd() %>
       	
       </div>
       
       <%
       	} else {     
       %>	
        	오류 발생
       <% 
       	}
       %>	
      
   </div>
   	
   	<%@include file="footer.jsp" %>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="work.model.dto.User" %>    
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
       
     <jsp:useBean id="dto" class="work.model.dto.User" scope="request"/> 
       <%
      	if(request.getAttribute("dto") != null) {
      	//	Member dto = (Member)request.getAttribute("dto");
       %>
       <!-- 컨트롤러에서 설정한 태그 가져오기 -->
       <div id="content">회원정보상세조회
       	<p>
       	아이디 <%= dto.getUserId() %>
       	<p>
       	비밀번호 <%= dto.getUserPw() %>
       	<p>
       	이름 <%= dto.getName() %>
       	<p>
       	연락처 <%= dto.getMobile() %>
       	<p>
       	이메일 <%= dto.getEmail() %>
       	<p>
       	주소 <%= dto.getAddress() %>
       	<p>
       	등급 <%= dto.getGrade() %>
       	
       	
       </div>
       
       <%
       	} else {     
       %>	
       	해당 회원정보를 찾을 수 없습니다.
       <% 
       	}
       %>	
      
   </div>
   	
   	<%@include file="footer.jsp" %>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
     	  	
			<div id="updatePw">
			 <form name="updatePw" method="post" action="Controller?action=changePassword">
				<table align="center" cellspacing="30px">
					<tr>
	 					<td><input type="password" name="userPw" placeholder="���� ��й�ȣ" maxlength="20" width="200"></td><br>
					</tr>
					<tr>
						<td><input type="password" name="newUserPw" placeholder="���ο� ��й�ȣ" maxlength="20" width="200"></td><br>
					</tr>		
					<tr>
					 <td colspan="2" align="center">
						 <input class="button" type="submit" value="����"></td>
					</tr>
				</table>
	 		 </form>
       </div>
       
       
   </div>
   	
   	<%@include file="footer.jsp" %>
</div>
</div>
</body>
</html>
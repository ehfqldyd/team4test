<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="work.model.dto.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<script type="text/javascript">
function autoMove(data,length,next){
	
	if (data.length==length){
			next.focus();
	}
}

function changeEmail(email){
	
	 if(email=="userInput"){
		
		document.updateMyInfo.email2.value="";
		document.updateMyInfo.email2.readOnly=false;
		document.updateMyInfo.email2.focus();
	} else{
		
		document.updateMyInfo.email2.value=email;
		document.updateMyInfo.email2.readOnly=true;
	} 
}
</script>

</head>
<body>
<div id="wrap">
   <%@include file="topMenu.jsp" %>
   <div id="middle">
       <%@include file="sidebarMy.jsp" %>
       
       <div id="content">
     	  	 
     	
			<div id="updateMyInfo">
			 <form name="updateMyInfo" method="post" action="Controller?action=updateId">
				<table align="center" cellspacing="30px">
				
    			 	<tr>
						<td>비밀번호</td>
	 					<td><input type="password" name="userPw" placeholder="변경할 비밀번호" maxlength="20" ></td><br>
					</tr>
					
					<tr>
						<td>연락처</td>
							<td><select name="mobile1" style="width:100px;height:30px;">
	   							<option value="010">010</option>
	   							<option value="011">011</option>
	   							<option value="017">017</option>
	   							<option value="016">016</option>
	   					 		</select> 
	   							<input type="text" name="mobile2" onkeydown="autoMove(this.value,4,mobile3)" style="width:20%;height:80%"> 
								<input type="text" name="mobile3" onkeydown="autoMove(this.value,4,email1)" style="width:20%;height:80%" >
							</td>
					 </tr>
	 				<tr>
						<td>이메일</td>
								<td><input type="text" name="email1" style="width:20%;height:80%" >@
									<input type="text" name="email2"  style="width:20%;height:80%">
									<select name="email3" onchange="changeEmail(this.value)" style="width:100px;height:30px;" >
									<option value="userInput">직접입력</option>
	   								<option value="naver.com">naver.com</option>
	   								<option value="daum.ac.kr">daum.net</option>
	   								<option value="syu.ac.kr">syu.ac.kr</option>
	   								<option value="gmail.com">gmail.com</option>
	   								</select></td>
							 </tr>
					<tr>
						<td>주소</td>
	 					<td><input type="text" name="address" placeholder="변경할 주소" maxlength="60" ></td><br>
					</tr>
							 
					<tr>
					 <td colspan="2" align="center">
						<input class="button" type="submit" value="변경"></td>
						 
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
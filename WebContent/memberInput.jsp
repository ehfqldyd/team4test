<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script	type="text/javascript">
		/** 1.아이디최소 4~8자리
		*/
		function validCheck(){
			//Text필수입력항목 및 길이 체크 
			//아이디 데이터 가져오기
			var txtTest1 =document.testForm.txtTest1.value;
			if(txtTest1.trim().length<4 ||txtTest1.trim().length>8){
				alert("아이디는 필수항목 ,\n4~8자리 입력");
				document.testForm.txtTest1.focus();
				document.testForm.txtTest1.value="아이디";
				return false;
			}
		
		
		// radio : 필수선택
		
			var takeElement = document.testForm.radioTest2;
			var isEmail;
		
			for (i = 0; i < takeElement.length; i++) {
				if(takeElement[i].checked){
					isEmail=tackElement[i].value;
				}
			}
			alert("isEmail"+isEmail);
			
			if(isEmail==undefined){
				alert("체크하시오");
				document.testForm.radioTest2.focus();
				return false;
			}
		}
		// 데이터 valid 
		
		/**입력양식 기본값 초기화: 아이디*/
		function clearText(){
			//키입력할때마다 계속 초기화
			//document.testform.txtTest.value="";
			var initData = document.testForm.txtTest1.value;
			if(initData == "아이디"){
				document.testForm.txtTest1.value="";
			}
			
		}
		
		/**전체체크박스 전체선택 및 전체해제
			1.전체선택및 전체해제 체크박스 가져오기
			2. 체크박스만큼 반복 하면서  checked 여부
			3.
			//전체선택true이면 전체선택을 위한체크항목 체크박스객체 가져와서 반복하면서 
			checked 안되잇는ㄴ것은  click() 실행해서 체킹
			
			//전체해제 false이면 전체선택을 위한체크항목 체크박스객체 가져와서 반복하면서 
			checked 안되잇는ㄴ것은  click() 실행해서 체킹
		*/
		
	function autoMove(data,length,next){
		if (data.length==length){
				next.focus();
		}
	}
	
	function changeEmail(email){
		 if(email=="userInput"){
			document.join.email2.value="";
			document.join.email2.readOnly=false;
			document.join.email2.focus();
		} else{
			document.join.email2.value=email;
			document.join.email2.readOnly=true;
		} 
	}
	
	
	
	
</script>
<link type="text/css" rel="stylesheet" href="css/common.css">



</head>
<body>
<div id="wrap">
   <%@include file="topMenu.jsp" %>
	
   <div id="middle">
       <%@include file="sidebarInput.jsp" %>
       <div id="content">
			<form name="join" method="post" action="Controller?action=join">
				<div id="memberinput">
					<table align="center" cellspacing="1px">
					<tr>
					 	<td>아이디</td>
					 
					 	<td><input type="text" name="userId" maxlength="20"></td>
					 </tr>
					  <tr>
						<td>비밀번호</td> 
					
						<td><input type="password" name="userPw" maxlength="20"></td>
					 </tr>
					 <tr>
						<td>이름</td> 
						
						<td><input type="text" name="name" maxlength="20"></td>
	 				</tr>
					  <tr>
						<td>연락처</td>
							<td><select name="mobile1" style="width:20%;height:80%;">
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
								<td><input type="text" name="email1" style="width:10%;height:80%" >@
									<input type="text" name="email2"  style="width:10%;height:80%">
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
	 					<td><input type="text" name="address" placeholder="상세주소" maxlength="60" ></td><br>
					</tr>
					 </table>
					 <div>
						<table align="center" cellspacing="30px">
							
							<tr>
								<td>이메일수신여부</td>
								<td>수신<input type="radio" name="isemail" value="수신"></td>
								<td>수신거부<input type="radio" name="isemail" value="수신놉"></td>
							</tr>
							
						
						</table>
						
							<table align="center">
								 <tr>
									 <td colspan="2" align="center">
	 									<input class="button" type="submit" value="회원가입"></td>
	
								 </tr>
							</table>
       					</div>
       				     
       				</form>
       			</div>
       		</div>
       	</div>
       	
     <%@include file="footer.jsp" %>
</body>
</html>
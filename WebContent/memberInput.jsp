<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script	type="text/javascript">
		/** 1.���̵��ּ� 4~8�ڸ�
		*/
		function validCheck(){
			//Text�ʼ��Է��׸� �� ���� üũ 
			//���̵� ������ ��������
			var txtTest1 =document.testForm.txtTest1.value;
			if(txtTest1.trim().length<4 ||txtTest1.trim().length>8){
				alert("���̵�� �ʼ��׸� ,\n4~8�ڸ� �Է�");
				document.testForm.txtTest1.focus();
				document.testForm.txtTest1.value="���̵�";
				return false;
			}
		
		
		// radio : �ʼ�����
		
			var takeElement = document.testForm.radioTest2;
			var isEmail;
		
			for (i = 0; i < takeElement.length; i++) {
				if(takeElement[i].checked){
					isEmail=tackElement[i].value;
				}
			}
			alert("isEmail"+isEmail);
			
			if(isEmail==undefined){
				alert("üũ�Ͻÿ�");
				document.testForm.radioTest2.focus();
				return false;
			}
		}
		// ������ valid 
		
		/**�Է¾�� �⺻�� �ʱ�ȭ: ���̵�*/
		function clearText(){
			//Ű�Է��Ҷ����� ��� �ʱ�ȭ
			//document.testform.txtTest.value="";
			var initData = document.testForm.txtTest1.value;
			if(initData == "���̵�"){
				document.testForm.txtTest1.value="";
			}
			
		}
		
		/**��üüũ�ڽ� ��ü���� �� ��ü����
			1.��ü���ù� ��ü���� üũ�ڽ� ��������
			2. üũ�ڽ���ŭ �ݺ� �ϸ鼭  checked ����
			3.
			//��ü����true�̸� ��ü������ ����üũ�׸� üũ�ڽ���ü �����ͼ� �ݺ��ϸ鼭 
			checked �ȵ��մ¤�����  click() �����ؼ� üŷ
			
			//��ü���� false�̸� ��ü������ ����üũ�׸� üũ�ڽ���ü �����ͼ� �ݺ��ϸ鼭 
			checked �ȵ��մ¤�����  click() �����ؼ� üŷ
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
					 	<td>���̵�</td>
					 
					 	<td><input type="text" name="userId" maxlength="20"></td>
					 </tr>
					  <tr>
						<td>��й�ȣ</td> 
					
						<td><input type="password" name="userPw" maxlength="20"></td>
					 </tr>
					 <tr>
						<td>�̸�</td> 
						
						<td><input type="text" name="name" maxlength="20"></td>
	 				</tr>
					  <tr>
						<td>����ó</td>
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
						<td>�̸���</td>
								<td><input type="text" name="email1" style="width:10%;height:80%" >@
									<input type="text" name="email2"  style="width:10%;height:80%">
									<select name="email3" onchange="changeEmail(this.value)" style="width:100px;height:30px;" >
									
									<option value="userInput">�����Է�</option>
	   								<option value="naver.com">naver.com</option>
	   								<option value="daum.ac.kr">daum.net</option>
	   								<option value="syu.ac.kr">syu.ac.kr</option>
	   								<option value="gmail.com">gmail.com</option>
	   								</select></td>
							 </tr>
					 <tr>
						<td>�ּ�</td>
	 					<td><input type="text" name="address" placeholder="���ּ�" maxlength="60" ></td><br>
					</tr>
					 </table>
					 <div>
						<table align="center" cellspacing="30px">
							
							<tr>
								<td>�̸��ϼ��ſ���</td>
								<td>����<input type="radio" name="isemail" value="����"></td>
								<td>���Űź�<input type="radio" name="isemail" value="���ų�"></td>
							</tr>
							
						
						</table>
						
							<table align="center">
								 <tr>
									 <td colspan="2" align="center">
	 									<input class="button" type="submit" value="ȸ������"></td>
	
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
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script>
	var check = confirm("영구적 회원탈퇴입니다 \n그래도 하시겠습니까?");
	if(check){
		alert("삭제 되었습니다!");
		location.href="memberAll.jsp";
	}
	else { 
		alert("취소 되었습니다!");
		location.href="memberAll.jsp";
	}
</script>
</head>
<body>


</body>
</html>
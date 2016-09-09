<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
 <style>
 
input[type=text]{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div.insertBike{
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    margin-left:400px;
}
 </style>
 	

</head>
<body>

<div id="wrap">
   <div id="header">
   		<%@include file="topMenu.jsp" %>
	</div>
   <div id="middle">
       <div id="content">
       		<div class="insertBike">
 				<form  method="post" action="Controller?action=insertBike">
    				<label for="bikeNo">자전거번호</label>
   					<input type="text" id="bikeNo" name="bikeNo">
    				<label for="location">자전거위치</label>
    				<input type="text" id="location" name="location" placeholder="상세주소 ex)서울시 도봉구 방학1동 방학역 앞">
  					<input type="submit" value="등 록" >
  				</form>
			</div>
     	 </div>
      </div>
   	
   	<%@include file="footer.jsp" %>
</div>

</body>
</html>
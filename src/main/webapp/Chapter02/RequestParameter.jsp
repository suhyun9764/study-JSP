<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String sex = request.getParameter("sex"); 
String[] favo = request.getParameterValues("favo"); // 전송되는 값이 여러개면 getParameterValuese() 사용
String favoStr=""; // 문자열 배열에 담긴 값들을 하나의 문자열로 합치고 공백으로 구분시킴
if(favo!=null){
	for(int i =0;i<favo.length;i++){
		favoStr+=favo[i]+" ";
	}
}
String intro = request.getParameter("intro").replace("\r\n","<br/>"); // 엔터("\r\n")을 <br/>로 변환)
%>

<ul>
	<li> 아이디 : <%=id %></li>
	<li> 성별 : <%= sex %></li>
	<li> 관심사항 : <%=favoStr %></li>
	<li> 자기소개 : <%= intro %></li>

</ul>
</body>
</html>
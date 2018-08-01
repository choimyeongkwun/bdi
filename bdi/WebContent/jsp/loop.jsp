<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta 
charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] strs = new String[10];
strs[0] = "난";
strs[1] = "너";
strs[2] = "를";
strs[3] = "좋";
strs[4] = "아";
strs[5] = "하";
strs[6] = "나";
strs[7] = "봐";
strs[8] = ".";
strs[9] = " ";


for(int i=1;i<=10;i++){
	

%>
	<%=i %><br>
<%
}
for(int i=0;i<10;i++){
%>
 <%=strs[i] %><br>  
<%
}
%>
</body>
</html>
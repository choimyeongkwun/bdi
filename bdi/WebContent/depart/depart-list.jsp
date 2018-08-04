<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel = "stylesheet" href ="/bs-3.3.7/dist/css/bootstrap-theme.css">
<link rel = "stylesheet" href ="/bs-3.3.7/dist/css/bootstrap.css">
<style>
	table td, th{
		text-align:center;
	}
</style>
<meta 
charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class ="container">
	<table class= "table-bordered table -hover">
		<thead>
			<tr>
				<th>departName</th>
				<th>departCode</th>
				<th>departCnt</th>
				<th>departEtc</th>
			</tr>
		</thead>
	</table>
</div>
	<tbody>
<%
for(int i=0;i<departList.size();i++){
	Map<String,String> user = userList.get(i);
%>
		<tr>
			<td><%=user.get("departName")%></td>
			<td>나<%=user.get("departCode")%></td>
			<td>다<%=user.get("departCnt")%></td>
			<td>라<%=user.get("departEtc")%></td>
		</tr>
<%
}
%>
	</tbody>
</body>
</html>
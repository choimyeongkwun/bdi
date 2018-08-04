<%@page import="com.bdi.test.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
  String search = request.getParameter("search");
  out.println("니가 검색한 값 : " + search);
  String type = request.getParameter("type");
   %>
<%!   
   public String checkSel(String str1,String str2){
   if(str1==null){
   return "";
   }
   if(!str1.equals(str2)){
   return "";
   }
   return "selected";
   //if
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta 
charset="UTF-8">
<link rel ="stylesheet" href="/bs-3.3.7/dist/css/bootstrap-theme.css">
<link rel ="stylesheet" href="/bs-3.3.7/dist/css/bootstrap.css">
<title>Insert title here</title>
<style>
	table td,th{
		text-align:center;
	}
</style>
</head>
<body>
	<div class="container">
	  <div style ="margin =10px">
	  <form>
	  	<input type="checkbox" value="uiId" name="type" id="id">아이디<label for="id"></label>
	  	<input type="checkbox" value="uiName" name="type" id="name">이름<label for="name"></label>
	  	<input type="checkbox" value="uiEtc" name="type" id="etc">비고<label for="etc"></label>
	  			
	  	<input type ="text" name ="search"> 
	  	<button>검색</button>
	  </form>
	  </div>
		<table class = "table tabele-hover table-borderd">
			<thead>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>나이</th>
				<th>부서코드</th>
				<th>비고란</th>
			</tr>	
			</thead>
			<tbody>
<%
UserDAO udao = new UserDAO();
StringBuilder sb = udao.getTableString(type,search);
out.println(sb.toString());
%>
			</tbody>
		</table>
	</div>
</body>
</html>
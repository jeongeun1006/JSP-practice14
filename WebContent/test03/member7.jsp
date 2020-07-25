<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,sec01.ex01.*"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	List membersList=new ArrayList();
	MemberBean m1=new MemberBean("son","1234","손흥민","son@test.com");
	MemberBean m2=new MemberBean("ki","1234","기성용","ki@test.com");
	MemberBean m3=new MemberBean("park","1234","박지성","park@test.com");
	membersList.add(m1);
	membersList.add(m2);
	membersList.add(m3);
%>
<c:set var="membersList" value="<%=membersList %>"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" align="center">
	  <tr align="center" bgcolor="#99ccff">
	   <td width="7%">아이디</td>
	   <td width="7%">비밀번호</td>
	   <td width="5%">이름</td>
	   <td width="5%">이메일</td>
	  </tr>
	  <c:forEach var="i" begin="0" end="2" step="1">
	  <tr align="center">
	  	<td>${membersList[i].id }</td>
	  	<td>${membersList[i].pwd }</td>
	  	<td>${membersList[i].name }</td>
	  	<td>${membersList[i].email }</td>
	  </tr>
	  </c:forEach>
	 </table>
</body>
</html>
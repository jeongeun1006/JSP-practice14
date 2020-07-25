<%@ page language="java" contentType="text/html; charset=UTF-8"
import="java.util.*,sec01.ex01.*"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%
  	request.setCharacterEncoding("utf-8");
  %>  
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
	   <td width="7%">이름</td>
	   <td width="7%">이메일</td>
	  </tr>
	  <c:choose>
	  	<c:when test="${empty param.id }">
	  		<tr align="center">
	  			<td colspan=5>아이디를 입력하세요!</td>
	  		</tr>
	  	</c:when>
	  <c:otherwise>
	  	<tr align="center">
	  		<td><c:out value="${param.id }"/></td>
	  		<td><c:out value="${param.pwd }"/></td>
	  		<td><c:out value="${param.name }"/></td>
	  		<td><c:out value="${param.email }"/></td>
	  	</tr>
	  </c:otherwise>
	  </c:choose>
	  </table>
</body>
</html>
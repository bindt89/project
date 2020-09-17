<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<c:set var="path" value="<%=request.getContextPath() %>"></c:set>

<meta charset="utf-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<body>
<button type="button" class="btn btn-info" style="width: 100px; margin-left: 400px;"
onclick="location.href='${path}/member/insertform'">회원가입</button>

<br><br>
<div class="container">
<table class=" table table-bordered">
	<tr>
	 <th style="text-align: center;">번호</th>
	 <th style="text-align: center;">이름</th>
	 <th style="text-align: center;">아이디</th>
	 <th style="text-align: center;">비밀번호</th>
	 <th style="text-align: center;">이메일</th>
	 <th style="text-align: center;">생년월일</th>
	 <th style="text-align: center;">성별</th>
	 <th style="text-align: center;">핸드폰</th>
	 <th style="text-align: center;">주소</th>
	 <th style="text-align: center;">가입날짜</th>
	 <th style="text-align: center;">편집</th>
	</tr>
	
	
<c:forEach var="a" items="${list }" varStatus="i">
	<tr>
	 <td align="center">${i.count }</td>
	 <td align="center">${a.name }</td>
	 <td align="center">${a.id }</td>
	 <td align="center">${a.pass }</td>
	 <td align="center">${a.email }</td>
	 <td align="center">${a.birthdate}</td>
	 <td align="center">${a.gender }</td>
	 <td align="center">${a.hp1}</td>
	 <td align="center">${a.hp2}</td>
	 <td align="center">${a.hp3}</td>
	 <td align="center">${a.addr}</td>
	 <td align="center"><fmt:formatDate value="${a.writeday }" pattern="yyyy-MM-dd HH:mm"/></td>
	 <td align="center"><a href="updateform?num=${a.num }">수정</a> /
	 <a href="delete?num=${a.num }">삭제</a></td>

</c:forEach>
	
	
	
	
</table>
</div>
</body>
</html>
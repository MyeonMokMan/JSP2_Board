<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<table width="700" border="1" bgcolor="beige">
			<tr height="40">
				<td colspan="5" align="right">
					<button onclick="location.href='BoardWriteForm.jsp'">글쓰기</button>
				</td>
			</tr>
			<tr height="40">
				<td width="50" align="center">번호</td>
				<td width="320" align="center">제목</td>
				<td width="100" align="center">작성자</td>
				<td width="150" align="center">작성일</td>
				<td width="80" align="center">조회수</td>
			</tr>
			<c:set var="number" value="${number }"></c:set>
			<c:forEach var="bean" items="${vec}">
				<tr height="40">
					<td width="50" align="center">${number }</td>
					<td width="320" align="left">
						<c:if test="${bean.re_step>1 }">
						<c:forEach var="j" begin="1" end="${(bean.re_step-1)*5}">
						 	&nbsp;
						</c:forEach>
						</c:if>
						<a href="BoardInfoControl.do?num=${bean.num }">${bean.subject }</a>
					</td>
					<td width="100" align="center">${bean.writer }</td>
					<td width="150" align="center">${bean.reg_date }</td>
					<td width="80" align="center">${bean.readcount }</td>
				</tr>
			<c:set var="number" value="${number-1 }"></c:set>
			</c:forEach>
		</table>
	</center>
</body>
</html>
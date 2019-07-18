<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글목록</title>
</head>
<body>
	<center>
		<h1>
			<spring:message code="message.board.list.mainTitle"></spring:message>
		</h1>
		<h3>
			${userName }
			<spring:message code="message.board.list.welcomeMsg"></spring:message>
			<a href="logout.do">Log-out</a>
		</h3>

		<!-- 검색 시작 -->
		<form action="getBoardList.do" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td align="right"><select name="serchCondition">
							<c:forEach items="${conditionMap }" var="option">
								<option value="${option.value }">${option.key }
							</c:forEach>
					</select> <input name="searchKeyWord" type="text"> <input
						type="submit"
						value="<spring:message code="message.board.list.search.condition.btn"></spring:message>">
					</td>
				</tr>
			</table>
		</form>

		<!-- 검색 종료 -->
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100"><spring:message
						code="message.board.list.table.head.seq"></spring:message></th>
				<th bgcolor="orange" width="200"><spring:message
						code="message.board.list.table.head.title"></spring:message></th>
				<th bgcolor="orange" width="150"><spring:message
						code="message.board.list.table.head.writer"></spring:message></th>
				<th bgcolor="orange" width="150"><spring:message
						code="message.board.list.table.head.regDate"></spring:message></th>
				<th bgcolor="orange" width="100"><spring:message
						code="message.board.list.table.head.cnt"></spring:message></th>
			</tr>

			<c:forEach items="${boardList }" var="board">
				<tr>
					<td>${board.seq }</td>
					<td><a href="getBoard.do?seq=${board.seq }">${board.title }</a></td>
					<td>${board.writer }</td>
					<td><fmt:formatDate value="${board.regDate }"
							pattern="yyyy-MM-dd" /></td>
					<td>${board.cnt }</td>
				</tr>
			</c:forEach>

		</table>
		<br> <a href="insertBoard.jsp"><spring:message
				code="message.board.list.link.insertBoard"></spring:message></a>
	</center>
</body>
</html>
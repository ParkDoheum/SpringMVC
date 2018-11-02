<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<%@ page import="kr.co.spring.board.model.BoardVO"%>

<script>
	function clkTr(board_no) {		
		//location.href="detail?board_no=" + board_no;
		var form = document.createElement("form");
	    form.method = "POST";
	    form.action = "detail";   

	    var element1 = document.createElement("input");	    
	    element1.value=board_no;
	    element1.name="board_no";
	    
	    form.appendChild(element1);
	    document.body.appendChild(form);
	    form.submit();
	}
</script>
<table>
	<tr>
		<th>번호</th>
		<th>타이틀</th>
		<th>등록날짜</th>
		<th>조회수</th>
		<th>댓글수</th>
	</tr>
	<c:if test="${list != null && list.size() > 0 }">
		<c:forEach items="${list}" var="item">
			<tr onclick="clkTr(${item.board_no})" style="cursor: pointer">
				<td>${item.board_no}</td>
				<td>${item.board_title}</td>
				<td>${item.regdate}</td>
				<td>${item.cnt}</td>
				<td>${item.comment_cnt}</td>
			</tr>
		</c:forEach>
	</c:if>
</table>
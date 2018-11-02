<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h3>${vo.board_title} 조회수(${vo.cnt})</h3>
<div>날짜 : ${vo.regdate }</div>
<div>
	${vo.board_content}
</div>
<form action="detail" method="post">
	<input type="hidden" name="board_no" value="${vo.board_no}">
	<input type="hidden" name="type" value="del">
	<input type="submit" value="삭제">
</form>
<a href="mod?board_no=${vo.board_no}"><input type="button" value="수정"></a>

<br><br>
<div>
	<form action="comment" method="post">
		<input type="hidden" name="board_no" value="${vo.board_no}">
		댓글 <textarea name="comment_content"></textarea>
		<input type="submit" value="등록">
	</form>
</div>
<div>

<c:if test="${commentList.size() > 0}">
<table>
		<tr>
			<th>번호</th>
			<th>내용</th>
			<th>날짜</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${commentList}" var="item">
			<tr>
				<td>${item.comment_no}</td>
				<td>${item.comment_content}</td>
				<td>${item.regdate}</td>
				<td>
					<a href="comment?board_no=${vo.board_no}&comment_no=${item.comment_no}">
						<button>삭제</button>
					</a>
				</td>
			</tr>	
		</c:forEach>
</table>		
</c:if>
</div>
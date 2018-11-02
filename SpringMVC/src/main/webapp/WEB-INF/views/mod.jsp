<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	//유효성 체크
	function chkSubmit() {
		var form = document.frm;
			
		if(form.board_no.value == "") {
			alert("게시글번호가 없습니다.")
			form.board_no.focus();
			return false;
		} else if (form.board_no.value.length != 6) {
			alert("게시글번호가 6자리가 아닙니다.")
			form.board_no.focus();
			return false;
		} else if(form.board_title.value == "") {
			alert("제목이 입력되지 않았습니다.")
			form.board_title.focus();
			return false;
		} else if(form.board_content.value == "") {
			alert("내용이 입력되지 않았습니다.")
			form.board_content.focus();
			return false;
		} else if(form.regdate.value == "") {
			alert("날짜가 입력되지 않았습니다.")
			form.regdate.focus();
			return false;
		} 
				
		return true;
	}
</script>
<form name="frm" action="mod" method="post" onsubmit="return chkSubmit()">
	게시글번호: <input type="text" name="board_no" value="${vo.board_no}"><br>
	제목 : <input type="text" name="board_title" value="${vo.board_title}"><br>
	내용 <textarea name="board_content" rows="10" cols="10">${vo.board_content }</textarea><br>
	날짜 : <input type="text" name="regdate" value="${vo.regdate}"><br>
	<input type="submit" value="수정">
	<input type="button" value="조회">
</form>
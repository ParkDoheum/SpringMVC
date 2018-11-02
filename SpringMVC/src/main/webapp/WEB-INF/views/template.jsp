<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${title}</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
<div class="container">
	<jsp:include page="header.jsp"/>
	<div class="content">
		<jsp:include page="nav.jsp"/>
		<div class="right">
			<jsp:include page="${target}.jsp"/>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</div>
</body>
</html>
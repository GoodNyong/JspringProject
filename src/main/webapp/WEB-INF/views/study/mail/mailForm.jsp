<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
pageContext.setAttribute("newLine", "\n");
%>
<c:set var="ctp" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>mailForm.jsp</title>
<jsp:include page="/WEB-INF/views/include/bs5.jsp" />
<style>
.custom-shadow {
	box-shadow: 0px 0px 20px rgba(100, 149, 237, 0.8) !important; /* 푸른 빛 */
}
/*
	<body class="bg-black text-white">
	<div class="container bg-dark rounded-4 justify-content-center w-100 min-vh-100 overflow-auto custom-shadow">
	<h2 class="p-3">
    <table class="table table-bordered text-center align-middle rounded-3 overflow-hidden">
    */
</style>
</head>
<body class="bg-black text-white">
	<jsp:include page="/WEB-INF/views/include/nav.jsp" />
	<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
	<p><br/></p>
	<div class="container bg-dark rounded-4 justify-content-center w-100 min-vh-100 overflow-auto custom-shadow">
		<h2 class="p-3">메일 보내기</h2>
		<form method="post">
			<table class="table table-bordered text-center align-middle rounded-3 overflow-hidden">
				<tr>
					<th>받는사람</th>
					<td><input type="text" name="toMail" id="toMail" placeholder="받는사람 메일주소를 입력하세요" autofocus required class="form-control" /></td>
				</tr>
				<tr>
					<th>메일제목</th>
					<td><input type="text" name="title" id="title" placeholder="메일 제목을 입력하세요." required class="form-control" /></td>
				</tr>
				<tr>
					<th>메일내용</th>
					<td><textarea rows="7" name="content" id="content" placeholder="메일 내용을 입력하세요" required class="form-control"></textarea></td>
				</tr>
			</table>
			<table class="table table-dark table-borderless text-center rounded-3 overflow-hidden ">
				<tr>
					<td colspan="2">
						<input type="submit" value="메일 보내기" class="btn btn-success me-2" /> 
						<input type="reset" value="다시 입력" class="btn btn-warning me-2" />
					</td>
				</tr>
			</table>
		</form>
	</div>
	<p><br/></p>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
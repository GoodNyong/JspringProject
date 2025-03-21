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
<title>boardInput.jsp</title>
<script src="${ctp }/ckeditor/ckeditor.js">

</script>
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
<body>
	<jsp:include page="/WEB-INF/views/include/nav.jsp" />
	<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
	<p><br /></p>
	<div class="container">
		<h2 class="text-center">게 시 판 글 쓰 기</h2>
		<form name="myform" method="post">
			<table class="table table-bordered">
				<tr>
					<th>글쓴이</th>
					<td><input type="text" name="nickName" id="nickName" value="${sNickName }" readonly class="form-control" /></td>
				</tr>
				<tr>
					<th>글제목</th>
					<td><input type="text" name="title" id="title" placeholder="글제목을 입력하세요" autofocus required class="form-control" /></td>
				</tr>
				<tr>
					<th>글내용</th>
					<td>
						<textarea row="10" name="content" id="CKEDITOR" class="form-control" required></textarea>
						<script type="text/javascript">
							CKEDITOR.replace("content",{
								height:250,
								filebrowserUploadUrl:"${ctp}/imageUpload",
								uploadUrl : "${ctp}/imageUpload"
							});
						</script>
					</td>
				</tr>
				<tr>
					<th>공개여부</th>
					<td><input type="radio" name="openSw" id="openSw1" value="OK" checked /> 공개 &nbsp; <input type="radio" name="openSw" id="openSw2" value="NO" /> 비공개</td>
				</tr>
				<tr>
					<td colspan="2" class="text-center">
						<input type="submit" value="글올리기" class="btn btn-success me-2" />
						<input type="reset" value="다시입력" class="btn btn-warning me-2" />
						<input type="button" value="돌아가기" onclick="location.href='boardList';" class="btn btn-info" />
					</td>
				</tr>
			</table>
			<input type="hidden" name="hostIp" value="${pageContext.request.remoteAddr}"/>
			<input type="hidden" name="mid" value="${sMid}"/>
		</form>
	</div>
	<p>
		<br />
	</p>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
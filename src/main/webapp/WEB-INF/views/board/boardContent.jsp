<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("newLine", "\n"); %>
<c:set var="ctp" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>boardContent.jsp</title>
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
<p><br/></p>
<div class="container"> 
	<h2 class="text-center">글 내용 보기</h2>
	<table class="table table-bordered text-center border-secondary-subtle">
		<tr>
			<th class="table-secondary">글쓴이</th>
			<th>${vo.nickName }</th>
			<th class="table-secondary">글쓴날짜</th>
			<th>${fn:substring(vo.WDate,0,19) }</th>
		</tr>
		<tr>
			<th class="table-secondary">글조회수</th>
			<th>${vo.readNum }</th>
			<th class="table-secondary">접속IP</th>
			<th>${vo.hostIp }</th>
		</tr>
		<tr>
			<th class="table-secondary">글제목</th>
			<td colspan="3" class="text-start">${vo.title}</td>
		</tr>
		<tr>
			<th class="table-secondary">글내용</th>
			<td colspan="3" class="text-start" style="height:250px">${fn:replace(vo.content, newLine, "<br/>")}</td>
		</tr>
	</table>
	<div class="row">
  	<div class="col"><input type="button" value="돌아가기" onclick="location.href='boardList'" class="btn btn-info"/></div>
  	<c:if test="${sNickName == vo.nickName}">
	  	<div class="col text-end">
	  	  <input type="button" value="수정" onclick="location.href='boardUpdate'" class="btn btn-warning"/>
	  	  <input type="button" value="삭제" onclick="delCheck()" class="btn btn-danger"/>
	  	</div>
	  </c:if>
  </div>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
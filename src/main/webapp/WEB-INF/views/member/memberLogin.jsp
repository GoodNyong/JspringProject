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
	<title>.jsp</title>
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
  <h2 class="p-3">로그인</h2>
  <form method="post">
  	<table class="table table-bordered text-center align-middle rounded-3 overflow-hidden">
      <tr>
        <th>아이디</th>
        <td><input type="text" name="mid" id="mid" placeholder="아이디를 입력하세요" autofocus required class="form-control" /></td>
      </tr>
      <tr>
        <th>비밀번호</th>
        <td><input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요." required class="form-control" /></td>
      </tr>
    	<tr>
    		<td class="text-center" colspan="3">
    			<input type="checkbox" name="idSave" checked /> 아이디저장 &nbsp;&nbsp;&nbsp;
    			[<a href="javascript:midSearch()">아이디 찾기</a>] /
    			[<a href="javascript:midSearch()">비밀번호 찾기</a>] 
    		</td>
    	</tr>
    </table>
    <table class="table table-dark table-borderless text-center rounded-3 overflow-hidden ">
      <tr>
        <td colspan="2">
          <input type="submit" value="로그인" class="btn btn-success me-2"/>
          <input type="reset" value="다시입력" class="btn btn-warning me-2"/>
          <input type="button" value="회원가입" onclick="location.href='${ctp}/member/memberJoin';" class="btn btn-primary"/>
        </td>
      </tr>
    </table>
  </form>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
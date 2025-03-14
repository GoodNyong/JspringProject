<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ajaxForm.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs5.jsp" />
  <script>
    'use strict';
    
    function ajaxTest1(idx) {
    	//location.href = "${ctp}/study/ajax/ajaxTest1?idx="+idx;	// 동기식
    	
    	$.ajax({
    		url : "${ctp}/study/ajax/ajaxTest1",
    		type : "post",
    		data : {idx : idx},
    		success:function(res) {
    			$("#demo1").html(res);
    		},
    		error : function() { alert("전송오류!"); }
    	});
    }
  </script>
  <style>
    .custom-shadow {
        box-shadow: 0px 0px 20px rgba(100, 149, 237, 0.8) !important; /* 푸른 빛 */
    }
    /*
	<body class="bg-black text-white">
	<div class="container bg-dark rounded-4 justify-content-center vh-100 custom-shadow">
	<h2 class="p-3">
    <table class="table table-bordered text-center align-middle rounded-3 overflow-hidden">
    */
	</style>
</head>
<body class="bg-black text-white">
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<p><br/></p>
<div class="container bg-dark rounded-4 justify-content-center vh-100 custom-shadow">
  <h2 class="p-3">AJAX 연습</h2>
  <hr/>
   <table class="table table-bordered text-center align-middle rounded-3 overflow-hidden">
    <thead class="table-light">
      <tr>
        <th width="30%">기능</th>
        <th width="70%">설명 / 결과</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>
          <a href="javascript:ajaxTest1(10)" class="btn btn-success">값전달1</a>
        </td>
        <td>
          <span id="demo1">값 전달 후 결과 출력</span>
        </td>
      </tr>
      <tr>
        <td>
          <a href="${ctp}/study/ajax/ajaxTest2_1" class="btn btn-primary">String배열</a>
        </td>
        <td>
          <span>응용: 시(도) / 구(시,군,읍) 출력</span>
        </td>
      </tr>
      <tr>
        <td>
          <a href="${ctp}/study/ajax/ajaxTest2_2" class="btn btn-info">vos 객체</a>
        </td>
        <td>
          <span>응용: VOS 객체 활용</span>
        </td>
      </tr>
    </tbody>
  </table>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
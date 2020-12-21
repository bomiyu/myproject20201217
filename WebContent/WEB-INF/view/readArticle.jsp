<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<link href='https://fonts.googleapis.com/css?family=Poiret+One'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" type="text/css" href="cssboard.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
<style>
.Nanum-Brush-Script {
	font-family: 'Nanum Brush Script', sans-serif
}

h1 {
	color: white;
	font-size: 70px;
}

label {
	color: white;
	font-size: 40px;
}

.form-control {
	font-size: 30px;
}
</style>

<title>Insert title here</title>
</head>
<body id="bgimg" class=" Nanum-Brush-Script" style="height:1500px">

	<div class="container">
		<img src="${pageContext.request.contextPath}/images/sprot1.jpg"
			alt="Responsive image" width="100%" height="350">
	</div>
	<u:navbar />
    <div class="container">
    <div class="row">
      <div class="col-3"></div>
      <div class="col-6">
      

    <table class="table">
    <tbody>
    	
        <tr>
      <th scope="row">번호</th>
      <td>${articleData.article.number }</td>

    </tr>
    <tr>
      <th scope="row">작성자</th>
      <td>${articleData.article.writer.name }</td>

    </tr>
    <tr>
      <th scope="row">제목</th>
      <td><c:out value="${articleData.article.title }"></c:out></td>
    </tr>
        <tr>
         <th scope="row">내용

         </th>
   
      
      
      <td class="read-col"><c:out value="${articleData.content.content }"></c:out></td>
    </tr>
      </tbody>
      
      
      <tr>
        <td colspan="2"><c:set var="pageNo"
            value="${empty param.pageNo ? '1' : param.pageNo }" /> <a
          href="list.do?pageNo=${pageNo}">[목록]</a>
          <c:if
            test="${authUser.id == articleData.article.writer.id}">
            <a href="modify.do?no=${articleData.article.number }">[게시글수정]</a>
            <a href="delete.do?no=${articleData.article.number }">[게시글삭제]</a>
          </c:if></td>
      </tr>
      <tr>
      </tr>
    </table>
    
    <%-- 
    로그인 한 경우만
    댓글 폼 출력
    
    --%>
    <u:replyForm articleNo="${articleData.article.number }"/>
    
    <u:listReply /> 
    
            </div>
      </div>
    </div>

</body>
</html>








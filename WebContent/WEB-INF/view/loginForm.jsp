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
  <!-- .container>.row>.col-3+.col-6>h1+form -->
  <div class="container">
  	<div class="row">
  		<div class="col-3"></div>
  		<div class="col-6">
  			<h1>로그인</h1>
  			<form action="${root }/login.do" method="post">


              <div class="form-group">
                <label for="input1-id">아이디</label>
                <input id="input1-id" type="text" class="form-control" name="id" value="${param.id }" />
                <c:if test="${errors.id }">
                  <small  id="small" class="form-text text-light">
                    ID를 입력하세요.
                  </small>
                </c:if>
              </div>
              <div class="form-group">
                <label for="input2-password">패스워드</label>
                <input id="input2-password" type="password" name="password" class="form-control" />
                <c:if test="${errors.password }">
                  <small  id="small" class="form-text text-light">
                    암호를 입력하세요.
                  </small>
                </c:if>
                
              </div>
              <button type="submit" class="btn btn-secondary  btn-lg">로그인</button>
              
            </form>
  		</div>
  	</div>
  </div>
  
  
</body>
</html>



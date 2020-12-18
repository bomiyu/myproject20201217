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
<body class="bgimg Nanum-Brush-Script" style="height: 1500px">

	<div class="container">
		<img src="${pageContext.request.contextPath}/images/sprot1.jpg"
			alt="Responsive image" width="100%" height="350">
	</div>
	<u:navbar />
  
  <div class="container">
  	<div class="row">
  		<div class="col-3"></div>
  		<div class="col-6">
          <h1>회원 탈퇴</h1>
          <form action="${root }/removeMember.do" method="post">
            <div class="form-group">
              <label for="input1-password">암호</label>
              <input type="password" class="form-control" id="input1-password" name="password" />
              <c:if test="${errors.password }">
                <small class="form-text text-muted">
                  패스워드를 입력해주세요.
                </small>
              </c:if>
              <c:if test="${errors.invalidPassword }">
                <small class="form-text text-muted">
                  패스워드가 일치하지 않습니다.
                </small>
              </c:if>
            </div>
            <button type="submit" class="btn btn-primary">회원 탈퇴</button>
            
          </form>
  		</div>
  	</div>
  </div>
  
</body>
</html>







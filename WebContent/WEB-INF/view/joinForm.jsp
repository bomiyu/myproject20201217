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
		<!-- 
    <div class="row">
      <div class="col-3">
      	<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam ex voluptatum tenetur suscipit quod fuga nemo nam molestiae. A minus suscipit similique saepe nam dignissimos aliquam sit obcaecati pariatur natus!</div>
      </div>
      <div class="col-6">
      	<div>Ut amet consequatur impedit ullam at atque sunt. Totam eveniet ducimus a possimus est veritatis architecto excepturi iusto magnam mollitia quae assumenda pariatur earum quibusdam maiores repellat consectetur omnis ab.</div>
      </div>
      <div class="col-3">
      	<div>Aliquam voluptas doloribus esse distinctio est officiis ipsam eaque neque eligendi cum officia illum fugit voluptate voluptatem veritatis eius obcaecati placeat minus dignissimos nisi corporis animi possimus illo beatae modi.</div>
      </div>
    </div>
   -->

		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">
				<h1>회원 가입</h1>
				<form action="${root }/join.do" method="post">
					<div class="form-group">
						<label for="input1-id">아이디</label> <input type="text" name="id"
							value="${param.id }" class="form-control" id="input1-id">
						<c:if test="${errors.id }">
							<small class="form-text text-muted"> ID를 입력하세요. </small>
						</c:if>
						<c:if test="${errors.duplicateId }">
							<small class="form-text text-muted"> 이미 사용중인 아이디입니다. </small>
						</c:if>
					</div>
					<div class="form-group">
						<label for="input2-name">이름</label> <input type="text" name="name"
							value="${param.name }" id="input2-name" class="form-control">

						<c:if test="${errors.name }">
							<small class="form-text text-muted"> 이름을 입력하세요. </small>
						</c:if>
					</div>
					<div class="form-group">
						<label for="input3-password">암호</label> <input type="password"
							name="password" class="form-control" id="input3-password">
						<c:if test="${errors.password }">
							<small class="form-text text-muted"> 암호를 입력하세요. </small>
						</c:if>
					</div>
					<div class="form-group">
						<label for="input4-confirmPassword">확인</label> <input
							type="password" name="confirmPassword" class="form-control"
							id="input4-confirmPassword">
						<c:if test="${errors.confirmPassword }">
							<small class="form-text text-muted"> 확인을 입력하세요. </small>
						</c:if>
						<c:if test="${errors.notMatch }">
							<small class="form-text text-muted"> 암호와 확인이 일치하지 않습니다. </small>
						</c:if>
					</div>
					<button type="submit" class="btn btn-primary">회원 가입</button>
				</form>
			</div>
			<div class="col-3"></div>
		</div>


	</div>



</body>
</html>




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

#bgimg {
	border: 0;
	padding: 0;
	min-height: 100%;
	min-width: 100%;
	background-image: url("../images/enha2.png");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	background-color: #a7acc7;
	background-attachment: fixed; /* 스크롤해도 배경이미지가 안움직이게끔 */
}

h1 {
	color: white;
	font-size: 40px;
}

p {
	color: white;
	font-size: 20px;
}
</style>

<title>Insert title here</title>
</head>
<body id="bgimg" class=" Nanum-Brush-Script" style="height: 1500px">

	<div class="container">
		<img src="${pageContext.request.contextPath}/images/sprot1.jpg"
			alt="Responsive image" width="100%" height="350">
	</div>
	<u:navbar />

	<div class="container">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-10">
				<h1>게시글 수정</h1>
				<form action="modify.do" method="post">
					<input type="text" name="no" value="${modReq.articleNumber }"
						hidden="" />
					<p>번호 : ${modReq.articleNumber }</p>
					<p>
						<label for="textarea1-title">제목</label>

						   <input id="input1-title" name="title" type="text" value="${modReq.title }" class="form-control"/>
						<c:if test="${errors.title }">    <small class="form-text text-muted">
                  제목을 입력하세요.
                </small></c:if>
					</p>
					<p>
						<label for="textarea1-content">내용</label>
						<textarea class="form-control" name="content"
							id="textarea1-content" cols="30" rows="10">${modReq.content }</textarea>
					</p>
					<input type="submit" value="글 수정" class="btn btn-secondary  btn-lg" />
				</form>
			</div>
			<div class="col-1"></div>
		</div>

	</div>
</body>
</html>



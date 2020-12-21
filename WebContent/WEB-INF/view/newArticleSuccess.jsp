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
  <h1>게시글을 등록했습니다.</h1>
  <a href="${root }/article/list.do" class="text-light">[게시글목록보기]</a>
  <a href="${root }/article/read.do?no=${newArticleNo}" class="text-light">[게시글내용보기]</a>
</div>
</body>
</html>




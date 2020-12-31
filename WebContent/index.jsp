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

.main-title {
	color: white;
	font-size: 100px;
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

	<div class="container main-title">
		<div>같이함께할 운동인들 모여라!</div>
		<h3>오늘의 에너지 음악입니다~~</h3>
		<div class="embed-responsive embed-responsive-16by9">
			<iframe width="1280" height="720"
				src="https://www.youtube.com/embed/sTNq5qiCoXA" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</div>
		<h3 style="font-size: 50px">slow and strady wins the race</h3>
		<div style="font-size: 50px">-501호 운동 소모임-</div>



	</div>

</body>
</html>






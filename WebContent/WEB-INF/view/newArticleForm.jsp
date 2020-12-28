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

<link rel="stylesheet" type="text/css" href="cssboard.css?ver=1">
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
.navbar.bg-dark {
	background-color: rgba(0, 0, 0, .5) !important;
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

label {
	color: white;
	font-size: 20px;
}

#myModal {delay = 5;
	
}
</style>

<title>Insert title here</title>
</head>
<body id="bgimg" class="Nanum-Brush-Script" style="height: 1500px">

	<div class="container">
		<img src="${pageContext.request.contextPath}/images/sprot1.jpg"
			alt="Responsive image" width="100%" height="350">
	</div>
	<u:navbar />
	<div class="container">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-10">
				<h1>게시글 쓰기</h1>
				<form action="${root }/article/write.do" method="post">

					<div class="form-group">
						<label for="input1-title">제목</label> <input
							value="${param.title }" type="text" class="form-control"
							id="input1-title" name="title" />
						<c:if test="${errors.title }">
							<small class="form-text text-light"> 제목을 입력하세요. </small>
						</c:if>
					</div>

					<div class="form-group">
						<label for="textarea1-content">내용</label>
						<textarea name="content" id="textarea1-content" cols="30" rows="10"
							class="form-control">${param.content }</textarea>
					</div>
					<button type="submit" class="btn btn-secondary  btn-lg"
						data-toggle="modal" data-target="#myModal">글 등록</button>



				</form>

				<div class="modal fade" id="myModal" role="content" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">오늘도 오셨군요~!</h4>
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">×</span>
								</button>
							</div>
							<div class="modal-body">
								<p>게시글 등록완료!^_^!!!</p>
							</div>



						</div>

					</div>

				</div>

			</div>


			<br /> <br />
			<div class="col-1"></div>

		</div>
	</div>



</body>
</html>
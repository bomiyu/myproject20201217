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
#bgimg{
		border: 0;
    padding: 0; 
    min-height: 100%;
    min-width: 100%;
    background-image: url("../images/enha2.png");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-color: #a7acc7;
	background-attachment: fixed;  /* 스크롤해도 배경이미지가 안움직이게끔 */
}
</style>

<title>Insert title here</title>
</head>
<body id="bgimg" class="Nanum-Brush-Script" style="height:1500px">

	<div class="container">
		<img src="${pageContext.request.contextPath}/images/sprot1.jpg"
			alt="Responsive image" width="100%" height="350">
	</div>
	<u:navbar />
<div class="container">
	<div class="row">
		<div class="col-3"></div>
		<div class="col-6">
			<h1>게시글 쓰기</h1>
			<form action="${root }/article/write.do" method="post">
              <!-- div.form-group>label[for=input1-title]+input.form-control#input1-title[name=title] -->
              <div class="form-group">
                <label for="input1-title">제목</label>
                <input value="${param.title }" type="text" class="form-control" id="input1-title" name="title" />
                <c:if test="${errors.title }">
                  <small class="form-text text-light">
                    제목을 입력하세요.
                  </small>
                </c:if>
              </div>
            
              <div class="form-group">
                <label for="textarea1-content">내용</label>
                <textarea name="" id="textarea1-content" cols="30" rows="10" class="form-control">${param.content }</textarea>
              </div>
              <button type="submit" class="btn btn-primary">글 등록</button>
            </form>
		</div>
	</div>
</div>


</body>
</html>
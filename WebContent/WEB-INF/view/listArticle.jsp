<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="cssboard.css?ver=1">
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
.navbar.bg-dark {
	background-color: rgba(0, 0, 0, .5) !important;
}

h1 {
	color: white;
	font-size: 40px;
}

td {
	color: white;
	font-size: 20px;
}

th {
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
				<h1>게시글 목록</h1>

				<div class="list-container">


					<table class="table table-striped">
						<thead>
							<tr>
								<th class="num-col text-center">No.</th>
								<th class="title-col">제목[댓글수]</th>
								<th class="writer-col" style="width: 70px">작성자</th>
								<th class="read-col text-center" style="width: 70px">조회수</th>
								<td>댓글수</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="article" items="${articlePage.content }">
								<tr>
									<td class="text-center">${article.number }</td>
									<td><a
										href="${root }/article/read.do?no=${article.number }&pageNo=${articlePage.currentPage}"
										class="text-light"> <c:out value="${article.title }" />
									</a></td>
									<td>${article.writer.name }</td>
									<td class="text-center">${article.readCount }</td>
									<td>[${Reply.replycount }]</td>
								</tr>
							</c:forEach>
						</tbody>

					</table>

				</div>
				<div class="mt-5 pagenation-container d-flex justify-content-center">
					<nav aria-label="Page navigation example">

						<ul class="pagination">
							<c:if test="${articlePage.startPage > 5}">
								<li class="page-item"><a class="page-link"
									href="${root }/article/list.do?pageNo=${articlePage.startPage - 5 }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${articlePage.startPage }"
								end="${articlePage.endPage }" var="pNo">
								<li class="page-item"><span><a class="page-link"
										href="${root }/article/list.do?pageNo=${pNo}"> ${pNo } <span
											class="sr-only">(current)</span>
									</a> </span></li>

							</c:forEach>
							<c:if test="${articlePage.endPage < articlePage.totalPages }">
								<li class="page-item"><a class="page-link"
									href="${root }/article/list.do?pageNo=${articlePage.startPage + 5 }">&raquo;</a></li>
							</c:if>
						</ul>
					</nav>



				</div>
			</div>
			<div class="col-1"></div>
		</div>
	</div>


</body>
</html>



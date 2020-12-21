<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="cssboard.css?after ">
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
      
      
        <h1>게시글 목록</h1>

        <div class="list-container">
          <table class="table table-striped">
            <thead>
              <tr>
                <th class="num-col"><i class="fab fa-slack-hash"></i></th>
                <th class="title-col">제목</th>
                <th class="read-col"><i class="fas fa-eye"></i></th>
                <th class="writer-col"><i class="fas fa-user-edit"></i></th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="article" items="${articlePage.content }">
                <tr>
                  <td class="text-right">${article.number }</td>
                  <td>
                  <a href="${root }/article/read.do?no=${article.number }&pageNo=${articlePage.currentPage}">
                    <c:out value="${article.title }" />
                  </a>
                  </td>
                  <td class="text-right">${article.readCount }</td>
                  <td>${article.writer.name }</td>
                </tr>
              </c:forEach>
            </tbody>

          </table>

        </div>
        <div class="mt-5 pagenation-container d-flex justify-content-center">
          <nav aria-label="Page navigation example">
            <ul class="pagination">
              <c:if test="${articlePage.startPage > 5}">
                <li class="page-item"><a class="page-link" href="${root }/article/list.do?pageNo=${articlePage.startPage - 5 }">Previous</a></li>
              </c:if>
              
              <c:forEach begin="${articlePage.startPage }" end="${articlePage.endPage }" var="pNo">
                <li class="page-item"><a class="page-link" href="${root }/article/list.do?pageNo=${pNo}">${pNo }</a></li>
              
              </c:forEach>
              <c:if test="${articlePage.endPage < articlePage.totalPages }">
                <li class="page-item"><a class="page-link" href="${root }/article/list.do?pageNo=${articlePage.startPage + 5 }">Next</a></li>
              </c:if>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>


</body>
</html>
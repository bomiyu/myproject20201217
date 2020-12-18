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

<link href='https://fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'> 

<link rel= "stylesheet" type="text/css" href="cssboard.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<style>
.Nanum-Brush-Script{font-family: 'Nanum Brush Script', sans-serif}

.main-title{
	color:white;
	font-size:100px;
}
</style>

<title>Insert title here</title>
</head>
  <!-- .container>.row>.col-3+.col-6>h1+form -->
  <div class="container">
  	<div class="row">
  		<div class="col-3"></div>
  		<div class="col-6">
  			<h1>암호 변경</h1>
  			<form action="${root }/changePwd.do" method="post">
              <!-- div.form-group*2>label+input.form-control -->
              <div class="form-group">
                <label for="input1-curPwd">현재 암호</label>
                <input id="input1-curPwd" type="password" class="form-control" name="curPwd" />
                
                <c:if test="${errors.curPwd }">
                  <small class="form-text text-muted">
               현재 암호를 입력하세요.
                  </small>
                </c:if>
                
                   <c:if test="${errors.badCurPwd }">
                  <small class="form-text text-muted">
          		현재 암호와 일치하지 않습니다
                  </small>
     
                  
                </c:if>

              </div>
              
              
              <div class="form-group">
                <label for="input2-newPwd">새 암호</label>
                <input id="input2-newPwd" type="password" name="newPwd" class="form-control" />
                <c:if test="${errors.newPwd }">
                  <small class="form-text text-muted">
                   새 암호를 입력하세요
                  </small>
                </c:if>
                
              </div>
              <button type="submit" class="btn btn-primary">암호 변경</button>
              
            </form>
  		</div>
  	</div>
  </div>
  
  
</body>
</html>


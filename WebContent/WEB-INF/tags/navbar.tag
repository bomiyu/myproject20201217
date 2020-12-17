<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>

<div class="container mb-3">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="${root }/index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${root }/article/list.do">글 목록</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${root }/article/write.do">글 쓰기</a>
      </li>
   
    </ul>
  </div>


	<u:notLogin>
		<ul class="navbar-nav">
			<li class="nav-item"><a href="${root }/join.do" class="nav-link"><i
					class="fas fa-file-alt"></i> 회원가입</a></li>
			<li class="nav-item"><a href="${root }/login.do"
				class="nav-link"> <i class="fas fa-sign-in-alt"></i> 로그인
			</a></li>
		</ul>
	</u:notLogin>

	<u:isLogin>
		<ul class="navbar-nav">
			<li class="nav-item"><a href="${root }/removeMember.do"
				class="nav-link"> <i class="fas fa-door-open"></i> 탈퇴
			</a></li>
			<li class="nav-item"><a href="${root }/changePwd.do"
				class="nav-link"><i class="fas fa-user-edit"></i> 변경</a></li>
			<li class="nav-item"><a href="${root }/logout.do"
				class="nav-link"><i class="fas fa-sign-out-alt"></i> 로그아웃</a></li>
		</ul>
	</u:isLogin>
	


</nav>
</div>
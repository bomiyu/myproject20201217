<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="articleNo" type="java.lang.Integer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty sessionScope.authUser }">

  

  <form class="form-inline " action="${root }/reply/add.do" method="post">
        <input type="number" value="${ articleNo}" name="no" hidden />
      <input type="number" value="${ param.pageNo}" name="pageNo" hidden />
    <input class="shadow p-3 mb-5 bg-white rounded " type="text" name="body" placeholder="댓글을 여기 입력하세요~" aria-label="Search" style="height:100px; width:90%; font-size:15pt;">
    <input type="submit" value="댓글등록" class="btn btn-secondary mx-auto shadow p-3 mb-5 rounded"/>
  </form>



</c:if>




 
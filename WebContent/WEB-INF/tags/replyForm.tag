<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="articleNo" type="java.lang.Integer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty sessionScope.authUser }">
<%--   <div>
    <form action="${root }/reply/add.do" method="post">
      <input type="number" value="${ articleNo}" name="no" hidden />
      <input type="number" value="${ param.pageNo}" name="pageNo" hidden />
      <input type="text" name="body" style="width: 700px"/>
      <input type="submit" value="댓글등록" class="btn btn-secondary "/>
    </form>
  </div>
   --%>
  

  <form class="form-inline" action="${root }/jsp/board/comment/CommentWriteAction.co" method="post">
        <input type="number" value="${ articleNo}" name="no" hidden />
      <input type="number" value="${ param.pageNo}" name="pageNo" hidden />
    <input type="text" name="body" placeholder="댓글을 여기 입력하세요~" aria-label="Search" style="width:90%">
    <input type="submit" value="댓글등록" class="btn btn-secondary "/>
  </form>

<%-- 
<form name="form1" method="post" action="${root }/reply/add.do">
<div class = "search row" style = "margin:auto;">
    <div class = "col-xs-2 col-sm-2" style = "margin:auto;">
    <select name="search_option" class = "form-control" >
        <option value="user_id"
<c:if test="${map.search_option == 'user_id'}">selected</c:if>
        >작성자</option>
        <option value="title" 
<c:if test="${map.search_option == 'title'}">selected</c:if>
        >제목</option>
        <option value="content" 
<c:if test="${map.search_option == 'content'}">selected</c:if>
        >내용</option>
        <option value="all" 
<c:if test="${map.search_option == 'all'}">selected</c:if>
        >작성자+내용+제목</option>
    </select>
 </div>   
 
 
<div class = "col-xs-2 col-sm-2" style = "margin:auto;">
    <div class = "input-group" style = "margin:auto;">
    <input type = "text" name="keyword" value="${map.keyword}" class = "form-control" style="width:300px;" >  </div>  </div>
    <input type = "submit" value="조회" class="btn btn-secondary"> 
    <button type = "button" id = "btnWrite"  class="btn btn-secondary">글쓰기</button>
    
</div>
     
</form>
 --%>

</c:if>




 
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
.line{border:none; border:1px dashed gray; }
</style>

<div>
<h1>댓글</h1>
<hr class="line">

	<table class="table" frame=void>
		<c:forEach items="${replyList }" var="reply">
			<c:set var="i" value="${i+1 }" />
			<tbody>
				<tr>
					<th scope="row">${i}</th>
					<td style="width: 700px" readonly>${reply.body }</td>
					<td>${reply.memberId }</td>
					<td>${reply.regDate }</td>
				</tr>
			</tbody>
		</c:forEach>



	</table>


</div>



<c:forEach items="${list }" var="v">

  <tr>


  <td>

  <jsp:useBean id="today" class="java.util.Date"></jsp:useBean>

  <fmt:parseNumber value="${today.time / (1000 * 60 * 60 * 24)}" var="nowDays" integerOnly="true" />      
  <fmt:parseNumber value="${v.reg_date.time / (1000 * 60 * 60 * 24)}" var="regDays" integerOnly="true" />

  <c:set value="${nowDays - regDays }" var="dayDiff" />

  <c:choose>

    <c:when test="${dayDiff == 0 }">

        <fmt:formatDate value="${v.reg_date }" pattern="HH:mm:ss"/>

    </c:when>

    <c:otherwise>

        <fmt:formatDate value="${v.reg_date }" pattern="yyyy.MM.dd"/>

    </c:otherwise>

  </c:choose>

  </td>


  </tr>

</c:forEach>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
.line{border:none; border:1px dashed gray; }
</style>

<div>
 <h3 style="color:white";>댓글 수 : ${total.replycount }</h3>
<hr class="line">

	<table class="table" frame=void>
		<c:forEach items="${replyList }" var="reply">
		<c:set var="i" value="${i+1 }"/>
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


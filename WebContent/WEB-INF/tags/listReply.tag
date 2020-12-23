<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div>

	<table class="table">
		<thead class="thead-light">
			<tr>
				<th scope="col">NO.</th>
				<th scope="col">내용</th>
				<th scope="col">작성자</th>
			</tr>
		</thead>




		<c:forEach items="${replyList }" var="reply">
			<c:set var="i" value="${i+1 }" />
			<tbody>
				<tr>
					<th scope="row">${i}</th>
					<td style="width: 700px" readonly>${reply.body }</td>
					<td>${reply.memberId }</td>
				</tr>
			</tbody>
		</c:forEach>



	</table>


</div>
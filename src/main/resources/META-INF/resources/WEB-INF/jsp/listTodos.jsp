<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<%-- 		<h1>Welcome ${name}</h1> --%>
	<!-- 		<hr> -->
	<h2>Your Todos Are</h2>
	<table class="table">
		<thead>
			<tr>
				<!-- 					<th>id</th> -->
				<th>Description</th>
				<th>Target Date</th>
				<th>Is Done?</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<%-- 						<td>${todo.id}</td> --%>
					<td>${todo.description}</td>
					<td>${todo.targetDate}</td>
					<td>
						<form>
							<c:choose>
								<c:when test="${todo.done}">
									<input type="checkbox" checked>
								</c:when>
								<c:otherwise>
									<input type="checkbox">
								</c:otherwise>
							</c:choose>
						</form> 
					</td>
					<td><a href="delete-todo?id=${ todo.id }"
						class="btn btn-warning">DELETE</a></td>
					<td><a href="update-todo?id=${ todo.id }"
						class="btn btn-success">UPDATE</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="add-todo" class="btn btn-success">Add Todo</a>
</div>

<%@ include file="common/footer.jspf"%>
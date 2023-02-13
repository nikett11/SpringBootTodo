<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<%-- 		<h1>Welcome ${name}</h1> --%>
	<!-- 		<hr> -->
	<h2>Enter Todo details</h2>
	<form:form method="post" modelAttribute="todo">
		<fieldset class="mb-3">
			<form:label path="description">Description</form:label>
			<form:input type="text" path="description" required="required" />
			<form:errors path="description" cssClass="text-warning" />
		</fieldset>

		<fieldset class="mb-3">
			<form:label path="targetDate">Target Date</form:label>
			<form:input type="text" path="targetDate" required="required" />
			<%-- 				<form:errors path="targetDate" cssClass="text-warning" /> --%>
		</fieldset>

		<form:input type="hidden" path="id" />
		<fieldset class="mb-3">
			<form:label path="description">Todo</form:label>
			<form:checkbox path="done" />
		</fieldset>
		<input type="submit" class="btn btn-success">
	</form:form>
</div>

<%@ include file="common/footer.jspf"%>

<script type="text/javascript">
	$('#targetDate').datepicker({
		format : 'yyyy-mm-dd',
		startDate : '-3d'
	});
</script>



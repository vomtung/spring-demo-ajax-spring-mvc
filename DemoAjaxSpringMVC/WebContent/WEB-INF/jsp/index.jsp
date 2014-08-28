<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/resources/js/jquery-1.6.2.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		$('.clickme').click(function() {
			$.ajax({
				type : 'POST',
				url : '${pageContext.request.contextPath}/result/helloajax.html',
				success : function(data) {
					$('.result').html(data);
				}
			});
		});

		$('.sum').click(function() {
			$.ajax({
				type : 'POST',
				url : '${pageContext.request.contextPath}/result/sum/1/2.html',
				success : function(data) {
					$('.result').html(data);
				}
			});
		});

		$('.json').click(function() {
			$.ajax({
				type : 'GET',
				headers: { 
			        Accept : "application/json; charset=utf-8",
			        "Content-Type": "application/json; charset=utf-8"
			    },
				url : '${pageContext.request.contextPath}/result/json.html',
				success : function(data) {
					$('.result').html(data.id + ' - ' + data.name);
				}
			});
		});

		$('.listjson').click(function() {
			$.ajax({
				type : 'GET',
				headers: { 
			        Accept : "application/json; charset=utf-8",
			        "Content-Type": "application/json; charset=utf-8"
			    },
				url : '${pageContext.request.contextPath}/result/listjson.html',
				success : function(data) {
					var result = "";
					for(var i=0; i<data.length;i++)
						result += "<br>" + data[i].id + ' - ' + data[i].name;
					$('.result').html(result);
				}
			});
		});

	});
</script>

</head>
<body>

	<input type="button" class="clickme" value="Click me">
	<input type="button" class="sum" value="Sum">
	<input type="button" class="json" value="JSON">
	<input type="button" class="listjson" value="List JSON">
	<div class="result"></div>

</body>
</html>
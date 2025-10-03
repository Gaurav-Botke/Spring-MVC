<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet Info</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f4f6f8;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 700px;
	margin: 50px auto;
	padding: 30px;
	background: #ffffff;
	border-radius: 12px;
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
}

h1 {
	color: #e74c3c;
	text-align: center;
	margin-bottom: 30px;
	font-size: 2.2em;
	letter-spacing: 1px;
}

.info {
	font-size: 1.1em;
	line-height: 2em;
	color: #333;
}

.info b {
	color: #2c3e50;
}

.info div {
	margin-bottom: 10px;
}

/* Add a subtle separator line */
.separator {
	height: 2px;
	background: #e0e0e0;
	margin: 20px 0;
	border-radius: 1px;
}
</style>
</head>
<body>

	<div class="container">
		<h1>SERVLET INFO</h1>

		<div class="info">
			<div>
				<b>Web Application Name ::</b> ${WACN}
			</div>
			<div>
				<b>Web Application Logical Name ::</b> ${WALN}
			</div>
			<div>
				<b>Web Application Path ::</b> ${path}
			</div>
			<div>
				<b>Session Id ::</b> ${sesId}
			</div>
		</div>

		<div class="separator"></div>

		<div class="info">
			<!-- Optional extra info can go here -->
			<p style="color: #555; font-size: 0.95em;">This page shows
				runtime details of the current servlet session and web application
				context.</p>
		</div>
	</div>

</body>
</html>

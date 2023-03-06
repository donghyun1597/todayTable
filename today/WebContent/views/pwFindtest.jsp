<!DOCTYPE html>
<html>
<head>
	<title>ID/Password Search Form</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f5f5f5;
		}
		.container {
			margin: auto;
			padding: 20px;
			background-color: #fff;
			border-radius: 5px;
			box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
			width: 400px;
		}
		h1 {
			text-align: center;
			color: #333;
		}
		label {
			display: block;
			margin-bottom: 10px;
			color: #555;
		}
		input[type="text"], input[type="password"] {
			display: block;
			width: 100%;
			padding: 10px;
			border-radius: 5px;
			border: none;
			box-shadow: inset 0px 0px 5px 0px rgba(0,0,0,0.1);
			margin-bottom: 20px;
		}
		input[type="submit"] {
			background-color: #333;
			color: #fff;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}
		input[type="submit"]:hover {
			background-color: #444;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>ID/Password Search</h1>
		<form>
			<label for="id">ID</label>
			<input type="text" id="id" name="id" placeholder="Enter your ID">
			<label for="password">Password</label>
			<input type="password" id="password" name="password" placeholder="Enter your password">
			<input type="submit" value="Search">
		</form>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<title>Sign in</title>

<style>
/* Style all input fields */
body {
	background-color: LightGrey;
	font-family: 'Ubuntu', sans-serif;
}

/* Style the submit button */
.submit {
	width: 140px;
	height: 45px;
	font-family: 'Ubuntu', sans-serif;
	font-size: 15px;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
	padding-left: 40px;
	padding-right: 40px;
	padding-bottom: 10px;
	padding-top: 10px;
	margin-left: 32%;
	padding-right: 40px;
	padding-bottom: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-top: 10px;
}

.submit:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}

/* Style the container for inputs */
.container {
	background-color: #FFFFFF;
	width: 400px;
	height: 400px;
	margin: 7em auto;
	border-radius: 1.5em;
	box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
}

/* The message box is shown when the user clicks on the password field */
#message {
	background-color: #FFFFFF;
	color: #000;
	position: relative;
	padding: 50px;
	margin-top: 10px;
	width: 400px;
	height: 300px;
	margin: 7em auto;
	box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
	border-radius: 1.5em;
	font-family: 'Ubuntu', sans-serif;
	display: none;
}

#message p {
	padding: 10px 35px;
	font-size: 18px;
}

.valid {
	color: green;
}

.valid:before {
	position: relative;
	left: -35px;
	content: "\2713";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
	color: red;
}

.invalid:before {
	position: relative;
	left: -35px;
	content: "\274C";
}

/*Sign in button*/
.sign {
	padding-top: 40px;
	color: Black;
	font-family: 'Ubuntu', sans-serif;
	font-weight: bold;
	font-size: 50px;
}

/*Username text-box*/
.un {
	width: 76%;
	color: rgb(38, 50, 56);
	font-weight: 700;
	font-size: 14px;
	letter-spacing: 1px;
	background: rgba(136, 126, 126, 0.04);
	padding: 10px 20px;
	border: none;
	border-radius: 20px;
	outline: none;
	box-sizing: border-box;
	border: 2px solid rgba(0, 0, 0, 0.02);
	margin-bottom: 50px;
	margin-left: 46px;
	text-align: center;
	margin-bottom: 27px;
	font-family: 'Ubuntu', sans-serif;
}

/*Password text-box*/
.pass {
	width: 76%;
	color: rgb(38, 50, 56);
	font-weight: 700;
	font-size: 14px;
	letter-spacing: 1px;
	background: rgba(136, 126, 126, 0.04);
	padding: 10px 20px;
	border: none;
	border-radius: 20px;
	outline: none;
	box-sizing: border-box;
	border: 2px solid rgba(0, 0, 0, 0.02);
	margin-bottom: 50px;
	margin-left: 46px;
	text-align: center;
	margin-bottom: 27px;
	font-family: 'Ubuntu', sans-serif;
}
</style>
</head>

<body 	style="background-image: url('https://images.unsplash.com/photo-1549637642-90187f64f420?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&amp;ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=753&amp;q=80'); background-repeat: no-repeat; background-attachment: fixed; background-position: center; background-size: cover;">


	<div class="container">
		<p class="sign" align="center">Sign in</p>
		<form method="post" action="/login">
			<br> <input class="un" type="text" align="center" id="usrname"
				name="usrname" placeholder="Username" required> <br> <br>
			<input class="pass" type="password" align="center"
				placeholder="Password" id="psw" name="psw"
				pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
				title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
				required> <br> <input class="submit" type="submit"
				align="center" value="Sign in">
		</form>
	</div>



	<div id="message">
		<h3 align="center">Password must contain the following:</h3>
		<p id="letter" class="invalid">
			A <b>lowercase</b> letter
		</p>
		<p id="capital" class="invalid">
			A <b>capital (uppercase)</b> letter
		</p>
		<p id="number" class="invalid">
			A <b>number</b>
		</p>
		<p id="length" class="invalid">
			Minimum <b>8 characters</b>
		</p>
	</div>

	<script>
		var myInput = document.getElementById("psw");
		var letter = document.getElementById("letter");
		var capital = document.getElementById("capital");
		var number = document.getElementById("number");
		var length = document.getElementById("length");

		// When the user clicks on the password field, show the message box
		myInput.onfocus = function() {
			document.getElementById("message").style.display = "block";
		}

		// When the user clicks outside of the password field, hide the message box
		myInput.onblur = function() {
			document.getElementById("message").style.display = "none";
		}

		// When the user starts to type something inside the password field
		myInput.onkeyup = function() {
			// Validate lowercase letters
			var lowerCaseLetters = /[a-z]/g;
			if (myInput.value.match(lowerCaseLetters)) {
				letter.classList.remove("invalid");
				letter.classList.add("valid");
			} else {
				letter.classList.remove("valid");
				letter.classList.add("invalid");
			}

			// Validate capital letters
			var upperCaseLetters = /[A-Z]/g;
			if (myInput.value.match(upperCaseLetters)) {
				capital.classList.remove("invalid");
				capital.classList.add("valid");
			} else {
				capital.classList.remove("valid");
				capital.classList.add("invalid");
			}

			// Validate numbers
			var numbers = /[0-9]/g;
			if (myInput.value.match(numbers)) {
				number.classList.remove("invalid");
				number.classList.add("valid");
			} else {
				number.classList.remove("valid");
				number.classList.add("invalid");
			}

			// Validate length
			if (myInput.value.length >= 8) {
				length.classList.remove("invalid");
				length.classList.add("valid");
			} else {
				length.classList.remove("valid");
				length.classList.add("invalid");
			}
		}
	</script>

</body>
</html>

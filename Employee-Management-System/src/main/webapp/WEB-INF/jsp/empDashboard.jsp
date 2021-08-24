<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@
use postcss-preset-env {
	stage: 0;
}

/* helpers/accessibility.css */
.invisible {
	left: -999px;
	top: -999px;
	overflow: hidden;
	position: absolute;
}

/* helpers/align.css */
.align {
	margin-top: -50px;
	display: grid;
	place-items: center;
	font-family: 'Ubuntu', sans-serif;
	font-size: 50px;
}

body {
	margin: 0px;
	min-block-size: 107vh;
	font-family: 'Ubuntu', sans-serif;
}

/* modules/icon.css */
.icons {
	display: none;
}

.icon {
	block-size: 1em;
	display: inline-block;
	inline-size: 2em;
	vertical-align: middle;
}

.icon--2x {
	text-align: center;
	font-size: 6rem;
	margin-left: 1rem;
	font-size: 6rem;
}

/* modules/image.css */
svg {
	max-inline-size: 100%;
}

/* modules/navigation.css */
:root { -
	-navigation-border-radius: 0.25em; -
	-navigation-anchor-padding: 1.5em;
}

.navigation {
	border-radius: 2rem;
	box-shadow: 0 0.5em 1em rgba(0, 0, 0, 0.3);
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
}

.navigation ul {
	list-style: none;
	margin: 5px;
	padding: 10px;
}

.navigation a {
	display: block;
	padding: var(- -navigation-anchor-padding);
	position: relative;
	text-decoration: none;
	padding: var(- -navigation-anchor-padding);
}

.navigation a:focus::after, .navigation a:hover::after {
	opacity: 1;
	visibility: visible;
}

.navigation a::after {
	block-size: 100%;
	box-shadow: 0 0.5em 1em rgba(0, 0, 0, 0.3);
	content: '';
	inline-size: 70%;
	left: 23px;
	opacity: 0;
	position: absolute;
	top: 0px;
	transition: opacity 0.3s;
}

.navigation--inline ul {
	display: flex;
}

svg {
	transform: translateX(30px);
}

div {
	color: White;
}
</style>
</head>
<body
	style="background-image: url('https://images.unsplash.com/photo-1549637642-90187f64f420?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&amp;amp;ixlib=rb-1.2.1&amp;amp;auto=format&amp;amp;fit=crop&amp;amp;w=753&amp;amp;q=80'); background-repeat: no-repeat; background-attachment: fixed; background-position: center; background-size: cover; backdrop-filter: blur(10px); height: 100%; width: 100%;">
<body class="align">

	<div>
		<h1>Dashboard</h1>
	</div>
	<nav class="navigation navigation--inline">
		<ul>

			<li><a href="/api/entry"> <svg class="icon icon--2x">
            <use xlink:href="#icon-attendance" />
          </svg> <span class="invisible">Attendance Status</span>
			</a></li>
			<li><a href="/api/status"> <svg class="icon icon--2x">
            <use xlink:href="#icon-AttendanceStatus" />
          </svg> <span class="invisible">Attendance Status</span>
			</a></li>
			<li><a href="/api/log"> <svg class="icon icon--2x">
            <use xlink:href="#icon-logout" />
          </svg> <span class="invisible">Sign outs</span>
			</a></li>
			

		</ul>
	</nav>


	<svg xmlns="http://www.w3.org/2000/svg" class="icons">
    <symbol id="icon-logout" width="100" height="100"
			viewBox="0 0 24 24" fill="none" stroke="#d1cccc" stroke-width="1.5"
			stroke-linecap="round" stroke-linejoin="round"
			<span class="tooltiptext">Tooltip text</span>>
		<path d="M18.36 6.64a9 9 0 1 1-12.73 0"></path>
		<line x1="12" y1="2" x2="12" y2="12"></line>  
    </symbol>
    
    <symbol id="icon-attendance" width="100" height="100"
			viewBox="0 0 24 24" fill="none" stroke="#d1cccc" stroke-width="1.5"
			stroke-linecap="round" stroke-linejoin="round">
		<path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
		<polyline points="22 4 12 14.01 9 11.01"></polyline>
     
    </symbol>
    
    <symbol id="icon-AttendanceStatus" width="100" height="100"
			viewBox="0 0 24 24" fill="none" stroke="#d1cccc" stroke-width="1.5"
			stroke-linecap="round" stroke-linejoin="round">
		<rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
		<line x1="16" y1="2" x2="16" y2="6"></line>
		<line x1="8" y1="2" x2="8" y2="6"></line>
		<line x1="3" y1="10" x2="21" y2="10"></line>
   </symbol>
    
  </svg>

</body>
</body>
</html>

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
<title>Dashboard</title>
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
	text-shadow: 2px 2px 5px black;
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
			<li><a href="/api/addview"> <svg class="icon icon--2x">
            <use xlink:href="#icon-add" />
          </svg> <span class="invisible">Add Employee</span>
			</a></li>
			<li><a href="/api/adminview"> <svg class="icon icon--2x">
            <use xlink:href="#icon-search" />
          </svg> <span class="invisible">Search</span>
			</a></li>
			<li><a href="/api/mn"> <svg class="icon icon--2x">
            <use xlink:href="#icon-attendance" />
          </svg> <span class="invisible">Attendance Status</span>
			</a></li>
			<li><a href="/api/navabout"> <svg class="icon icon--2x">
            <use xlink:href="#icon-about" />
          </svg> <span class="invisible">About us</span>
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
    </a>
    <symbol id="icon-about" width="100" height="100" viewBox="0 0 24 24"
			fill="none" stroke="#d1cccc" stroke-width="1.5"
			stroke-linecap="square" stroke-linejoin="round">
		<circle cx="12" cy="12" r="10"></circle>
		<line x1="12" y1="16" x2="12" y2="12"></line>
		<line x1="12" y1="8" x2="12.01" y2="8"></line>
      
    </symbol>
    <symbol id="icon-add" width="100" height="100" viewBox="0 0 24 24"
			fill="none" stroke="#d1cccc" stroke-width="1.5"
			stroke-linecap="round" stroke-linejoin="round">
		<path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
		<circle cx="8.5" cy="7" r="4"></circle>
		<line x1="20" y1="8" x2="20" y2="14"></line>
		<line x1="23" y1="11" x2="17" y2="11"></line>
      
    </symbol>
    <symbol id="icon-search" width="100" height="100"
			viewBox="0 0 24 24" fill="none" stroke="#d1cccc" stroke-width="1.5"
			stroke-linecap="round" stroke-linejoin="round">
		<path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
		<circle cx="9" cy="7" r="4"></circle>
		<path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
		<path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
     
    </symbol>
    <symbol id="icon-attendance" width="100" height="100"
			viewBox="0 0 24 24" fill="none" stroke="#d1cccc" stroke-width="1.5"
			stroke-linecap="round" stroke-linejoin="round">
		<path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
		<polyline points="22 4 12 14.01 9 11.01"></polyline>
     
    </symbol>
   
    
  </svg>

</body>
</body>
</html>
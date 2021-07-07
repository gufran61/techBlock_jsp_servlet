<%@page import="com.tech.blog.helper.ConnectionHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- css -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<link rel="stylesheet" href="css/Mystyle.css" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
	.banner-background{
	clip-path: polygon(50% 0%, 100% 1%, 100% 89%, 54% 99%, 22% 91%, 0 99%, 0 0);
	}
	</style>
</head>
<body>
	<!-- navbar -->
	<%@include file="Normal_navbar.jsp"%>
	<!-- banner -->
	<div class="container-fluid p-0 m-0">
		<div class="jumbotron primary-background text-white">
			<div class="container">
				<h3 class="display-3">Welcome To Tech Blog</h3>
				<p>Computer programming is the process of designing and building
					an executable computer program to accomplish a specific computing
					result or to perform a specific task. Programming involves tasks
					such as: analysis, generating algorithms, profiling algorithms'
					accuracy and resource consumption, and the implementation of
					algorithms in a chosen programming language (commonly referred to
					as coding).[1][2] The source code of a program is written in one or
					more languages that are intelligible to programmers, rather than
					machine code, which is directly executed by the central processing
					unit. The purpose of programming is to find a sequence of
					instructions that will automate the performance of a task (which
					can be as complex as an operating system) on a computer, often for
					solving a given problem. Proficient programming thus often requires
					expertise in several different subjects, including knowledge of the
					application domain, specialized algorithms, and formal logic.</p>
					<button class="btn btn-outline-light btn-lg"> <span class="fa fa-language"></span>Start its free</button>
					<a href="login.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-fighter-jet fa-spin"></span>Login</a>
			</div>
		</div>
	</div>
	<!-- cards -->
	<div class="container">
	<div class="row mb-2">
	<div class="col-md-4">
	<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programing Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
	</div>
	<div class="col-md-4">
	<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programing Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
	</div>
	<div class="col-md-4">
	<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programing Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
	</div>
	</div>
	<div class="row">
	<div class="col-md-4">
	<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programing Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
	</div>
	<div class="col-md-4">
	<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programing Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
	</div>
	<div class="col-md-4">
	<div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programing Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
	</div>
	</div>
	</div>
	
	<!-- javascript -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/myjs.js"></script>

</body>
</html>
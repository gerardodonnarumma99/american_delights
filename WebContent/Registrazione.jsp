<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,model.UserBean"
	pageEncoding="UTF-8"%>

<%
	UserBean user = (UserBean) request.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<html lang="en">
  <head>
    <title>American Delights</title>

     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

	<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,model.UserBean"%>
	
	 <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    
	
	 <!-- Custom styles for this template -->
    <link href="Css/Login.css" rel="stylesheet">
    
 	</head>

<body>

<%@ include file="Header.html" %>

	<div class="container-sm" style="padding: 10px;">
		<div class="form-group row">
		  <label for="example-text-input" class="col-2 col-form-label">Text</label>
		  <div class="col-10">
		    <input class="form-control" type="text" value="Artisanal kale" id="example-text-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-search-input" class="col-2 col-form-label">Search</label>
		  <div class="col-10">
		    <input class="form-control" type="search" value="How do I shoot web" id="example-search-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-email-input" class="col-2 col-form-label">Email</label>
		  <div class="col-10">
		    <input class="form-control" type="email" value="bootstrap@example.com" id="example-email-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-url-input" class="col-2 col-form-label">URL</label>
		  <div class="col-10">
		    <input class="form-control" type="url" value="https://getbootstrap.com" id="example-url-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-tel-input" class="col-2 col-form-label">Telephone</label>
		  <div class="col-10">
		    <input class="form-control" type="tel" value="1-(555)-555-5555" id="example-tel-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-password-input" class="col-2 col-form-label">Password</label>
		  <div class="col-10">
		    <input class="form-control" type="password" value="hunter2" id="example-password-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-number-input" class="col-2 col-form-label">Number</label>
		  <div class="col-10">
		    <input class="form-control" type="number" value="42" id="example-number-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-datetime-local-input" class="col-2 col-form-label">Date and time</label>
		  <div class="col-10">
		    <input class="form-control" type="datetime-local" value="2011-08-19T13:45:00" id="example-datetime-local-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-date-input" class="col-2 col-form-label">Date</label>
		  <div class="col-10">
		    <input class="form-control" type="date" value="2011-08-19" id="example-date-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-month-input" class="col-2 col-form-label">Month</label>
		  <div class="col-10">
		    <input class="form-control" type="month" value="2011-08" id="example-month-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-week-input" class="col-2 col-form-label">Week</label>
		  <div class="col-10">
		    <input class="form-control" type="week" value="2011-W33" id="example-week-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-time-input" class="col-2 col-form-label">Time</label>
		  <div class="col-10">
		    <input class="form-control" type="time" value="13:45:00" id="example-time-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-color-input" class="col-2 col-form-label">Color</label>
		  <div class="col-10">
		    <input class="form-control" type="color" value="#563d7c" id="example-color-input">
		  </div>
		</div>
	</div>

<%@ include file="Footer.html" %>

	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>
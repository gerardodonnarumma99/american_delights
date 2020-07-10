<%
// Check user credentials
if ( request.getSession().getAttribute("user") != null ) {
	response.sendRedirect("./home.jsp");
}
%>

<%@ page language="java" import="model.UserBean" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>American Delights</title>

     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }
      
      #form_login label.error{  
	    color: #f33;  
	    padding: 0;  
	    margin: 2px 0 0 10px;  
	    font-size: 0.5em;  
    }  

      
    </style>
    
    <!-- Custom styles for this template -->
    <link href="Css/Login.css" rel="stylesheet">
    
  </head>
  <body>
    <form id="form_login" class="form-signin" action="login">
	  <div class="text-center mb-4">
	    <img class="mb-4" src="Immagini/Logo.pdf" alt="" width="250" height="150">
	    <h1 class="h3 mb-3 font-weight-normal">Login</h1>
	  </div>
	  
	  <div id="alert" class="alert alert-danger collapse center" role="alert">
	  		<span id="errorAlert"></span>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
	</div>
	
		  <div class="form-label-group">
		    <input type="text" name="username" id="username" class="form-control" placeholder="Username" required>
		    <label for="username">Username</label>
		  </div>
		
		  <div class="form-label-group">
		    <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
		    <label for="password">Password</label>
		  </div>
		
		  <div class="checkbox mb-3">
		    <label>
		      <input type="checkbox" value="remember-me"> Resta connesso
		    </label>
		  </div>
		  <button id="bottone" class="btn btn-lg btn-primary btn-block" type="submit">Accedi</button>
		  <p class="mt-5 mb-3 text-muted text-center">&copy; 2019-2020</p>
	</form>

	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    
	<!-- jQuery per ajax -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<!-- JQuery validation -->
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.js"></script>
<script>
$(document).ready(function() {
	  $('#form_login').submit(function(e) {
	    e.preventDefault();
	    $.ajax({
	       type: "POST",
	       url: './login',
	       data: $(this).serialize(),
	       success: function(data)
	       {
	          
	       },
	       error: function(data, status) {
	    	   if( data.status === 401 ) {
	    		   $('#errorAlert').html(JSON.stringify(data.responseJSON.message));
	    		  
	    		   $('#alert').show();
	    		   
	    		   //Reset form
	    		   $('#username').val('');
	    		   $('#password').val('');
	    		   
	    	   }
	       }
	   });
	 });
	 
});
</script>

</body>
</html>



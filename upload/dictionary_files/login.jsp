<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	        <script src="scripts/jquery.js"></script>
	        
	        <script type="text/javascript">
	        
	        $(document).ready(function(){ 
	        $('#btnLogIn').click(function() {
	        
	        	// get the form values
	  
	        	var user = $('#txtUser').val();
	            var pass = $('#txtPass').val();
	 
	            $.ajax({
                    type: "GET",
	                url: "time.htm",
	                data: "user=" + user + "&pass=" + pass,
	               success: function(response){alert(response);
	             // we have the response
	               $('#info').html(response);
	               $('#name').val('');
	               $('#education').val('');
	                     },
	               error: function(e){  alert('Error: ' + e);}
	            });
	        });
	        });
	        </script>
	        
</head>
<body>

<form id="formLogIn">
<table id="tableLogIn">
<tr>
    <td>
     Username :   
    </td>
    <td>
     <input type="text" id="txtUser">   
    </td>
</tr>
<tr>
    <td>
     Password :   
    </td>
    <td>
     <input type="text" id="txtPass">   
    </td>
</tr>
<tr>
     <td colspan="2" align="center">
     <input type="button" id="btnLogIn" value="Enter">
     </td>
</tr>

</table>
 ${message}
</form>


</body>
</html>
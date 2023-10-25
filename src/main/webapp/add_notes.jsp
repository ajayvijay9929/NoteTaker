<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>

   <div class='container-fluid p-0 m-0'>
    <%@include file="navbar.jsp" %>
	 </div>
	 <br>
    <h1 style="text-align: center;">Fill The Details</h1>
	 <br>
	 <form action="SaveNoteServlet" Method="post">
	 
  <div class="form-group" style=" padding: 10px; margin-left: 30px;  margin-right: 30px;">
    <label for="title" class="form-label"><h5>Note Title</h5></label>
    <input required name="title" type="text" class="form-control" id="title" 
    placeHolder = "Enter Here" >
  </div>
  
  <div  class="form-group" style=" padding: 10px; margin-left: 30px;  margin-right: 30px;" >
    <label for="content" class="form-label"><h5> Note Content</h5></label>
   <textarea required id ="content"
    name="content"
    placeHolder = "Enter Your Content Here " 
    class="form-control"
    style=" height:250px;"></textarea>
  </div>
  <div class="container text-center">
  <button style=" padding: 15px; margin-top:20px;" type="submit" class="btn btn-primary">Add</button>
  </div>
  
</form>
	 
</body>
</html>
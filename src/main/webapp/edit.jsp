<%@page import="org.hibernate.*"%>
<%@page import='com.helper.*'%>
<%@page import="java.util.*"%>
<%@page import='com.entities.*'%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	 <div class='container'>
    <%@include file="navbar.jsp" %>
    <h1 style="text-align: center;">Edit Your Note</h1>
	 <% Note note = null;
	 try{
		 
		 int noteId = Integer.parseInt(request.getParameter("note_id"));
			Session s = FactoryProvider.getFactory().openSession();
			note = (Note) s.get(Note.class, noteId);
			s.close();
	
	 }catch(Exception e){
		 e.printStackTrace();
	 }
	 	%>
	 
	 <form action="UpdateServlet" Method="post">
	 <input value="<%=note.getId()%>" name="noteId" type="hidden" />
  <div class="form-group" style=" padding: 10px; margin-left: 30px;  margin-right: 30px;">
    <label for="title" class="form-label"><h5>Note Title</h5></label>
    <input required name="title" type="text" class="form-control" id="title" 
    placeHolder = "Enter Here" 
    value="<%= note != null ? note.getTitle(): ""%>" >
  </div>
  
  <div  class="form-group" style=" padding: 10px; margin-left: 30px;  margin-right: 30px;" >
    <label for="content" class="form-label"><h5> Note Content</h5></label>
   <textarea required id ="content"
    name="content"
    placeHolder = "Enter Your Content Here " 
    class="form-control"
    style=" height:250px;"><%= note != null ? note.getContent():""%>
    </textarea>
  </div>
  <div class="container text-center">
  <button style=" padding: 15px; margin-top:20px;" type="submit" class="btn btn-success">Save Your Note</button>
  </div>
  
</form>
	 </div>	 
		

</body>
</html>
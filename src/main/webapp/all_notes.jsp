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
<title>All Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body class="container">

	<div class='container-fluid p-0 m-0'>
		<%@include file="navbar.jsp"%>
		<br>
		<h1 style='text-align: center;' class="text-uppercase">All Notes:</h1>
		<div class="row" style="
    margin-bottom: 20px;
    text-align: center;
">
			<div class=row style='overflow: hidden;'>

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="card" style="overflow: hidden; margin: 12px;">
					<img style="max-hight: 100px; max-width: 70px;"
						src="img/sticky-notes.png" class="card-img-top mx-auto" alt="...">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<div class=" container text-center">
							<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
							<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
						</div>

					</div>
				</div>

				<%
				}
				s.close();
				%>


			</div>
		</div>

	</div>

</body>
</html>
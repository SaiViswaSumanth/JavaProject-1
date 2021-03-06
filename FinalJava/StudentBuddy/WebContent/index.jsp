<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPLOAD</title>
<link
 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 rel="stylesheet"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
 crossorigin="anonymous">
</head>
<body>

 <div class="container col-lg-6">
  <h1 class="text-center">UPLOAD</h1>
  <div class="card">
   <div class="card-body">
    <form method="post" class="form-group" action="Fileupload"
     enctype="multipart/form-data">
     <div class="form-group">
      <label for="uploaded file">Upload file:</label>
       <input
       type="file" name="file" size="50" />
       <div><label>Department</label>
       <input type="text" name="department"/></div>
       <div><label>Semester</label>
       <input type="text" name="semester"/></div>
       <div><label>Subject</label>
       <input type="text" name="subject"/></div>
       <div><label>Description</label>
       <input type="text" name="description"/></div>
     </div>
   
     <input type="submit" value="Save" class="btn btn-success">
    </form>
   </div>
  </div>
 </div>


<!-- 
 <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/finaldb"
        user="root" password="mysql"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM final;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of available materials</h2></caption>
            <tr>
                <th>ID</th>
                <th>department</th>
                <th>semester</th>
                <th>subject</th>
                <th>description</th>
                <th>pdf</th>
                
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.department}" /></td>
                    <td><c:out value="${user.semester}" /></td>
                    <td><c:out value="${user.subject}" /></td>
                    <td><c:out value="${user.description}" /></td>
                    <td><form action="FileReadPdf"> <input type="hidden" name="bookId" value="${user.id}" /><input type="submit" value = "download"></form></td>
                </tr>
            </c:forEach>
        </table>
    </div>

-->
 
</body>
</html>
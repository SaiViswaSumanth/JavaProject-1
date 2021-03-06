<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Users Records</title>
</head>
<body>

    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/java_demo"
        user="root" password="root"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM final;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Available books</h2></caption>
            <tr>
                <th>ID</th>
                <th>department</th>
                <th>semester</th>
                <th>subject</th>
                <th>pdf</th>
                
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.department}" /></td>
                    <td><c:out value="${user.semester}" /></td>
                    <td><c:out value="${user.subject}" /></td>
                    <td><form action="FileReadPdf"> <input type="hidden" name="bookId" value="${user.id}" /><input type="submit" value = "download"></form></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
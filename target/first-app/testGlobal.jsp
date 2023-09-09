<%@ page import="jakarta.annotation.Resource" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: Shamaei.Kiarash
  Date: 9/9/2023
  Time: 6:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>get connection from global</title>
</head>
<body>
<%!
    @Resource(name = "jdbc/global")
    DataSource dataSource;
%>
<%
    Connection connection = dataSource.getConnection();
    if (connection == null) {
        System.out.println("no datasource config ...");
    } else {
        System.out.println("hello local connection from global ...");
    }
%>

</body>
</html>

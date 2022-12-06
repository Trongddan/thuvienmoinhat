<%-- 
    Document   : doQuayve
    Created on : Dec 6, 2022, 11:08:13 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 <%
            session.removeAttribute("listsach");
            session.removeAttribute("maphieumuon");
            session.removeAttribute("tbd");
            response.sendRedirect("GDChinhNV132.jsp");
        %>
</html>

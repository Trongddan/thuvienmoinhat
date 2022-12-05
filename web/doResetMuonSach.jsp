<%-- 
    Document   : doMuonsach
    Created on : Dec 4, 2022, 10:58:12 AM
    Author     : Admin
--%>

<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.sql.Date"%>
<%@page import="entity.Sach132"%>
<%@page import="dao.SachDao132"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            session.removeAttribute("listsach");
            session.removeAttribute("maphieumuon");
            session.removeAttribute("tbd");
            response.sendRedirect("GDMuonsach132.jsp");
        %>
    </head>

</html>

<%-- 
    Document   : scanSV
    Created on : Nov 11, 2022, 6:56:31 PM
    Author     : Admin
--%>

<%@page import="entity.Sachmuon132"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.swing.event.ListSelectionEvent"%>
<%@page import="dao.SachmuonDao132"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="entity.Thebandoc132"%>
<%@page import="dao.TheBanDocDao132"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý thư viện</title>
        <link rel="stylesheet" href="css/scanSV.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <% 
        session.removeAttribute("listsach");
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <%
            String mavach= request.getParameter("mavach");
            if(mavach!=null){
                HttpSession session1 = request.getSession();
                 session1.setAttribute("mavach", mavach);
                 response.sendRedirect("GDMuonsach132.jsp");
            }
           
           
        %>
        <div class="container_scanner">
            <div class="input_area">
                <p style="margin: 0px">${mess}</p>
                <form action="scanSV.jsp" class="form_maSV" method="POST">
                    <label>Nhập mã Sinh viên</label>
                    <input name="mavach" class="form-control"/>
                    <button class="btn btn-primary mt-2 mb-4 float-left" type="submit">Xác nhận</button>
                </form>
            </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>




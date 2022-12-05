<%-- 
    Document   : doluuphieuMuon
    Created on : Dec 4, 2022, 11:03:31 PM
    Author     : Admin
--%>

<%@page import="entity.Sach132"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="entity.Phieumuon132"%>
<%@page import="entity.Thebandoc132"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% 
           String soluong = request.getParameter("soluong");
           String tbd = request.getParameter("tbd");
           String maphieu = request.getParameter("maphieu");
           Phieumuon132 pm132= new Phieumuon132();
           pm132.setMaphieu(maphieu);
           pm132.setNgayin(java.sql.Date.valueOf(java.time.LocalDate.now()));
           pm132.setSoluong(Integer.parseInt(soluong));
           ArrayList<Sach132> listsach =(ArrayList<Sach132>) session.getAttribute("listsach");
           if(Integer.parseInt(soluong)!=0){
               pm132.luuPhieumuon(pm132,Integer.parseInt(tbd),listsach);
               session.setAttribute("maphieumuon",maphieu);
               response.sendRedirect("GDInPhieumuon132.jsp");
//               session.removeAttribute("listsach");
           }
           %>
           
    </head>
    
</html>

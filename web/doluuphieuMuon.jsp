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
            String tbd = request.getParameter("tbd");
            Thebandoc132 tbd132 = new Thebandoc132();
            tbd132.setId(Integer.parseInt(tbd));
            String soluong = request.getParameter("soluong");

            String maphieu = request.getParameter("maphieu");
            Phieumuon132 pm132 = new Phieumuon132();
            pm132.setMaphieu(maphieu);
            pm132.setNgayin(java.sql.Date.valueOf(java.time.LocalDate.now()));
            pm132.setSoluong(Integer.parseInt(soluong));
            pm132.setThebandoc(tbd132);
            ArrayList<Sach132> listsach = (ArrayList<Sach132>) session.getAttribute("listsach");
            pm132.setListsach(listsach);
            if (Integer.parseInt(soluong) != 0) {
                pm132.luuPhieumuon(pm132);
                session.setAttribute("maphieumuon", maphieu);
                response.sendRedirect("GDInPhieumuon132.jsp");
//               session.removeAttribute("listsach");
            } else {
                response.sendRedirect("GDMuonsach132.jsp");
            }
        %>

    </head>

</html>

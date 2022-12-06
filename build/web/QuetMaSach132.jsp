<%-- 
    Document   : NhapMasach
    Created on : Dec 4, 2022, 4:16:03 PM
    Author     : Admin
--%>

<%@page import="dao.SachDao132"%>
<%@page import="entity.Sach132"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/Nhapmasach.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <%
            boolean isAdd = true;
            String mess = "";
            HttpSession session2 = request.getSession();
            ArrayList<Sach132> listsach = new ArrayList<>();
            ArrayList<Sach132> listsach1 = (ArrayList) session.getAttribute("listsach");
            if (listsach1 == null) {
                session.setAttribute("listsach", listsach);
            }
            String mavachsach = request.getParameter("mavachsach");
            if (mavachsach !=null) {
                SachDao132 sachDao132 = new SachDao132();
                Sach132 sach132 = sachDao132.getSach(mavachsach);
                if (listsach1 != null && sach132!=null) {
                    for (Sach132 i : listsach1) {
                        if (i.getMavach().equals(sach132.getMavach())) {
                            isAdd = false;
                        }
                    }
                    if (isAdd == true && sach132.getMavach()!=null) {
                        listsach1.add(sach132);
                        session.setAttribute("listsach", listsach1);
                        response.sendRedirect("GDMuonsach132.jsp");
                    } else {
                        mess = "Sách này đã có trong phiếu mượn rồi.Vui lòng chọn sách khác";
                    }
                }

            }
        %>
    </head>
    <body>
        <div class="Nhapmasach">
            <p>${mess}</p>
            <div class="input_area">               
                <form method="POST" action="QuetMaSach132.jsp" class="form_nhapmasach">
                    <label class="label">Quét mã sách chọn mượn</label><br>
                    <input class="mavachsach" name="mavachsach" class="form-control"/> <br>                  
                    <button style="" class="btn btn-primary  btnsubmmit " type="submit">Xác nhận</button>
                </form>
                <p class="text-white text-center mt-4"><%=mess%></p>
                <a href="GDMuonsach132.jsp"><button style="" class="btn btn-secondary btnquayve ">Quay về</button></a>
            </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>

<%-- 
    Document   : GDInPhieumuon132
    Created on : Dec 5, 2022, 9:50:28 AM
    Author     : Admin
--%>

<%@page import="entity.Sach132"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Phieumuon132"%>
<%@page import="entity.Thebandoc132"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            Thebandoc132 tbd = (Thebandoc132) session.getAttribute("tbd");
            String maphieu = (String) session.getAttribute("maphieumuon");
            ArrayList<Sach132> listsach = (ArrayList) session.getAttribute("listsach");
        %>
    </head>
    <body>
        <script>
            alert("Thành công");
        </script>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <h3 class="mt-3">Thông tin phiếu mượn</h3>
                <div class="row mt-2">
                <% if (tbd != null) {%>
                <div class="col-6">
                    <div>Mã bạn đọc: <%=tbd.getMa()%></div>
                    <div>Họ và tên: <%=tbd.getTen()%></div>
                    <div>Điện thoại: <%=tbd.getDienthoai()%></div>
                </div>
                <div class="col-6">
                    <div>Mã Phiếu: <%=maphieu%></div>
                    <div>Ngày sinh: <%=tbd.getNgaysinh()%></div>
                    <div>Địa chỉ: <%=tbd.getDiachi()%></div>
                </div>
                <% }%>
            </div>
            <div>
                <Table class="table">
                    <thead>
                    <th>Mã</th>
                    <th>Tên sách</th>
                    <th>Tác giả</th>
                    <th>Mã vạch</th>
                    <th>Ngày mượn</th>
                    <th>Ngày phải trả</th>
                    </thead>
                    <tbody>
                        <%for (Sach132 i : listsach) {%>
                        <tr>
                            <td><%=i.getId()%></td>
                            <td><%=i.getDausach132().getTen()%></td>
                            <td><%=i.getDausach132().getTacgia()%></td>
                            <td><%=i.getMavach()%></td>
                            <td><%=java.time.LocalDate.now()%></td>
                            <td><%=java.time.LocalDate.now().plusMonths(1)%></td>
                        </tr>
                        <%}%>
                    </tbody>
                </Table>
            </div>
            <a href="doResetMuonSach.jsp"><button class="btn btn-success">Quay về</button></a>
        </div>

    </body>
</html>

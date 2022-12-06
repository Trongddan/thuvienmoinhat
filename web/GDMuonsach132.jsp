<%-- 
    Document   : Thongtinbandoc
    Created on : Nov 11, 2022, 6:53:52 PM
    Author     : Admin
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.LinkedHashSet"%>
<%@page import="dao.SachmuonDao132"%>
<%@page import="entity.Thebandoc132"%>
<%@page import="entity.Thebandoc132"%>
<%@page import="dao.TheBanDocDao132"%>
<%@page import="dao.TheBanDocDao132"%>
<%@page import="entity.Sach132"%>
<%@page import="dao.SachDao132"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Sachmuon132"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<%
    String mavach = (String) session.getAttribute("mavach");
    ArrayList<Sachmuon132> listSachmuon = new ArrayList<Sachmuon132>();
    Thebandoc132 tbd = new Thebandoc132();
    String maphieu = "";
    int soluong = 0;
    ArrayList<Sach132> listsachUpdate = (ArrayList) session.getAttribute("listsach");
    if (mavach != null) {
        TheBanDocDao132 tbdDao = new TheBanDocDao132();
        tbd = tbdDao.getTheBanDoc(mavach.toUpperCase());
        SachmuonDao132 smDao = new SachmuonDao132();
        if (tbd == null) {
            request.setAttribute("mess", "Mã sinh viên không tồn tại");
            request.getRequestDispatcher("GDQuetthe132.jsp").forward(request, response);
        } else {
            listSachmuon = smDao.getSachmuon(String.valueOf(tbd.getId()));
            session.setAttribute("tbd",tbd);
            //lấy ra ngày giờ hiện tại
            LocalDateTime current = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
            //lấy ra 3 số cuối của msv
            maphieu = "PM" + current.format(formatter);
            //lấy ra số lượng sách mượn của phiếu
            if (listsachUpdate != null) {
                soluong = listsachUpdate.size();
            }
            request.setAttribute("sl", soluong);
        }
    }


%>
<div style="min-height:85vh" class="information_Reader">
    <h3>Thông tin bạn đọc</h3>
    <div class="row">
        <% if (tbd != null) {%>
        <div class="col-6">
            <div>Mã bạn đọc: <%=tbd.getMa()%></div>
            <div>Họ và tên: <%=tbd.getTen()%></div>
            <div>Điện thoại: <%=tbd.getDienthoai()%></div>
        </div>
        <div class="col-6">
            <div>Mã vạch: <%=tbd.getMavach()%></div>
            <div>Ngày sinh: <%=tbd.getNgaysinh()%></div>
            <div>Địa chỉ: <%=tbd.getDiachi()%></div>
        </div>
        <% } %>
    </div>
    <h4>Danh sách sách mượn đã trả: </h4>
    <div>
        <table  class="table">
            <thead>

            <th style="width: 200px">Mã vạch</th>
            <th style="width: 150px">Tên Sách</th>
            <th style="width: 150px">Ngày mượn</th>
            <th style="width: 150px">Ngày đã trả</th>
            <tbody>
                <%
                    if (listSachmuon.size() > 0 && listSachmuon!=null) {
                        for (Sachmuon132 i : listSachmuon) {
                            if (i.getTrangthai() == 1) {
                %>
                <tr>

                    <td><%= i.getSach132().getMavach()%></td>
                    <td><%= i.getSach132().getDausach132().getTen()%></td>
                    <td><%= i.getNgaymuon()%></td>
                    <td><%= i.getNgaydatra()%></td>

                </tr>
                <%
                            }
                        }
                    }
                %>
            </tbody>
            </thead>
        </table>
    </div>
    <h4>Danh sách sách mượn chưa trả: </h4>
    <div>
        <table class="table">
            <thead>
            <th style="width: 200px">Mã vạch</th>
            <th style="width: 150px">Tên Sách</th>
            <th style="width: 150px">Ngày mượn</th>
            <th style="width: 150px">Ngày đã trả</th>
            <tbody id="test">
                <%
                    if (listSachmuon.size() > 0) {
                        for (Sachmuon132 i : listSachmuon) {
                            if (i.getTrangthai() == 0) {
                %>
                <tr>
                    <td><%= i.getSach132().getMavach()%></td>
                    <td><%= i.getSach132().getDausach132().getTen()%></td>
                    <td><%= i.getNgaymuon()%></td>
                    <td>Not yet</td>
                </tr>
                <%
                        }
                    }
                    if (listsachUpdate != null && listsachUpdate.size() > 0) {
                        for (Sach132 a : listsachUpdate) {
                %>
                <tr>
                    <td><%= a.getMavach()%></td>
                    <td><%= a.getDausach132().getTen()%></td>
                    <td><%= java.time.LocalDate.now()%></td>
                    <td>Not yet</td>
                </tr>
                <%
                        }
                    }%>
                <%

                    }

                %>
            </tbody>
            </thead>
        </table>
    </div>
            <a href="QuetMaSach132.jsp"><button class="text-white btn btn-warning mt-4 mr-3">Tiếp tục</button></a>
    <a href="doResetMuonSach.jsp"><button class="btn btn-secondary mt-4 mr-3">Đặt lại</button></a>
    <form action="doluuphieuMuon.jsp" method="POST">

        <input hidden name="tbd" value="<% if (tbd != null) {
                out.print(tbd.getId());
            }%>"/>
        <input hidden name="ngayin" value="<%=java.time.LocalDate.now()%>"/>
        <input hidden name="soluong" value="<%=soluong%>"/>
        <input hidden name="maphieu" value="<%=maphieu%>"/>
        
        <button type="submit" class="btn btn-success mt-4">Lưu</button>
    </form>

</div>

<jsp:include page="footer.jsp"/>
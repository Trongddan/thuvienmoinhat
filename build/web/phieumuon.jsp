<%-- 
    Document   : phieumuon
    Created on : Nov 11, 2022, 6:56:01 PM
    Author     : Admin
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/phieumuon.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="information_Reader">
            <h3>Phiếu mượn</h3>
            <div class="row">
                <div class="col-4">
                    <div>Mã bạn đọc: ${tbd.ma}</div>
                    <div>Họ và tên: ${tbd.ten}</div>
                    <div>Điện thoại: ${tbd.dienthoai}</div>
                </div>
                <div class="col-4">
                    <div>Mã vạch: ${tbd.mavach}</div>
                    <div>Ngày sinh: ${tbd.ngaysinh}</div>
                    <div>Địa chỉ: ${tbd.diachi}</div>
                </div>
<!--                <div class="col-4">
                    <div>Mã phiếu: /////////</div>                   
                </div>-->
            </div>
            <h4>Danh sách sách mượn chưa trả: </h4>
            <div>
                <table  class="table">
                    <thead>
                    <th style="width: 100px">Mã</th>
                    <th>Tên Sách</th>
                    <th>Tác giả</th>
                    <th>Mã vạch</th>
                    <th>Ngày mượn</th>
                    <th>Ngày trả</th>
                    <tbody>
                        <tr>
                            <td>Dc345</td>
                            <td>Lập trình hướng đối tượng</td>
                            <td>Lê Bá Chi</td>
                            <td>//////////</td>
                            <td>10/05/2022</td>
                            <td>10/06/2022</td>
                        </tr>
                        <tr>
                            <td>Ec341</td>
                            <td>Cấu trúc dữ liệu và giải thuật</td>
                            <td>Mai Xuân Bách</td>
                            <td>//////////</td>
                            <td>10/05/2022</td>
                            <td>10/06/2022</td>
                        </tr>
                    </tbody>
                    </thead>
                </table>
            </div>
            <button class="quayve btn left btn-success">Quay về</button>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>
<%-- 
    Document   : header
    Created on : Nov 11, 2022, 6:55:20 PM
    Author     : Admin
--%>

<%@page import="entity.Thanhvien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/thongtinbandoc.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <nav style="background: #17a2b8" class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand text-white" href="GDChinhNV132.jsp">Trang chủ</a>
  <button class="navbar-toggler text-white" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link text-white" href="#">Quản lý thẻ bạn đọc</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Chức năng
        </a>
          <div style="background: #17a2b8" class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a style="background: #17a2b8" class="dropdown-item text-white" href="/thuvienquocgia/GDQuetthe132.jsp">Cho mượn sách</a>
          <a style="background: #17a2b8" class="dropdown-item text-white" href="#">Nhận trả sách</a>
        </div>
      </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="#">
                    <% 
                        Thanhvien tv = (Thanhvien)session.getAttribute("acc"); 
                        out.print(tv.getTen());
                    %></a>
      </li>
            <li class="nav-item">
        <a class="nav-link text-white" href="#">Đăng xuất</a>
      </li>
    </ul>
  </div>
</nav>

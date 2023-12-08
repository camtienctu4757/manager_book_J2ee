<%-- 
    Document   : showbook
    Created on : May 9, 2023, 10:06:34 AM
    Author     : GIGABYTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="user.Book" import ="java.util.List" import="java.util.ArrayList" import="java.util.ListIterator" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./css/main.css">
    </head>
    <body class="body-showbook">
        <header class="header">
                <!-- logo -->
                <div class="logo">
                    <a href="" class="navbar-brand"><img src="./img/logo.png" alt=""></a>

                </div>
                <div class="btn_home">
                    <a href="./index.jsp" class="link_home" title="Đăng xuất"><i class="fa-solid fa-right-from-bracket"></i></a>
                </div>
            </header>
        <div class="container-sm serch-item">
                <div class="aem-Grid aem-Grid--12 aem-Grid--default--12 ">

                    <div class="htmlcontainer aem-GridColumn aem-GridColumn--default--12">
                        <div class="rectangle">

                            <form id="libsearch" action="searchControl" class="inputWrapper">

                                <input id="search" class="rectangle-copy-2" type="text" placeholder="Nhập sách hoặc tên tác giả....." name="search">

                                <button type="submit" class="bg"><span class="serchtxt">Tìm Kiếm</span><i class="fa fa-search"></i></button>

                            </form>


                        </div>
                    </div>

                </div>
        </div>
        <div class="container">
        <% List<Book> b = (List)request.getAttribute ("b");%>
        <% 
            int i;
            for(i=0;i<b.size();i++){%>
                 <div class="item-book">
                    <div class="item-book__head">
                        <h5 class="mb-1"><%=i+1+". "+b.get(i).getTenSach()%></h5>
                                    
                    </div>
                    <p class="mb-1"><b>Tên tác giả: </b><%=b.get(i).getTacgia()%></p>
                    <p class="mb-1"><b>Chủ đề: </b><%=b.get(i).getChuDe()%></p>
                    <p class="mb-1"><b>Thứ tự kệ: </b><%=b.get(i).getKeSach()%></p>
                    <p class="mb-1"><b>Thông tin xuất bản:</b><%=b.get(i).getXuatBan()%></p>
                </div>

        <%
            }
        %>

        </div>
    </body>
</html>






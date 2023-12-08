<%-- 
    Document   : editbook
    Created on : May 9, 2023, 4:49:48 PM
    Author     : GIGABYTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-sm serch-item">
                <div class="aem-Grid aem-Grid--12 aem-Grid--default--12 ">

                    <div class="htmlcontainer aem-GridColumn aem-GridColumn--default--12">
                        <div class="rectangle">

                            <form id="libsearch" action="searchControl" class="inputWrapper">

                                <input id="search" class="rectangle-copy-2" type="text" placeholder="Nhập sách hoặc tên tác giả sách cần cập nhật" name="search">

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

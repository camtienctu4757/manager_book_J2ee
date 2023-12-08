<%-- 
    Document   : user
    Created on : May 5, 2023, 2:58:57 PM
    Author     : GIGABYTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="user.Account" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/main.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
    integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- font chữ tu google form -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Inter:wght@200;400;600&family=Roboto:wght@100;300;400;500;700&display=swap"
    rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
  <title>User</title>
</head>

<body>
  <div class="wrapper">
    <!-- phan dau trang -->
    <header class="header">
      <!-- logo -->
      <div class="logo">
        <a href="" class="navbar-brand"><img src="./img/logo.png" alt=""></a>

      </div>
      <div class="btn_home">
        <a href="./index.jsp" class="link_home" title="Đăng xuất"><i class="fa-solid fa-right-from-bracket"></i></a>
      </div>
    </header>
    <div class="container-md main">
      <div class="main-left">
        <p class="infor-name">Chức năng</p>
        <ul class="list-group">
          <a href="searchControl"><li class="list-group-item">Tìm kiếm sách</li></a>
          <a href="addControl"><li class="list-group-item">Thêm sách</li></a>
          <a href="searchControlM"><li class="list-group-item">Cập nhật</li></a>
          <a href="borowBook"><li class="list-group-item">Xem danh sách mượn</li></a>    
        </ul>
      </div>

      <div class="main-right">
        <p class="infor-name">Thông tin người dùng</p>
        <div class="infor">
          <div class="infor-left">
            <p>Mã cán bộ:</p>
            <p>Họ tên:</p>
            <p>Ngày sinh:</p>
            <p>Giới tính:</p>
          </div>
          <div class="infor-right">
               <% Account a = (Account)request.getAttribute ("a");%>
                <% try {%>
        
                    <p><%=a.getUserName() %></p>
                    <p><%=a.getHoTen()%></p>
                    <p><%=a.getNamSinh()%></p>
                    <p>
                                    <%
                                       if(Integer.parseInt(a.getGioiTinh())== 0){
                                            out.print("Nam");
              
                                        }
                                        else{
                                            out.print("Nữ");
                                        }
                            
                                    %>
                    </p>

         <% }catch(Exception e){
                    e.printStackTrace();}%>
               
          
          </div>
        </div>

      </div>

    </div>



</body>

</html>
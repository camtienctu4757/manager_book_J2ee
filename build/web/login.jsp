<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/main.css">
    <title>Dang nhap</title>
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
</head>

<body>

    <!-- phan dau trang -->
    <header class="header">
        <!-- logo -->
        <div class="logo">
            <a href="index.jsp" class="navbar-brand"><img src="./img/logo.png" alt=""></a>

        </div>

        <div class="btn">
            <a href="login.jsp" class="btn_login">Đăng Nhập</a>
<!--            <a href="sign.jsp" class="btn_sign">Đăng Ký</a>-->
        </div>

    </header>
    <!-- het phan dau trang -->
    <div class="login_main">
        <h3 class="header_form">ĐĂNG NHẬP</h3>
        <div class="container-fluid form-login">
            
            <form action="loginControl" method="post">
                <div class="mb-3">
                    <label for="Username" class="form-label">Tên tài khoản </label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="name">
                </div>
                <div class="mb-3">
                    <label for="Password" class="form-label">Mật khẩu</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" name="pass">
                </div>
                <div class="col-12 btn">
                    <input type="submit" class="btn btn-primary" value ="ĐĂNG NHẬP">
                </div>
            </form>
            
        </div>
    </div>



</body>

</html>
<%-- 
    Document   : add_form
    Created on : May 6, 2023, 3:51:41 PM
    Author     : GIGABYTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/add_form.css">
        <title>form-add</title>
    </head>
<div class="logo" style="background-color: #9ccff9;height: 150px;">
                <a href="#" class="navbar-brand"><img src="./img/logo.png" alt=""></a>

</div>
    <body>
    
        <h2 class="head-name">THÊM SÁCH</h2>
       
        <div class="form-add">
            <form action="addControl" method="post">
                <div class="form-line">
                    <label class="option-name">Danh mục:</label>
                    <select id="catagogy-option" class="option-input">
                        <option value="1">Văn hóa chính trị</option>
                        <option value="2">Kinh tế</option>
                        <option value="3">Công nghệ thông tin</option>
                        <option value="4">Sinh học</option>
                        <option value="5">Ngôn ngữ</option>
                        <option value="6">Công nghệ cơ khí</option>
                        <option value="7">Thủy sản</option>
                        <option value="8">Văn học Việt Nam</option>
                        <option value="9">Văn học nước ngoài</option>
                        <option value="10">Nông học cây trồng</option>
                    </select>
                </div>

                <div class="form-line">
                    <label class="option-name">Tên sách:</label>
                    <input type="text" placeholder="nhập tên sách" class="option-input" name="tensach">
                </div>
                <div class="form-line">
                    <label class="option-name">Thứ tự kệ:</label>
                    <input type="text" placeholder="nhập thứ tự kệ" class="option-input" name="thutuke">
                </div>
                <div class="form-line">
                    <label class="option-name">Thông tin xuất bản:</label>
                    <input type="text" placeholder="nhập thông tin xuất bản" class="option-input" name="nxb">
                </div>
                <div class="form-line">
                    <label class="option-name">Chủ đề:</label>
                    <input type="text" placeholder="nhập chủ đề" class="option-input" name="chude">
                </div>
                <div class="form-line"> <label class="option-name">Tác giả:</label>
                    <input type="text" placeholder="nhập tác giả" class="option-input" name="tacgia">
                </div>
                <div class="form-line"> <label class="option-name">Số lượng:</label>
                    <input type="number" min="1" placeholder="nhập số lượng" class="option-input" name="soluong">
                </div>
                <div class="form-line">
                    <input type="submit" class="btn" value="Xoá">
                    <input type="submit" class="btn" value="Thêm">
                </div>



            </form>
        </div>


    </body>

</html>

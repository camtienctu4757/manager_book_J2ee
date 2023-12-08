<%-- 
    Document   : newjsp
    Created on : May 4, 2023, 11:45:32 AM
    Author     : GIGABYTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <title>Trang chu</title>
</head>

<body>
    <div class="wrapper">
        <!-- phan dau trang -->
        <header class="header">
            <!-- logo -->
            <div class="logo">
                <a href="#" class="navbar-brand"><img src="./img/logo.png" alt=""></a>

            </div>

            <div class="btn">
                <a href="login.jsp" class="btn_login">Đăng Nhập</a>
<!--                <a href="sign.jsp" class="btn_sign">Đăng Ký</a> -->
            </div>

        </header>

        <div class="container-sm video__intro">
            <iframe width="100%" height="400px" src="https://www.youtube.com/embed/cyn75TwsXdw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        </div>
        <!-- het phan dau trang -->
        
         
        </div>

        <!-- slider -->
        <div class="container-md slider">
            <div class="row">
                <div class="col-8 slide">
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="./img/store-l2.png" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="./img/t2_khonggian.png" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="./img/photo_in.png" class="d-block w-100" alt="...">
                            </div>

                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>

                <div class="col-4 row">
                    <img src="./img/ctu2.jpg" alt="">
                </div>

            </div>

            <div class="container-md">
                <div class="detail">
                    <div class="contain__img">
                        <img src="./img/ctu4.png" alt="">
                    </div>
                    <div class="contain__main">
                        <h4 class="header__leter">GIỚI THIỆU VỀ TRUNG TÂM HỌC LIỆU TRƯỜNG ĐẠI HỌC CẦN THƠ</h4>
                        <p>- Trung tâm Học liệu - trường Đại học Cần Thơ, tiền thân là Thư viện Trung tâm trường Đại học
                            Cần
                            Thơ
                            được Tổ chức từ thiện Atlantic Philanthropies ( Mỹ ) tài trợ xây dựng mới trên cơ sở chuyển
                            khoảng 70%
                            vốn tài liệu và toàn bộ cán bộ của Thư viện Trung tâm sang Trung tâm Học liệu.
                            <br>
                            <br>
                            <br>
                            - Trung tâm Học liệu được tọa lạc trên diện tích đất 7.560 m2 ngay lối vào cổng chính của
                            khu
                            II,
                            Đại học Cần Thơ, một địa điểm lý tưởng thuận tiện cho khách hàng đến sử dụng Trung tâm Học
                            liệu
                            để phục vụ cho việc học tập
                            và nghiên cứu. Trung tâm Học liệu được xây dựng 4 tầng với tổng diện tích sử dụng là 7.200m2
                            .
                            <br>
                            <br>
                            <br>
                            Trung tâm Học liệu được thiết kế xây dựng và sắp xếp mỗi tầng của tòa nhà rất hấp dẫn và
                            khoa
                            học phù hợp
                            cho từng góc học tập, nghiên cứu, làm việc độc lập và theo nhóm. Đặt biệt là sự bố trí một
                            cách
                            khoa học dây
                            chuyền hoạt động tổ chức, điều hành và phục vụ khách hàng, tạo sự linh hoạt và dễ dàng cho
                            khách
                            hàng đến sử
                            dụng Trung tâm học liệu.
                            <br>
                            <br>
                            <br>

                            - Tham mưu, giúp Hiệu trưởng và các Phó Hiệu trưởng thực hiện công tác thu thập,
                             tổ chức, khai thác, lưu trữ và cung cấp các dịch vụ thông tin tư liệu phục vụ công tác giảng dạy,
                            học tập và nghiên cứu khoa học cho công chức, viên chức, người lao động và sinh viên
                             đang công tác, học tập tại Trường và các đối tượng khác có nhu cầu
                        </p>
                    </div>
                   
                </div>

            </div>

        </div>

        <!-- footer -->
        <footer class="footer container-md">
            <div class="footer__contact">
                <div class="footer__company">
                    <ul class="footer__company-list">
                        <h6 class="footer__head">Hãy liên hệ hỗ trợ</h6>
                        <li class="footer__company-list-item"><i class="footer__head-icon fa-solid fa-phone"></i> Số
                            Làm thẻ thư viện: 0292 387 2254</li>
                        <li class="footer__company-list-item"><i class="footer__head-icon fa-solid fa-phone-volume"></i>
                            Yêu cầu sách: 0292 387 2254</li>
                        <li class="footer__company-list-item"><i class="footer__head-icon fa-solid fa-envelope"></i>
                            Website: <a href="https://lrc.ctu.edu.vn"></a></li>
                    </ul>
                </div>

                <div class="footer__link">
                    <h6 class="footer__head">Liên Hệ phụ trách</h6>
                    <li>
                        <i class="footer__head-icon fa-solid fa-user"></i>
                        Liên hệ Phụ trách thư viện:  0292 387 2262
                    </li>
                    <li>
                        <i class="footer__head-icon fa-solid fa-calendar-days"></i>
                        Sử dụng phòng Hội nghị - Hội thảo:  0292 383 1565
                    </li>
                    <li>
                        <i class="footer__head-icon fa-sharp fa-solid fa-user"></i>
                        Liên hệ Phụ trách thư viện:  0292 387 2262
                    </li>
                </div>

                <div class="footer__pay">
                    <h6 class="footer__head">Địa chỉ gửi thư và bưu phẩm:</h6>
                    <li> 
                        <i class="footer__head-icon fa-sharp fa-solid fa-gift"></i>
                        Trung tâm Học liệu - Đại học Cần Thơ - Khu II - Đường 3/2 - quận Ninh kiều - 
                        thành phố Cần Thơ - Việt Nam</li>

                </div>
            </div>
            <div class="footer__copyright">
                <p>&copy 2023 Bản quyền thuộc về Chương Hoàng Lâm B2004732 | Nguyễn Thị Cẩm
                    Tiên B2004757</p>
            </div>
        </footer>
    </div>



</body>
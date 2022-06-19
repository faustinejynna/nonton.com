<?php
include('koneksi.php');

$sql = "SELECT * FROM `film` ORDER BY release_date DESC LIMIT 10;";
$hasil = mysqli_query($koneksi, $sql);
$jumlah = mysqli_num_rows($hasil);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="icon" href="icon.png" type="icon.png">
    <title>Nonton.com</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-white bg-white">
        <a class="navbar-brand" href="index.php">
            <img src="logo.png" alt="logo-nonton" width="150" srcset="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="search.php?keyword=adventure">Adventure<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="search.php?keyword=tv">TV Series</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="search.php?keyword=disney">Disney</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="search.php?keyword=marvel">Marvels</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        More
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item">Sports</a>
                        <a class="dropdown-item">Kids</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item">See All ></a>
                    </div>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0" action="search.php" method="GET">
                <input class="form-control mr-sm-2" type="search" name="keyword" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>

    <!-- Banner -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="8"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="9"></li>
        </ol>
        <div class="carousel-inner">
            <?php
            $no = 0;
            while ($data = mysqli_fetch_array($hasil)) {

            ?>
                <a href="detail.php?id=<?php echo $data['id']; ?>" class="carousel-item <?= $no == 0 ? 'active' : '' ?>" style="background-image: url('<?php echo $data['image']; ?>');height: 500px ;background-size:inherit;">
                    <div class="carousel-caption d-none d-md-block" style="    background-image: linear-gradient(360deg, black, transparent);">
                        <h5><?php echo $data['title']; ?></h5>
                    </div>
            </a>
            <?php $no++;
            } ?>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

                  </div>
    <?php

    $adventure = "SELECT * FROM `film` WHERE genre LIKE 'Adventure' LIMIT 10;;";
    $hasil = mysqli_query($koneksi, $adventure);


    ?>
    <div class="container my-5">
        <h1 class="my-3">Most Watched</h1>
        <!-- Swiper -->
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                <?php
                $no = 0;
                while ($data = mysqli_fetch_array($hasil)) {

                ?>
                    <div class="swiper-slide">
                        <a href="detail.php?id=<?php echo $data['id']; ?>">
                            <div class="poster" style="background-image:url('<?php echo $data['image']; ?>');">
                            </div>
                        </a>
                    </div>
                <?php } ?>

            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>
    </div>

    <?php

$disney = "SELECT * FROM `film` WHERE genre LIKE 'Disney' LIMIT 10;";
$hasil = mysqli_query($koneksi, $disney);


?>
    <div class="container my-5">
        <h1 class="my-3">Disney</h1>
        <!-- Swiper -->
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
            <?php
                $no = 0;
                while ($data = mysqli_fetch_array($hasil)) {

                ?>
                    <div class="swiper-slide">
                        <a href="detail.php?id=<?php echo $data['id']; ?>">
                            <div class="poster" style="background-image:url('<?php echo $data['image']; ?>');">
                            </div>
                        </a>
                    </div>
                <?php } ?>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>
    </div>

  
    <?php

$indonesian = "SELECT * FROM `film` WHERE genre LIKE 'Indonesian' LIMIT 10;";
$hasil = mysqli_query($koneksi, $indonesian);


?>
    <div class="container my-5">
        <h1 class="my-3">Indonesian</h1>
        <!-- Swiper -->
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
            <?php
                $no = 0;
                while ($data = mysqli_fetch_array($hasil)) {

                ?>
                    <div class="swiper-slide">
                        <a href="detail.php?id=<?php echo $data['id']; ?>">
                            <div class="poster" style="background-image:url('<?php echo $data['image']; ?>');">
                            </div>
                        </a>
                    </div>
                <?php } ?>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>
    </div>

    <?php

$marvel = "SELECT * FROM `film` WHERE genre LIKE 'Marvel Cinematic Universe' LIMIT 10;";
$hasil = mysqli_query($koneksi, $marvel);


?>    <div class="container my-5">
        <h1 class="my-3">Marvel Cinematic Universe</h1>
        <!-- Swiper -->
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
            <?php
                $no = 0;
                while ($data = mysqli_fetch_array($hasil)) {

                ?>
                    <div class="swiper-slide">
                        <a href="detail.php?id=<?php echo $data['id']; ?>">
                            <div class="poster" style="background-image:url('<?php echo $data['image']; ?>');">
                            </div>
                        </a>
                    </div>
                <?php } ?>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>
    </div>

    <?php

$tvseries = "SELECT * FROM `film` WHERE genre LIKE 'TV Series' LIMIT 10;";
$hasil = mysqli_query($koneksi, $tvseries);


?>    <div class="container my-5">
        <h1 class="my-3">TV Series</h1>
        <!-- Swiper -->
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
            <?php
                $no = 0;
                while ($data = mysqli_fetch_array($hasil)) {

                ?>
                    <div class="swiper-slide">
                        <a href="detail.php?id=<?php echo $data['id']; ?>">
                            <div class="poster" style="background-image:url('<?php echo $data['image']; ?>');">
                            </div>
                        </a>
                    </div>
                <?php } ?>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>
    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 5,
            spaceBetween: 30,
            slidesPerGroup: 5,
            loop: true,
            loopFillGroupWithBlank: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
    </script>
</body>

</html>
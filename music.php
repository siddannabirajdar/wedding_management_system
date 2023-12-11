<?php
  include('action.php');
  if(!isset($_SESSION['uname'])){
    header('location:index.php');
  } 
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Royal Wedding Organizer</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/wed3.jpg" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
</head>

<body id="page-top">

  <!--/ Nav Star /-->
  <nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll" href="#page-top">Royal Wedding Organizer</a>
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <div class="navbar-collapse collapse justify-content-end" id="navbarDefault">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll active" href="profile.php">Home</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!--/ Nav End /-->

  <!--/ Intro Skew End /-->
<div id="#das">
 <h2 class="text-center">Music Details</h2>
  <br>
   <div class="container">
     <div class="card">
       <div class="card-header bg-info">
         <div class="row">
           <div class="col-md-3">Name</div>
           <div class="col-md-3">Price</div>
           <div class="col-md-3">Description</div>
           <div class="col-md-3">Action</div>
          
         </div>
       </div>
        <div class="card-body">
         <?php
            if (isset($_SESSION['uname'])) {
              $sql="SELECT * FROM music";
              $run=mysqli_query($con,$sql);
              while ($row=mysqli_fetch_array($run)) {
                $name=$row['name'];
                $mid=$row['mid'];
                $price=$row['price'];
                $desc=$row['descr'];
                  echo " <div class='row'>
                        <div class='col-md-3'><h5>$name</h5></div>
                        <div class='col-md-3'><h5>$price</h5></div>
                        <div class='col-md-3'><h5>$desc</h5></div>
                        <div class='col-md-3'><h5><div class='btn btn-outline-info add3' rname='$name' rid='$mid'>ADD</div></h5></div>
                       </div><br>";
               
              }
              echo '<a href="photo.php">
            <input type="submit" name="add1" class="btn btn-primary"/>
        </a>';    
            }
          ?>
       </div>
     </div>
   </div>
</div>
  <!--/ Section Contact-Footer Star /-->
  <section class="paralax-mf footer-paralax bg-image sect-mt4 route" style="background-image: url(marriage.jpg)">
    <div class="overlay-mf"></div>
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="contact-mf">
            <div id="contact" class="box-shadow-full">
              <div class="row">
                <div class="col-md-6">
                  <div class="title-box-2 pt-4 pt-md-0">
                    <h5 class="title-left">
                      Get in Touch
                    </h5>
                  </div>
                  <div class="more-info">
                    <p class="lead">
                      Mite Matchmakers Headquaters
                     </p>
                    <ul class="list-ico">
                      <li><span class="ion-ios-location"></span>Mite-Moodbidre,Mangalore-574225</li>
                      <li><span class="ion-ios-telephone"></span> +917387348406</li>
                      <li><span class="ion-email"></span> siddubbirajdar25@gmail.com</li>
                    </ul>
                  </div>
                  <div class="socials">
                    <ul>
                      <li><a href=""><span class="ico-circle"><i class="ion-social-facebook"></i></span></a></li>
                      <li><a href=""><span class="ico-circle"><i class="ion-social-instagram"></i></span></a></li>
                      <li><a href=""><span class="ico-circle"><i class="ion-social-twitter"></i></span></a></li>
                      <li><a href=""><span class="ico-circle"><i class="ion-social-pinterest"></i></span></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Section Contact-footer End /-->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/popper/popper.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/counterup/jquery.waypoints.min.js"></script>
  <script src="lib/counterup/jquery.counterup.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="lib/typed/typed.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>

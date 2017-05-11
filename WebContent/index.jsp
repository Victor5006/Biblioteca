<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="Sistema de biblioteca.">
	    <meta name="author" content="Victor Santos">
	    <title>Biblioteca</title>
	    <link href="css/bootstrap.min.css" rel="stylesheet">
	    <link href="css/modern-business.css" rel="stylesheet">
	    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	</head>

	<body>
	
	    <!-- Navigation -->
	    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	        <div class="container">
	            <!-- Brand and toggle get grouped for better mobile display -->
	            <div class="navbar-header">
	                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </button>
	                <a class="navbar-brand" href="index.jsp">Biblioteca</a>
	            </div>
	            <!-- Collect the nav links, forms, and other content for toggling -->
	            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	                <ul class="nav navbar-nav navbar-right">
	                    <li>
	                        <a href="">Livros</a>
	                    </li>
	                    <li>
	                        <a href="">Unidades</a>
	                    </li>
	                    <li>
	                    	<a href="login.jsp">Login</a>
	                    </li>
	                </ul>
	            </div>
	            <!-- /.navbar-collapse -->
	        </div>
	        <!-- /.container -->
	    </nav>
	
	    <!-- Header Carousel -->
	    <header id="myCarousel" class="carousel slide">
	        <!-- Indicators -->
	        <ol class="carousel-indicators">
	            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	            <li data-target="#myCarousel" data-slide-to="1"></li>
	            <li data-target="#myCarousel" data-slide-to="2"></li>
	        </ol>
	
	        <!-- Wrapper for slides -->
	        <div class="carousel-inner">
	            <div class="item active">
	                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide One');"></div>
	                <div class="carousel-caption">
	                    <h2>Caption 1</h2>
	                </div>
	            </div>
	            <div class="item">
	                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Two');"></div>
	                <div class="carousel-caption">
	                    <h2>Caption 2</h2>
	                </div>
	            </div>
	            <div class="item">
	                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Three');"></div>
	                <div class="carousel-caption">
	                    <h2>Caption 3</h2>
	                </div>
	            </div>
	        </div>
	
	        <!-- Controls -->
	        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	            <span class="icon-prev"></span>
	        </a>
	        <a class="right carousel-control" href="#myCarousel" data-slide="next">
	            <span class="icon-next"></span>
	        </a>
	    </header>
	
	    <!-- Page Content -->
	    <div class="container">
	
	        <!-- Marketing Icons Section -->
	        <div class="row">
	            <div class="col-lg-12">
	                <h1 class="page-header text-center">
	                    Bem vindo a Biblioteca
	                </h1>
	            </div>
	        </div>
	        <!-- /.row -->
	
	        <!-- Portfolio Section -->
	        <div class="row">
	            <div class="col-lg-12">
	                <h2 class="page-header">Acervo</h2>
	            </div>
	            <div class="col-md-4 col-sm-6">
	                <a href="portfolio-item.html">
	                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
	                </a>
	            </div>
	            <div class="col-md-4 col-sm-6">
	                <a href="portfolio-item.html">
	                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
	                </a>
	            </div>
	            <div class="col-md-4 col-sm-6">
	                <a href="portfolio-item.html">
	                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
	                </a>
	            </div>
	            <div class="col-md-4 col-sm-6">
	                <a href="portfolio-item.html">
	                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
	                </a>
	            </div>
	            <div class="col-md-4 col-sm-6">
	                <a href="portfolio-item.html">
	                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
	                </a>
	            </div>
	            <div class="col-md-4 col-sm-6">
	                <a href="portfolio-item.html">
	                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
	                </a>
	            </div>
	        </div>
	        <!-- /.row -->
	
	        <!-- Features Section -->
	        <div class="row">
	            <div class="col-lg-12">
	                <h2 class="page-header">Modern Business Features</h2>
	            </div>
	            <div class="col-md-6">
	                <p>The Modern Business template by Start Bootstrap includes:</p>
	                <ul>
	                    <li><strong>Bootstrap v3.3.7</strong>
	                    </li>
	                    <li>jQuery v1.11.1</li>
	                    <li>Font Awesome v4.2.0</li>
	                    <li>Working PHP contact form with validation</li>
	                    <li>Unstyled page elements for easy customization</li>
	                    <li>17 HTML pages</li>
	                </ul>
	                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>
	            </div>
	            <div class="col-md-6">
	                <img class="img-responsive" src="http://placehold.it/700x450" alt="">
	            </div>
	        </div>
	        <!-- /.row -->
	
	        <hr>
	
	        <!-- Call to Action Section -->
	        <div class="well">
	            <div class="row">
	                <div class="col-md-8">
	                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>
	                </div>
	                <div class="col-md-4">
	                    <a class="btn btn-lg btn-default btn-block" href="#">Call to Action</a>
	                </div>
	            </div>
	        </div>
	
	        <hr>
	
	        <!-- Footer -->
	        <footer class="container navbar-fixed-bottom">
	            <div>
	                <div class="col-lg-12">
	                    <p>Copyright &copy; Your Website 2014</p>
	                </div>
	            </div>
	        </footer>
	    </div>
	    <!-- /.container -->
	
	    <script src="js/jquery.js"></script>
	    <script src="js/bootstrap.min.js"></script>
	
	    <script>
		    $('.carousel').carousel({
		        interval: 5000
		    });
	    </script>
	</body>
</html>
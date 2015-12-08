<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Scrolling Nav - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/scrolling-nav.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        img{
            max-height:70%;
            width:auto;
        }
    </style>

    
    <link rel="stylesheet" type="text/css" href="css/more_info.css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
</head>

<!-- The #page-top ID is part of the scrolling feature - the data-spy and data-target are part of the built-in Bootstrap scrollspy function -->

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top" style="max-width: 100%;">
    <script type="text/javascript">
        function login() {
            document.getElementById("LoginDiv").style.display = "block";
            document.getElementById("RegisterDiv").style.display = "none";
        }
        function register () {
            document.getElementById("LoginDiv").style.display = "none";
            document.getElementById("RegisterDiv").style.display = "block";
        }
    </script>
    <form runat="server">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">BU Social</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a class="page-scroll" href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#isso">ISSO</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#shs">SHS</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#fitrec">FitRec</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#courses">Courses</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#books">Books</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#housing">Housing</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#lifeatbu">Life at BU</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="direction2.html">Map</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="Event.aspx">Event</a>
                    </li>
                    <li>
                        <asp:Label ID="stats" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Logout" OnClick="Logout_Click" runat="server" class="btn btn-default" Text="Logout" />
                        <asp:Button ID="Login" OnClick="Login_Click" runat="server" class="btn btn-default" Text="Login" />
                    </li>
                </ul>
                <span class="right">
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Intro Section -->
    <section id="intro" class="intro-section" style="height: 900px;;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                </div>
            </div>
        </div>
    </section>

    

 <!-- ISSO Section -->
    <section id="isso" class="cd-fixed-bg isso-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="featurette" id="issod">
                        <br><br><br>
                      <img class="featurette-image img-circle img-responsive pull-right" src="img/isso_logo.jpg">
                      <h2 class="featurette-heading">International Students & Scholars Office <br> </h2>
                      <h3><span class="text-muted">Making you feel like your home country!</span></h3>
                          
                        <p class="lead">Assisting international students, academic staff and their families by advising on US federal immigration, tax and labor regulations, by providing counseling on personal, academic and cultural matters, and by promoting cross-cultural awareness in the Boston university community.</p>
                        <a href="isso.html" class="btn btn-default">More Info</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- SHS Section -->
    <section id="shs" class="cd-fixed-bg shs-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="featurette" id="shsd">
                        <br><br><br>
                      <img class="featurette-image img-circle img-responsive pull-left" src="img/shs_logo.jpg">
                        <h2 class="featurette-heading">Student Health Services <br> </h2>
                        <h3>    <span class="text-muted">Helping to maintain best of your Health</span>
                        </h3>
                        <p class="lead">Working closely with you and BU resources to meet all your health care needs.</p>
                        &nbsp;&nbsp;&nbsp;<a href="SHS.html" class="btn btn-default">More Info</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- FitRec Section -->
    <section id="fitrec" class="cd-fixed-bg fitrec-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="featurette" id="fitrecd">
                        <br><br><br>
                      <img class="featurette-image img-circle img-responsive pull-right" src="img/fitrec_logo.jpg">
                      
                      <h2 class="featurette-heading">Fitness & Recreational Center <br> </h2>
                        <h3>    <span class="text-muted">Helping you live a HAPPY AND HEALTHY life</span>
                        </h3>
                        <p class="lead">Be an inspiration. Fitness is not a destination it is a way of life. offering hundreds of classes and facilities including aerial dance, rock climbing, and one of the best competition pools in Boston.</p>
                        <a href="fitrec.html" class="btn btn-default">More Info</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Courses Section -->
    <section id="courses" class="cd-fixed-bg courses-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="featurette" id="coursesd">
                        <br><br><br>
                      <img class="featurette-image img-circle img-responsive pull-left" src="img\courses_logo.jpg">
                      
                      <h2 class="featurette-heading">Courses<br> </h2>
                        <h3>    <span class="text-muted">Description of Courses at BU.</span>
                        </h3>
                        <p class="lead">Plan your future. List of all BU courses with their availability schedules to help you get planned for your future.</p>
                        &nbsp;&nbsp;&nbsp;<a href="courses.html" class="btn btn-default">More Info</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Books Section -->
    <section id="books" class="cd-fixed-bg books-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="featurette" id="booksd">
                        <br><br><br>
                      <img class="featurette-image img-circle img-responsive pull-right" src="img/books_logo.jpg">
                        <h2 class="featurette-heading">Books <br> </h2>
                        <h3>    <span class="text-muted">The book you don’t read won’t help.</span>
                        </h3>
                        <p class="lead">List of all books with added features for the registered users like Sell, Buy, Rent and Enquire books.</p>
                        <a href="books.aspx" class="btn btn-default">More Info</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Housing Section -->
    <section id="housing" class="housing-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="featurette" id="housingd">
                        <br><br><br>
                      <img class="featurette-image img-circle img-responsive pull-left" src="img/housing_logo.jpg">
                        <h2 class="featurette-heading">Housing<br> </h2>
                        <h3>    <span class="text-muted">Living at BU.</span>
                        </h3>
                        <p class="lead">Offers great student housing options with excellent amenities, service, and price!! Find a place to stay close to your university!!</p>
                        &nbsp;&nbsp;&nbsp;<a href="housing.html" class="btn btn-default">More Info</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Life at BU Section -->
    <section id="lifeatbu" class="cd-fixed-bg lifeatbu-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="featurette" id="lifeatbud">
                        <br><br><br>
                      <img class="featurette-image img-circle img-responsive pull-right" src="img/life_logo.jpg">
                        <h2 class="featurette-heading">Life at BU<br> </h2>
                        <h3>    <span class="text-muted">How to have fun...</span>
                        </h3>
                        <p class="lead">More new experiences await on BU’s campus and in Boston than you can imagine. Here are a few links to get your adventures started.</p>
                        &nbsp;&nbsp;&nbsp;<a href="lifeatbu.html" class="btn btn-default">More Info</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Scrolling Nav JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/scrolling-nav.js"></script>
    </form>
</body>

</html>

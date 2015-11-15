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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
</head>

<!-- The #page-top ID is part of the scrolling feature - the data-spy and data-target are part of the built-in Bootstrap scrollspy function -->

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

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
            <asp:SqlDataSource ID="LoginDB" ConnectionString="<%$ ConnectionStrings:Login %>" runat="server" SelectCommand="SELECT * FROM [Login] WHERE ([UserID] = @ID)" InsertCommand="INSERT INTO Login(UserID, PW) VALUES ( @ID , @RPW)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ID" Name="ID" PropertyName="Text" Type="String" />
                </SelectParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="ID" Name="ID" PropertyName="Text" />
                    <asp:ControlParameter ControlID="RPW" Name="RPW" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
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
                        <a href="#openModal_Login" class="btn btn-default">Login Now!</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <div id="openModal_Login" class="modalbg">
        <div class="dialog">
            <a href="#close" title="Close" class="close">X</a>
                    <form runat="server">
                        <asp:Panel ID ="Before" runat="server">
                            LoginID:
                            <asp:TextBox ID="ID" runat="server" Width="80px"></asp:TextBox>
                            <asp:Panel ID ="LoginPanel" runat="server">
                                Password:
                                <asp:TextBox ID="PW" runat="server" Width="80px" TextMode="Password"></asp:TextBox>
                                <asp:Button ID="Login" runat="server" OnClick="Login_Click" Text="Login" />
                                <asp:Button ID="RegisterNow" runat="server" OnClick="TryRegister_Click" Text="Register Now" />
                                <asp:Label ID="stat" runat="server" Text=""></asp:Label>
                            </asp:Panel>
                            <asp:Panel ID ="RegisterPanel" runat="server">
                                Password:
                                <asp:TextBox ID="RPW" runat="server" Width="80px" TextMode="Password"></asp:TextBox>
                                Password&nbsp;again:
                                <asp:TextBox ID="RPW2" runat="server" Width="80px" TextMode="Password"></asp:TextBox>
                                <asp:Button ID="TryRegister" runat="server" OnClick="Register_Click" Text="Register" />
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Logined" runat="server">
                            <asp:Label ID="stats" runat="server" Text=""></asp:Label>
                        </asp:Panel>
                    </form>
	    </div>
    </div>
    <!-- Intro Section -->
    <section id="intro" class="intro-section">
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
                          
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
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
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
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
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
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
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
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
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                        <a href="books.html" class="btn btn-default">More Info</a>
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
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
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
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
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

</body>

</html>

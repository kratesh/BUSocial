<%@ Page Language="C#" AutoEventWireup="true" CodeFile="books.aspx.cs" Inherits="books" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Books</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/heroic-features.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <script type="text/javascript">        //javascript functions
        function tryshowbook() {
            document.getElementById("spreadbook").style.display = "block";
            document.getElementById("spreaddona").style.display = "none";
            document.getElementById("spreadrent").style.display = "none";
            document.getElementById("spreadbuy").style.display = "none";
            document.getElementById("spreadbook").scrollIntoView(true);
        }
        function tryshowdona() {
            document.getElementById("spreadbook").style.display = "none";
            document.getElementById("spreaddona").style.display = "block";
            document.getElementById("spreadrent").style.display = "none";
            document.getElementById("spreadbuy").style.display = "none";
            document.getElementById("spreadform").style.display = "block";
            document.getElementById("donate").style.display = "block";
            document.getElementById("owner").style.display = "none";
            document.getElementById("cost").style.display = "none";
            document.getElementById("rent").style.display = "none";
            document.getElementById("buy").style.display = "none";
            document.getElementById("spreadbook").scrollIntoView(true);
        }
        function tryshowrent() {
            document.getElementById("spreadbook").style.display = "none";
            document.getElementById("spreaddona").style.display = "none";
            document.getElementById("spreadrent").style.display = "block";
            document.getElementById("spreadbuy").style.display = "none";
            document.getElementById("spreadform").style.display = "block";
            document.getElementById("donate").style.display = "none";
            document.getElementById("owner").style.display = "block";
            document.getElementById("cost").style.display = "block";
            document.getElementById("rent").style.display = "block";
            document.getElementById("buy").style.display = "none";
            document.getElementById("spreadbook").scrollIntoView(true);
        }
        function tryshowbuy() {
            document.getElementById("spreadbook").style.display = "none";
            document.getElementById("spreaddona").style.display = "none";
            document.getElementById("spreadrent").style.display = "none";
            document.getElementById("spreadbuy").style.display = "block";
            document.getElementById("spreadform").style.display = "block";
            document.getElementById("donate").style.display = "none";
            document.getElementById("owner").style.display = "block";
            document.getElementById("cost").style.display = "block";
            document.getElementById("rent").style.display = "none";
            document.getElementById("buy").style.display = "block";
            document.getElementById("spreadbook").scrollIntoView(true);
        }
        function killall() {
            document.getElementById("spreadbook").style.display = "none";
            document.getElementById("spreaddona").style.display = "none";
            document.getElementById("spreadrent").style.display = "none";
            document.getElementById("spreadbuy").style.display = "none";
            document.getElementById("spreadform").style.display = "none";
        }
    </script>

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
                <a class="navbar-brand" href="index.aspx">BU Social!</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="hidden">
                        <a class="page-scroll" href="index.aspx">BU Social</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="isso.html">ISSO</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="shs.html">SHS</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="fitrec.html">FitRec</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="courses.html">Courses</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="books.aspx">Books</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="housing.html">Housing</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="lifeatbu.html">Life at BU</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="direction2.html">Map</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="event.aspx">Event</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Jumbotron Header -->        
            <header class="jumbotron hero-spacer" style="background-image: url('img/banner1.jpg')">
                <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>Books!</h1>
                        <h3>Making your homeworks, labs, and exams easier!</h3>
                        <br/>
                    </div>
                </div>
            </div>            
        </header>

    <!-- Page Content -->
    <div class="container">
        <hr />
        <asp:SqlDataSource ID="Rentingbook" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" runat="server" SelectCommand="SELECT * FROM [Rent]"  InsertCommand="INSERT INTO Rent(books, owner, fee) VALUES (@Book, @Owner, @Cost)" DeleteCommand="DELETE FROM Rent WHERE (books = @Book)">
            <InsertParameters>
                <asp:ControlParameter ControlID="Book" Name="Book" PropertyName="Text" />
                <asp:ControlParameter ControlID="Owner" Name="Owner" PropertyName="Text" />
                <asp:ControlParameter ControlID="Cost" Name="Cost" PropertyName="Text" />
            </InsertParameters>
            <DeleteParameters>
                <asp:ControlParameter ControlID="Book" Name="Book" PropertyName="Text" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Buyingbook" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" runat="server" SelectCommand="SELECT * FROM [Buy]"  InsertCommand="INSERT INTO Buy(books, owner, cost) VALUES (@Book, @Owner, @Cost)" DeleteCommand="DELETE FROM Buy WHERE (books = @Book)">
            <InsertParameters>
                <asp:ControlParameter ControlID="Book" Name="Book" PropertyName="Text" />
                <asp:ControlParameter ControlID="Owner" Name="Owner" PropertyName="Text" />
                <asp:ControlParameter ControlID="Cost" Name="Cost" PropertyName="Text" />
            </InsertParameters>
            <DeleteParameters>
                <asp:ControlParameter ControlID="Book" Name="Book" PropertyName="Text" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Donations" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" runat="server" SelectCommand="SELECT * FROM [Donate]"  InsertCommand="INSERT INTO Donate(books) VALUES (@Book)">
            <InsertParameters>
                <asp:ControlParameter ControlID="Book" Name="Book" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
                <div class="row text-center">
                    <h3>Quicklinks</h3>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Page Features -->
        <div class="row text-center">
            <!--1st row, 1st element EMERGENCY -->
            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="img/booklist.jpg" alt=""/>
                    <div class="caption">
                        <h3>Book list</h3>
                        <p>Books that might be useful for your courses.</p>
                        <p>
                            <a class="btn btn-default" onclick="tryshowbook()">More Info</a>
                        </p>
                    </div>
                </div>
            </div>

            <!--1st row, 2nd element  HELP INFO -->
            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="img/donation.jpg" alt="" />
                    <div class="caption">
                        <h3>Donatation</h3>
                        <p>Find donated books, and donate some books</p>
                        <p>
                            <a class="btn btn-default" onclick="tryshowdona()">More Info</a>
                        </p>
                    </div>
                </div>
            </div>

            <!--1st row, 3rd element  HELP INFO -->
            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="img/borrow.jpg" alt=""/>
                    <div class="caption">
                        <h3>Renting</h3>
                        <p>Take use of books from other student.</p>
                        <p>
                            <a class="btn btn-default" onclick="tryshowrent()">More Info</a>
                        </p>
                    </div>
                </div>
            </div>

            <!--1st row, 4th element  HELP INFO -->
            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="img/buy.jpg" alt="" />
                    <div class="caption">
                        <h3>Selling</h3>
                        <p>To buy second-handed book from others.</p>
                        <p>
                            <a class="btn btn-default" onclick="tryshowbuy()">More Info</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <hr />
        <div>
        </div>
        <div>
            <div id="spreadbook" style="display: none">
                <div class="row text-center">
                    <table style="text-align:center">
                        <tr>
                            <th style="text-align:center"><h4>Courses</h4></th>
                            <th style="text-align:center"><h4>Books</h4></th>
                            <th style="text-align:center"><h4>Writer and Edition</h4></th>
                        </tr>
                        <tr>
                            <td><h4>ENG EK500</h4></td>
                            <td><li><a href="#">Probability, Random Variables, and Stochastic Processes</a></li></td>
                            <td><p>A. Papoulis, McGraw-Hill</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC500</h4> </td>
                            <td><li><a href="#">Introduction to Fourier optics</a></li> </td>
                            <td><p>J.W. Goodman (Roberts & Company, 3rd edition)</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Computational Fourier optics</a></li></td>
                            <td><p>D. Voelz (SPIE Press, 2011)</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Principles of Optics</a></li></td>
                            <td><p>M. Born and E. Wolf (Cambridge, 1999)</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Diffraction, Fourier optics and imaging</a></li></td>
                            <td><p>Okan K. Ersoy (John Wiley, 2007)</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG ME/SE/EC501</h4></td>
                            <td><li><a href="#">Control System Design: An Introduction to State-Space Methods</a></li></td>
                            <td><p>McGraw-Hill, 1986</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EK501</h4></td>
                            <td><li><a href="#">All the Mathematics You Missed- But need to Know for Grad School</a></li></td>
                            <td><p>Thomas A. Garrity, Cambridge University Press, 2001- Available in the BU bookstore</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC504</h4></td>
                            <td><li><a href="#">Introduction to Algorithms</a></li></td>
                            <td><p>Cormen, Leiserson, Rivest, and Stein</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC513</h4></td>
                            <td><li><a href="#">Computer Architecture: A Quantitative Approach</a></li></td>
                            <td><p>Hennessy & Patterson, 5e Morgan Kaufmann, 2012</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC514</h4></td>
                            <td><li><a href="#">Simulation with Arena</a></li></td>
                            <td><p>W. D. Kelton, R. P. Sadowski, D. A. Sadowski, McGraw-Hill, 4th Ed., 2006</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC515</h4></td>
                            <td><li><a href="#">Principles of Communication Engineering</a></li></td>
                            <td><p>J. M. Wozencraft and I. M. Jacobs, John Wiley & Sons, 1965 (reissued by Waveland Press, 1990)</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC516</h4></td>
                            <td><li><a href="#">Discrete-time Signal Processing</a></li></td>
                            <td><p>Oppenheim & Schafer with Buck (Prentice Hall)</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC 517</h4></td>
                            <td><li><a href="#">Elements of Information Theory</a></li></td>
                            <td><p>T. M. Cover and J. A. Thomas, Wiley-Interscience, 2nd ed. 2006</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG BE/EC519</h4></td>
                            <td><li><a href="#">Theory and Applications of Digital Speech Processing</a></li></td>
                            <td><p>Rabiner and Schafer, 2011</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC520</h4></td>
                            <td><li><a href="#">Multidimensional Signal, Image and Video Processing and Coding</a></li></td>
                            <td><p>J.W. Woods, Academic Press, 1st edition - 2006, 2nd edition - 2011</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Fundamentals of Digital Image Processing</a></li></td>
                            <td><p>A. Jain, Information and System Sciences Series, Prentice Hall, 1989</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Handbook of Image and Video Processing</a></li></td>
                            <td><p>A. Bovik, Academic Press, 2000 - 1st edition or 2005 - 2nd edition</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC524/SE524</h4></td>
                            <td><li><a href="#">Introduction to Linear Optimization</a></li></td>
                            <td><p>D. Bertsimas and J.N. Tsitsiklis, Athena Scientific, 1997</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC535</h4></td>
                            <td><li><a href="#">Linux Device Drivers</a></li></td>
                            <td><p>Jonathan Cobert, Third Edition, O’Reilly, 2005. (online version available for free) </p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Linux Kernel Development</a></li></td>
                            <td><p>Robert Love, Second Edition, Novell Press, 2005.</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Embedded System Design: A Unified Hardware/Software Introduction</a></li></td>
                            <td><p>Frank Vahid, Tony Givargis, John Wiley & sons, Inc. 2002</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Embedded Linux Primer: A Practical Real-World Approach</a></li></td>
                            <td>Christopher Hallinan, Second Edition, Prentice Hall, 2010</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Introduction to Embedded Systems, A Cyber-Physical Systems Approach</a></li></td>
                            <td><p>Edward A. Lee and Sanjit A. Seshia, ISBN 978-0-557-70857-4, 2011</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC541</h4></td>
                            <td><li><a href="#">Data Networks</a></li></td>
                            <td><p>D. Bertsekas and R.G. Gallager, 2nd Ed., Prentice-Hall, 1992</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC551</h4></td>
                            <td><li><a href="#">Advanced Digital Design with the Verilog HDL</a></li></td>
                            <td><p>M.D. Ciletti, 2nd Edition, ISBN: 0136019285</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Verilog Styles for Synthesis of Digital Systems</a></li></td>
                            <td><p>David R. Smith, Paul Franzon,  ISBN: 0201618605</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Verilog HDL</a></li></td>
                            <td><p>Samir Palnitkar, ISBN: 0132599708</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC560</h4></td>
                            <td><li><a href="#">Fundamentals of Photonics</a></li></td>
                            <td><p>Saleh and Teich, Second Edition, Wiley, 2007</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Optics</a></li></td>
                            <td><p>Hecht, Fourth Edition, Pearson, 2002 </p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Photonics: Optical Electronics in Modern Communications</a></li></td>
                            <td><p>Yariv and Yeh, Oxford, 2006</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Integrated Photonics</a></li></td>
                            <td><p>Pollock and Lipson, Springer, 2004</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Diode Lasers and Photonic Integrated Circuits</a></li></td>
                            <td><p>Coldren, Corzine and Masanovic, Second Edition, Wiley 2012</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC566</h4></td>
                            <td><li><a href="#">Introduction to Ionospheric Physics</a></li></td>
                            <td><p>Rishbeth and Garriott</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Aeronomy</a></li></td>
                            <td><p>Banks and Kockarts</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Ionospheres</a></li></td>
                            <td><p>Schunk and Nagy</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC568</h4></td>
                            <td><li><a href="#">Introduction to fiber optics</a></li></td>
                            <td><p>Ghatak & Thyagarajan, Cambridge Univ. Press. 1998 (reprinted 2000)</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC570</h4></td>
                            <td><li><a href="#">Laser Electronics</a></li></td>
                            <td><p>Joseph T. Verdeyen, 3rd Ed., Prentice Hall</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC571</h4></td>
                            <td><li><a href="#">Digital Integrated Circuits - A Design Perspective</a></li></td>
                            <td><p>Second Edition. Rabaey et al., Prentice Hall. ISBN 0135974445 </p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Digital VLSI Chip Design with Cadence and Synopsys CAD Tools</a></li></td>
                            <td><p>First Edition. Erik Brunvand, Addison-Wesley. ISBN 0321547993</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC/MS573</h4></td>
                            <td><li><a href="#">Solar Cells: Operating Principles, Technology and System Applications</a></li></td>
                            <td><p>Martin Green Published by the University of New South Wales, 1980</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC574</h4></td>
                            <td><li><a href="#">Introduction to Quantum Mechanics</a></li></td>
                            <td><p>B.H. Brandsen, and C.J. Joachain, Longman Scientific and Technical, ISBN 0582444985</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Solid State Physics</a></li></td>
                            <td>N.W. Ashcroft, and N.D. Mermin, Saunder College Publishing, ISBN 0030839939</td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC575</h4></td>
                            <td><li><a href="#">Device Electronics for Integrated Circuits</a></li></td>
                            <td><p>R.S. Muller and T.I. Kamins, Third Edition, Wiley</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC577/MS577</h4>/td>
                            <td><li><a href="#">Introduction to Solid State Physics</a></li></td>
                            <td><p>Kittel, Wiley and Sons- 8th Ed</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Elementary Solid State Physics</a></li></td>
                            <td><p>Omar, Addison-Wesley</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Solid State Physics</a></li></td>
                            <td><p>Ashcroft and Mermin, Thomson Learning</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC578</h4></td>
                            <td><li><a href="#">Introduction to Microfabrication</a></li></td>
                            <td><p>Sami Franssila, 2nd edition. 2010</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG ME579/EC579</h4></td>
                            <td><li><a href="#">Fundamentals of Semiconductor Devices</a></li></td>
                            <td><p>Betty Anderson and Richard Anderson</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC580</h4></td>
                            <td><li><a href="#">Analog Integrated Circuit Design</a></li></td>
                            <td><p>Carusone, Johns, and Martin, 2nd edition, Wiley, 2012</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">The Design of CMOS Radio-Frequency Integrated Circuits</a></li></td>
                            <td><p>T. H. Lee, 2nd edition, Cambridge, 2004</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC582</h4></td>
                            <td><li><a href="#">The Design of CMOS Radio-Freq Integrated Ckts</a></li></td>
                            <td><p>T. H. Lee, 2nd ed., Cambridge, 2004</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">An Introduction to Radio Frequency Engineering</a></li></td>
                            <td><p>C. Coleman, Cambridge, 2004</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Analog Integrated Circuit Design</a></li></td>
                            <td><p>Carusone, Johns, and Martin, 2nd ed.,Wiley, 2012</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC591</h4></td>
                            <td><li><a href="#">Fundamentals of Photonics</a></li></td>
                            <td><p>B. E. A. Saleh & M. C. Teich, Wiley, NY, 2007</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC700</h4></td>
                            <td><li><a href="#">Bayesian Reasoning and Machine Learning</a></li></td>
                            <td><p>David Barber</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC720</h4></td>
                            <td><li><a href="#">Multidimensional Signal, Image and Video Processing and Coding</a></li></td>
                            <td><p>J.W. Woods, Academic Press, 2nd edition - 2012 alternatively 1st edition - 2006</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Video Processing and Communications</a></li></td>
                            <td><p>Y. Wang, J. Ostermann and Y.-Q. Zhang, Signal Proc. Series, Prentice Hall, 2002</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG SE/EC/ME724</h4></td>
                            <td><li><a href="#">Nonlinear Programming</a></li></td>
                            <td><p>D.P. Bertsekas, Athena Scientific, 2nd Edition, 1999</p></td>
                        </tr>
                        <tr>
                            <td><h4>EC 762</h4></td>
                            <td><li><a href="#">Introductory Quantum Optics</a></li></td>
                            <td><p>C. Gerry, P. Knight, Cambridge2005</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Quantum Information: An Overview</a></li></td>
                            <td><p>G. S. Jaeger, Springer 2010</p></td>
                        </tr>
                        <tr>
                            <td><h4>EC 763</h4></td>
                            <td><li><a href="#">Nonlinear Optics</a></li></td>
                            <td><p>Boyd, 3rd Edition; Elsevier/Academic Press 2008</p></td>
                        </tr>
                        <tr>
                            <td><h4>EC 764</h4></td>
                            <td><li><a href="#">Fundamentals of Photonics</a></li></td>
                            <td><p>Saleh and Teich</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG BE/EC765</h4></td>
                            <td><li><a href="#">Biomedical Optics: Principles and Imaging</a></li></td>
                            <td><p>by Lihong V. Wang</p></td>
                        </tr>
                        <tr>   
                            <td><h4>ENG EC772</h4></td>
                            <td><li><a href="#">Digital VLSI Chip Design with Cadence and Synopsys CAD Tools</a></li></td>
                            <td><p>E. Brunvand, Pearson ISBN 978-0-321-54799-6</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG BE773/EC773</h4></td>
                            <td><li><a href="#">Introduction to Optical Microscopy</a></li></td>
                            <td><p>Jerome Mertz</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC774</h4></td>
                            <td><li><a href="#">Physics of Photonic Devices</a></li></td>
                            <td><p>S.L. Chuang 2nd edition, Wiley, 2009</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC777</h4></td>
                            <td><li><a href="#">Principles of Nano-Optics</a></li></td>
                            <td><p>2 Edition, L. Novotny and B. Hecht, Cambridge</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Theory and computation of electromagnetic fields</a></li></td>
                            <td><p>Jian-Ming Jin, Wiley</p></td>
                        </tr>
                        <tr>
                            <td><h4>ENG EC782</h4></td>
                            <td><li><a href="#">Planar Microwave Engineering</a></li></td>
                            <td><p>T. H. Lee, Cambridge, 2004</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><li><a href="#">Low Voltage CMOS RF Frequency Synthesizers</a></li></td>
                            <td><p>Luong and Leung, Cambridge, 2004</p></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        
        <div>
            <div id="spreaddona" style="display: none">
                <asp:Panel ID="auth" runat="server">
                    <asp:Panel ID="No" class="row text-center" runat="server">
                        <h1>
                            There's not any donation here!   
                        </h1>
                    </asp:Panel>
                    <asp:Panel id="Yes" class="row text-center" runat="server">
                        <center>
                            <asp:Table ID="Donate" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            Books
                                        </h4>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </center>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="notauth" runat="server">
                    <div class="row text-center">
                        <h1>
                            Login First!
                        </h1>
                    </div>
                </asp:Panel>
            </div>
        </div>
        
        <div>
            <div id="spreadrent", style="display:none">
                <div class="row text-center">
                    <asp:Panel ID="notauth1" runat="server">
                        <div class="row text-center">
                            <h1>
                                Login First!
                            </h1>
                        </div>
                    </asp:Panel>
                    <center>
                        <asp:Table ID="Renting" runat="server">
                            <asp:TableRow>
                                <asp:TableCell style="text-align:center">
                                    <h4>
                                        Books
                                    </h4>
                                </asp:TableCell>
                                <asp:TableCell>
                                    &nbsp&nbsp
                                </asp:TableCell>
                                <asp:TableCell style="text-align:center">
                                    <h4>
                                        Owner
                                    </h4>
                                </asp:TableCell>
                                <asp:TableCell>
                                    &nbsp&nbsp
                                </asp:TableCell>
                                <asp:TableCell style="text-align:center">
                                    <h4>
                                        Rent fee
                                    </h4>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </center>
                </div>
            </div>
        </div>

        <div>
            <div id="spreadbuy", style="display:none">
                <div class="row text-center">
                    <asp:Panel ID="notauth2" runat="server">
                        <div class="row text-center">
                            <h1>
                                Login First!
                            </h1>
                        </div>
                    </asp:Panel>
                    <center>
                        <asp:Table ID="Buying" runat="server">
                            <asp:TableRow>
                                <asp:TableCell style="text-align:center">
                                    <h4>
                                        Books
                                    </h4> 
                                </asp:TableCell>
                                <asp:TableCell>
                                    &nbsp&nbsp
                                </asp:TableCell>
                                <asp:TableCell style="text-align:center">
                                    <h4>
                                        Owner
                                    </h4>
                                </asp:TableCell>
                                <asp:TableCell>
                                    &nbsp&nbsp
                                </asp:TableCell>
                                <asp:TableCell style="text-align:center">
                                    <h4>
                                        cost
                                    </h4>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </center>
                </div>
            </div>
        </div>


        <div>
            <div id="spreadform" class="text-center" style="display: none">
                <hr />
                <form runat="server">
                    <asp:Panel ID="Submitpanel" runat="server">
                        Book&nbsp;name:&nbsp;&nbsp;
                        <asp:TextBox ID="Book" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <div id="owner">
                            Owner:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Owner" runat="server"></asp:TextBox>
                            <br />
                            <br />
                        </div>
                        <div id="cost">
                            Fee:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Cost" runat="server"></asp:TextBox>
                            <br />
                            <br />
                        </div>
                        <div id="donate" style="display: none">
                            <asp:Button ID="Donating" runat="server" OnClick="Donating_Click" Text="Donate!" />
                        </div>
                        <div id="rent" style="display: none">
                            <asp:Button ID="AddRent" runat="server" OnClick="AddRent_Click" Text="Add books!" />
                            <asp:Button ID="DeleteRent" runat="server" OnClick="DeleteRent_Click" Text="Delete books!" />
                        </div>
                        <div id="buy" style="display: none">
                            <asp:Button ID="AddBuy" runat="server" OnClick="AddBuy_Click" Text="Add books!" />
                            <asp:Button ID="DeleteBuy" runat="server" OnClick="DeleteBuy_Click" Text="Delete books!" />
                        </div>
                        <br />
                    </asp:Panel>
                </form>
                <hr />
                <p style="text-align:center">
                    <a href="#top">back to top</a>
                    <br />
                    <a href="#top" onclick = "killall()">close</a>
                </p>
            </div>
        </div>
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p style="text-align: center">
                        <a href="index.aspx">BU Social</a>
                    </p>
                    <p style="text-align: center">Copyright &copy; BUSocial 2015</p>
                </div>
            </div>
        </footer>
    </div>

    <!-- /.container -->
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>


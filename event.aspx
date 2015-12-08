<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Event.aspx.cs" Inherits="Event" %>

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
        function tryshowevent() {
            document.getElementById("spreadevent").style.display = "block";
            document.getElementById("spreadhold").style.display = "none";
            document.getElementById("spreadevent").scrollIntoView(true);
        }
        function tryshowhold() {
            document.getElementById("spreadevent").style.display = "none";
            document.getElementById("spreadhold").style.display = "block";
            document.getElementById("spreadprice").scrollIntoView(true);
        }
        function killall() {
            document.getElementById("spreadevent").style.display = "none";
            document.getElementById("spreadhold").style.display = "none";
        }
    </script>
    <form runat="server">
        <!-- Navigation -->
        <asp:SqlDataSource ID="EventDB" ConnectionString="<%$ ConnectionStrings:Event %>" runat="server" SelectCommand="SELECT * FROM [Event]"  InsertCommand="INSERT INTO Event(event, host, description, cost, time) VALUES (@Eventname, @Host, @Description, @Cost, @Time)">
            <InsertParameters>
                <asp:ControlParameter ControlID="Eventname" Name="Eventname" PropertyName="Text" />
                <asp:ControlParameter ControlID="Host" Name="Host" PropertyName="Text" />
                <asp:ControlParameter ControlID="Description" Name="Description" PropertyName="Text" />
                <asp:ControlParameter ControlID="Cost" Name="Cost" PropertyName="Text" />
                <asp:ControlParameter ControlID="Time" Name="Time" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
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
                       <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                        <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
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
                <header class="jumbotron hero-spacer" style="background-image: url('img/banner1.jpg')"/>
                    <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                        <div class="site-heading">
                            <h1>Events!</h1>
                            <h3>Share the unique innovation and ideas with you!</h3>
                            <br/>
                        </div>
                    </div>
                </div>            
            </header>

        <!-- Page Content -->
        <div class="container">
            <hr />

            <!-- Title -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="row text-center">
                        <h3></h3>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <!-- Page Features -->
            <div class="row text-center">
                <!--1st row, 1st element EMERGENCY -->
                <div class="col-md-3 col-sm-6 hero-feature">
                </div>

                <!--1st row, 2nd element  HELP INFO -->
                <div class="col-md-3 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="img/events.jpg" alt="" />
                        <div class="caption">
                            <h3>Events Information</h3>
                            <p>Engaged at events and receptions across the country</p>
                            <p>
                                <a class="btn btn-default" onclick="tryshowevent()">More Info</a>
                            </p>
                        </div>
                    </div>
                </div>

                <!--1st row, 3rd element  HELP INFO -->
                <div class="col-md-3 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="img/org.jpg" alt=""/>
                        <div class="caption">
                            <h3>Holding</h3>
                            <p>Hold your events and meet your friends!</p>
                            <p>
                                <a class="btn btn-default" onclick="tryshowhold()">More Info</a>
                            </p>
                        </div>
                    </div>
                </div>

                <!--1st row, 4th element  HELP INFO -->
                <div class="col-md-3 col-sm-6 hero-feature">
                </div>
            </div>
            <!-- /.row -->
            <hr />
            <div>
            </div>
            <div>
                <div id="spreadevent" style="display: none">
                    <div class="row text-center">
                        <center>
                        <table style="text-align:center">
                            <th style="text-align:center"><h4> Name</h4></th>
                                <th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
                                <th style="text-align:center"><h4> Time</h4></th>
                                <th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
                                <th style="text-align:center"><h4> Place</h4></th>
                                <th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
                                <th style="text-align:center"><h4> Contact</h4></th>
                            </tr>
                            <tr>
                                <td><a href="http://www.bu.edu/parentsprogram/events/calendar/?eid=173600&oid=12">Reading the Bible Together </a></td>
                                <td></td>
                                <td>12:30 pm on Sunday, November 29, 2015</td>
                                <td></td>
                                <td><p>Marsh Chapel</p></td>
                                <td></td>
                                <td><p>markyoon@bu.edu</p></td>
                            </tr>
                        </table>
                        </center>
                    </div>
                    <hr />
                    <p style="text-align:center">
                        <a href="#top">back to top</a>
                        <br />
                        <a href="#top" onclick = "killall()">close</a>
                    </p>
                </div>
            </div>
        
            <div>
                <div id="spreadhold" style="display: none">
                    <asp:Panel ID="auth" runat="server">
                         <div class="row text-center">
                             <h3>Hold your own events here!</h3>
                             <asp:Table ID="Eventtable" runat="server">
                                 <asp:TableRow>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            Event
                                        </h4>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        &nbsp&nbsp
                                    </asp:TableCell>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            Holder
                                        </h4>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        &nbsp&nbsp
                                    </asp:TableCell>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            Event description
                                        </h4>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        &nbsp&nbsp
                                    </asp:TableCell>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            Cost
                                        </h4>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        &nbsp&nbsp
                                    </asp:TableCell>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            Event time
                                        </h4>
                                    </asp:TableCell>
                                </asp:TableRow>
                             </asp:Table>
                             <br />
                             <br />
                            <hr />
                             Event:<asp:TextBox ID="Eventname" runat="server"></asp:TextBox>
                            <br />
                            Holder:<asp:TextBox ID="Host" runat="server"></asp:TextBox>
                            <br />
                            Event&nbsp;description:<asp:TextBox ID="Description" runat="server"></asp:TextBox>
                            <br />
                            Cost:<asp:TextBox ID="Cost" runat="server"></asp:TextBox>
                            <br />
                            Event&nbsp;time:<asp:TextBox ID="Time" runat="server"></asp:TextBox>
                            <br />
                            <asp:Button ID="submit" OnClick="submit_Click" runat="server" Text="Submit!" />
                            <p style="text-align:center">
                                <a href="#top">back to top</a>
                                <br />
                                <a href="#top" onclick = "killall()">close</a>
                            </p>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="notauth" runat="server">
                        <h2>
                            Please Login first!
                        </h2>
                    </asp:Panel>
                </div>
            </div>
            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p style="text-align: center">
                            <a href="index.html">BU Social</a>
                        </p>
                        <p style="text-align: center">Copyright &copy; BUSocial 2015</p>
                    </div>
                </div>
            </footer>
        </div>
    </form>

    <!-- /.container -->
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>


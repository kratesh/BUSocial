<%@ Page Language="C#" AutoEventWireup="true" CodeFile="finding.aspx.cs" Inherits="finding" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Finding rooms and roomates!</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/more_info.css" />

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
    <script type="text/javascript"> 
        function showfindr() {
            document.getElementById("showfindr").style.display = "block";
            document.getElementById("showfindrm").style.display = "none";
        }
        function showfindrm() {
            document.getElementById("showfindr").style.display = "none";
            document.getElementById("showfindrm").style.display = "block";
        }
    </script>
    <form runat="server">
        <asp:SqlDataSource ID="Findr" ConnectionString="<%$ ConnectionStrings:FindRoom %>" runat="server" SelectCommand="SELECT * FROM [findr]"  InsertCommand="INSERT INTO findr(address, aorh, owner, fee, avail) VALUES (@Address, @Aorh, @Owner, @Fee, @Avail)">
            <InsertParameters>
                <asp:ControlParameter ControlID="Address" Name="Address" PropertyName="Text" />
                <asp:ControlParameter ControlID="Aorh" Name="Aorh" PropertyName="Text" />
                <asp:ControlParameter ControlID="Owner" Name="Owner" PropertyName="Text" />
                <asp:ControlParameter ControlID="Fee" Name="Fee" PropertyName="Text" />
                <asp:ControlParameter ControlID="Avail" Name="Avail" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Findrm" ConnectionString="<%$ ConnectionStrings:FindRoomMate %>" runat="server" SelectCommand="SELECT * FROM [findrm]"  InsertCommand="INSERT INTO findrm(name, fm, phone, email, description) VALUES (@Name, @Fm, @Phone, @Email, @Description)">
            <InsertParameters>
                <asp:ControlParameter ControlID="Name" Name="Name" PropertyName="Text" />
                <asp:ControlParameter ControlID="Fm" Name="Fm" PropertyName="Text" />
                <asp:ControlParameter ControlID="Phone" Name="Phone" PropertyName="Text" />
                <asp:ControlParameter ControlID="Email" Name="Email" PropertyName="Text" />
                <asp:ControlParameter ControlID="Description" Name="Description" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
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
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
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

        <div class="text-center">

        </div>

        <!-- Jumbotron Header -->    
        <div class="text-center">   
            <header class="jumbotron hero-spacer" style="background-image: url('img/banner1.jpg')">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                        <div class="site-heading">
                            <h1>Student House!</h1>                        
                            <h3>Looking for rooms and roommates here!</h3>
                            <br>
                        </div>
                    </div>
                </div>            
            </header>
            <div>
                <p>
                    <a class="btn btn-default" onclick="showfindr()">Find rooms!</a>
                    <a class="btn btn-default" onclick="showfindrm()">Find roommates!</a>
                </p>
                <asp:Panel ID="auth" runat="server">
                    <div id="showfindr" style="display: none">
                        <center>
                            <asp:Table ID="Findroom" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            Address
                                        </h4>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        &nbsp&nbsp
                                    </asp:TableCell>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            A/H
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
                                            Fee
                                        </h4>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        &nbsp&nbsp
                                    </asp:TableCell>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            Available time
                                        </h4>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </center>
                        <br />
                        <br />
                        <hr />
                        Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Address" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Apartment&nbsp;or&nbsp;house:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Aorh" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Owner:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Owner" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Cost&nbsp;and&nbsp;fee:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Fee" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Available&nbsp;time&nbsp;period:&nbsp;&nbsp;
                        <asp:TextBox ID="Avail" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Subfindr" OnClick="Subfindr_Click" runat="server" class="btn btn-default" Text="Submit!" />
                        <asp:Button ID="findrc" OnClick="findr_Click" runat="server" class="btn btn-default" Text="Find what you want!" />
                        <asp:Button ID="view" OnClick="view_Click" runat="server"  class="btn btn-default" Text="View all!" />
                    </div>
                    <div id="showfindrm" style="display: none">
                        <center>
                            <asp:Table ID="Findroommate" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            Name
                                        </h4>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        &nbsp&nbsp
                                    </asp:TableCell>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            F/M
                                        </h4>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        &nbsp&nbsp
                                    </asp:TableCell>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            Phone Number
                                        </h4>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        &nbsp&nbsp
                                    </asp:TableCell>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            E-mail
                                        </h4>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        &nbsp&nbsp
                                    </asp:TableCell>
                                    <asp:TableCell style="text-align:center">
                                        <h4>
                                            Description
                                        </h4>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </center>
                        <br />
                        <br />
                        <hr />
                        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Name" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        F/M:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Fm" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Phone&nbsp;number:&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Phone" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Email" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Self-description:&nbsp;&nbsp;<asp:TextBox ID="Description" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="subper" OnClick="subper_Click" runat="server"  class="btn btn-default" Text="Submit!" />
                        <asp:Button ID="findrmc" OnClick="findrm_Click" runat="server"  class="btn btn-default" Text="Find the one you want!" />
                        <asp:Button ID="viewfind" OnClick="view_Click" runat="server"  class="btn btn-default" Text="View all!" />
                    </div>
                </asp:Panel>
                <asp:Panel ID="notauth" runat="server">
                    <h2>
                        Please Login first!
                    </h2>
                </asp:Panel>
            </div>
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; BUSocial 2015</p>
                    </div>
                </div>
            </footer>
        </div>
        <!-- /.container -->
    </form>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
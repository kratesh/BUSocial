<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Login and Registration</title>
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    </head>
    <body>
        <asp:SqlDataSource ID="LoginDB" ConnectionString="<%$ ConnectionStrings:Login %>" runat="server" SelectCommand="SELECT * FROM [Login] WHERE ([UserID] = @IDR)" InsertCommand="INSERT INTO Login(UserID, PW, FN, LN, Phone, Email) VALUES ( @IDR , @RPW, @FN, @LN, @Phone, @Email)">
            <SelectParameters>
                <asp:ControlParameter ControlID="IDR" Name="IDR" PropertyName="Text" Type="String" />
            </SelectParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="IDR" Name="IDR" PropertyName="Text" />
                <asp:ControlParameter ControlID="RPW" Name="RPW" PropertyName="Text" />
                <asp:ControlParameter ControlID="FN" Name="FN" PropertyName="Text" />
                <asp:ControlParameter ControlID="LN" Name="LN" PropertyName="Text" />
                <asp:ControlParameter ControlID="Phone" Name="Phone" PropertyName="Text" />
                <asp:ControlParameter ControlID="Email" Name="Email" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="LoginDB2" ConnectionString="<%$ ConnectionStrings:Login %>" runat="server" SelectCommand="SELECT * FROM [Login] WHERE ([UserID] = @ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ID" Name="ID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <form runat="server">
            <div class="container">
                <!-- Codrops top bar -->
                <div class="codrops-top">
                    <a href="index.aspx">
                        <strong>&laquo; Back to homepage </strong>
                    </a>
                    <div class="clr"></div>
                </div><!--/ Codrops top bar -->
                <section>				
                    <div id="container_demo" >
                        <a class="hiddenanchor" id="toregister"></a>
                        <a class="hiddenanchor" id="tologin"></a>
                        <div id="wrapper">
                            <div id="login" class="animate form">
                                <h1>BU SOCIAL LOG IN</h1> 
                                <label for="username" class="uname" data-icon="u" > User name </label>
                                <asp:TextBox ID="ID" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                <asp:TextBox ID="PW" runat="server" TextMode="Password"></asp:TextBox>
    <!--                                 <p class="keeplogin"> 
									    <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									    <label for="loginkeeping">Keep me logged in</label>
								</p> -->
                                <p class="login button"> 
                                    <asp:Button ID="Login" OnClick="Login_Click" runat="server" Text="Login" /> 
								</p>
                                <asp:Label ID="statl" runat="server" Text=""></asp:Label>
                                <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Register</a>
								</p>
                            </div>

                            <div id="register" class="animate form">
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="firstnamesignup" class="firstname" data-icon="u">Your First name</label>
                                    <asp:TextBox ID="FN" runat="server"></asp:TextBox>
                                </p>
                                <p> 
                                    <label for="lastnamesignup" class="lastname" data-icon="u">Your Last name</label>
                                    <asp:TextBox ID="LN" runat="server"></asp:TextBox>
                                </p>
                                <p> 
                                    <label for="phonesignup" class="phone" data-icon="u">Phone Number</label>
                                    <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
                                </p>
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                    <asp:TextBox ID="IDR" runat="server"></asp:TextBox>
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <asp:TextBox ID="RPW" runat="server" TextMode="Password"></asp:TextBox>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                                    <asp:TextBox ID="RPW2" runat="server" TextMode="Password"></asp:TextBox>
                                </p>
                                <asp:Label ID="stat" runat="server" Text=""></asp:Label>
                                <p class="signin button"> 
                                    <asp:Button ID="Register" OnClick="Register_Click" runat="server" Text="Register" />
							    </p>
                                <p class="change_link">  
								    Already a member ?
								    <a href="#tologin" class="to_register"> Go and log in </a>
							    </p>
                            </div>
						
                        </div>
                    </div>  
                </section>
            </div>
        </form>
    </body>
</html>
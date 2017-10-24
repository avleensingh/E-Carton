<%-- 
    Document   : signup
    Created on : 17 Oct, 2017, 1:00:05 PM
    Author     : Avleen Singh Khanuja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SIGN UP</title>
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.dropotron.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-layers.min.js"></script>
        <script src="js/init.js"></script>
        <link rel="stylesheet" href="css/skel.css" />
        <link rel="stylesheet" href="css/style.css" />
    </head>
    <body>
        <div id="header">
            <div class="container">

                <!-- Logo -->
                <h1><a href="#" id="logo"><b>E - Carton</b> </a></h1>

                <!-- Nav -->
                <nav id="nav">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>
                            <a href="">Options</a>
                            <ul>
                                <li><a href="#">Upload File</a></li>
                                <li><a href="#">Download File</a></li>
                                <li><a href="#">Modify & Re-Upload File</a></li>
                                <li><a href="#">Delete File</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>


                <!-- Banner -->
                <div id="banner">
                    <div class="container">
                        <br>
             <form action="signup_servlet" method="post">
                 <br>
             <table>
                 <tr><td><h1>REGISTER HERE</h1></td>
                     <td></td>
                 </tr>
                 <tr>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     
                 </tr>
                 <tr>
                     <td>Enter  First Name</td>
                     <td><input type="text" name="txtname1"></td>
                 </tr>
                 <tr>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     
                 </tr>
                 <tr>
                     <td>Enter  Last Name</td>
                     <td><input type="text" name="txtname2"></td>
                 </tr>
                  
                 <tr>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     
                 </tr>
                 <tr>
                     <td>Enter email</td>
                     <td><input type="text" name="txtmail"></td>
                 </tr>
                 <tr>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     
                 </tr>
                 <tr>
                     <td>Enter Password</td>
                     <td><input type="password" name="txtpass"></td>
                 </tr>
                 <tr>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     
                 </tr>
                 <tr>
                     <td>Retype Password</td>
                     <td><input type="password" name="repass"></td>
                 </tr>
                 <tr>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     
                 </tr>
                 <tr>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     
                 </tr>
                 <tr>
                     <td>Enter User Name</td>
                     <td><input type="text" name="txtname3"></td>
                     
                 </tr>
                 <tr>
                     <td></td>
                     <td><input type="submit" value="LOGIN">  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;   <input type="reset" value="RESET"></td>
                     
                 </tr>
                 
             </table>
      </form>			
                    </div>
                </div>

            </div>
        </div>

        <!-- Footer -->
        <div id="footer">
            <div class="container">

                <!-- Lists -->
                <div class="row">
                    <div class="8u">
                        <section>
                            <header class="major">
                                <h2>Contact Us</h2>
                                <span class="byline">At Our Regional Office Located in San Jose </span>
                            </header>
                            <div class="row">
                                <section class="6u">
                     <ul class="contact">
                                <li>
                                    <span class="address">Address</span>
                                    <span>1234 Somewhere Road #4285 <br />Nashville, TN 00000</span>
                                </li>
                                <li>
                                    <span class="mail">Mail</span>
                                    <span><a href="#">someone@untitled.tld</a></span>
                                </li>
                                <li>
                                    <span class="phone">Phone</span>
                                    <span>(000) 000-0000</span>
                                </li>
                            </ul>
                                    
                                </section>
                                
                                <section class="6u">

                                </section>
                            </div>
                        </section>
                            
                    </div>
                    <div class="4u">
                        <section>
                            
                            	
                        </section>
                    </div>
                </div>

                <!-- Copyright -->
                <div class="copyright">
                 Copyrights @ 2017 Creation of My Own! All Rights Reserved.   
                </div>

            </div>
        </div>
    </body>
</html>

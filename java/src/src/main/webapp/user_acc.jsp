<%-- 
    Document   : user_acc
    Created on : 17 Oct, 2017, 5:09:24 PM
    Author     : Avleen Singh Khanuja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.setget.set"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome User</title>
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.dropotron.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-layers.min.js"></script>
        <script src="js/init.js"></script>
        <script> 
    function my() 
    {
        
        var file_up = document.getElementById('file');
        var flag=false;
       
        if (typeof (file_up.files) !== "undefined") 
        {
            for( var i=0;i<file_up.files.length;i++)
            {
               var size = file_up.files[i].size / 1024;
               var maxsize=10*1024;
               
               if(size>maxsize)
               {
                   alert("please reload files size of some files greater than 10 MB");
                   document.getElementById("form1").reset();
                   flag=false;

                   
               }
               else
               {
                    flag=true;
                  
                 
               }
               
            }
        } else 
        {
            
            alert("This browser does not support HTML5.");
        }
        return flag;
    }
    
    
    </script>
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
                                <li><a href="user_acc.jsp">Upload File</a></li>
                                <li><a href="user_acc.jsp">Download File</a></li>
                                <li><a href="user_acc.jsp">Modify & Re-Upload File</a></li>
                                <li><a href="user_acc.jsp">Delete File</a></li>
                            </ul>
                        </li>
                        <li><a href="index.html">Logout</a></li>
                    </ul>
                </nav>


                <!-- Banner -->
                
                    
                        
                            <header class="major">
                                <br>
                                <h2>Welcome <%=session.getAttribute("ulog")%>!</h2>

                            </header>
                                
             <form id="form1"action="index_serv"  method="post" onsubmit="return my();" enctype="multipart/form-data">
             <table>
                 <tr>
                 <td><h1>SERVICES</h1></td>
                     <td></td>
                 </tr>
                 <tr>
                     <td>UPLOAD FILE</td>
                     <td><input type="file" id="file" name="file" multiple> <input type="submit" value="UPLOAD"></td>
                 </tr>
                 </table>
             </form>
                                <br>               
            <form id="f_d" action="listOfFiles.jsp" method="post">
                <table>
                    <tr>
                   <td>VIEW FILES</td>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp</td>
                     <td><input type="submit" value="VIEW"></td>
                 </tr>
                </table>
            </form>
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

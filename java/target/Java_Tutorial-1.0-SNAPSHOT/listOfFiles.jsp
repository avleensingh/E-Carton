<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.db.listfiles"%>
<%@page import="com.setget.set"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Of Files</title>
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
                                <li><a href="user_acc.jsp">Upload File</a></li>
                                <li><a href="user_acc.jsp">Download File</a></li>
                                <li><a href="user_acc.jsp">Modify & Re-Upload File</a></li>
                                <li><a href="user_acc.jsp">Delete File</a></li>
                            </ul>
                        </li>
                        <li><a href="index.html">Logout</a></li>
                    </ul>
                </nav>
             <header class="major">
             <h1> <%=session.getAttribute("ulog")%>'s &nbsp;&nbsp; Files</h1> 
             </header>
             
             
             <table width="50%" border="1">
                 <tr><td>Uploaded By</td><td></td><td>File Name</td><td>Uploaded on</td><td>Last Updated</td><td>File Description</td><td></td></tr>
                  <%
         
       String username=session.getAttribute("ulog").toString();
       
       System.out.println("Username:"+username);
       ArrayList<set> s=new ArrayList<set>();
       listfiles info=new listfiles();
       s=info.f_d(username);
       
       for(int i=0;i<s.size();i++)
        {
           set obj=new set();   
           obj=s.get(i);
            %>
                <tr>
                    <td>
                      <%= obj.getFirstName()%>
                      </td>
                      
                      <td>
                      <%= obj.getLastName()%>
                      </td>
                      
                      <td>
                      <%= obj.getFileName()%>
                      </td>
                      
                      <td>
                      <%= obj.getFileUploadTime()%>
                      </td>
                      
                      <td>
                      <%= obj.getUpdateTime()%>
                      </td>
                      <td>
                      <%= obj.getFileDescription()%>
                      </td>
                     <td>
                         <form action="download_serv" method="post">
                         <button value="DOWNLOAD">DOWNLOAD</button>
                         <input type="hidden" name="objdownld" value="<%= obj.getFileName()%>" > 
                         </form>
                     </td>
                     
                     <td>
                         <form action="del_servlet" method="post">
                             <button value="DELETE">DELETE</button>
                             <input type="hidden" name="delobj" value="<%= obj.getFileName()%>">
                         </form>
                     </td>
                     
                     <td>
                         <form action="update_serv" method="post">
                         <button value="UPDATE">UPDATE</button>
                         <input type="hidden" name="objUpdate" value="<%= obj.getFileName()%>" >
                         </form>
                     </td>
                </tr>
            <% 
        }
    %>
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

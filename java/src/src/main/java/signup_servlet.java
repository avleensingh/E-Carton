import com.db.Reg;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Avleen Singh Khanuja
 */
@WebServlet(urlPatterns = {"/signup_servlet"})
public class signup_servlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String firstName=request.getParameter("txtname1");
            String lastName=request.getParameter("txtname2");
            String email=request.getParameter("txtmail");
            String password=request.getParameter("txtpass");
            String userName=request.getParameter("txtname3");
            
            boolean flagForRegistration=false;
            String loginPage="login.jsp";
        
            HttpSession ss=request.getSession(true);      
            
        Reg databaseObject=new Reg();
        databaseObject.register(firstName, lastName,email,password, userName);
        
        if(flagForRegistration)
         ss.setAttribute("registerFlag","Redirect to Login Page");
        else
        ss.setAttribute("registerFlag","Please try again with a different username");
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(loginPage);
        dispatcher.forward(request, response);    
    }   
        catch (SQLException ex) {
            Logger.getLogger(signup_servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
        
    }

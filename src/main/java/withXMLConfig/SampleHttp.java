package withXMLConfig;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;



//in this senario map address from web . xml

public class SampleHttp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        var paraName = req.getParameter("name") ;
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("this is from para name :  " +  paraName );
    }
}

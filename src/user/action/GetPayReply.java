package user.action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

public class GetPayReply extends HttpServlet {
    static boolean ifGet2 = false;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        Enumeration enu = request.getParameterNames();
        while (enu.hasMoreElements()) {
            String paraName = (String) enu.nextElement();
            System.out.println(paraName + " : " + request.getParameter(paraName));
            if (paraName.equals("gmt_create")) {
                ifGet2 =true;
                break;
            }

        }

        System.out.println(ifGet2);

        if (ifGet2) {
            PrintWriter writer = response.getWriter();
            writer.write("1");
            writer.flush();
            writer.close();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

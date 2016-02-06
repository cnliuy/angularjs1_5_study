package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 *
 * Created by ly on 2016/2/2.
 */
public class postform extends HttpServlet {

    public void destroy() {
        super.destroy();

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("in doGet");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("in doPost");

        //String name1 = request.getParameter("name");
        //String name2 = (String)request.getAttribute("name");
        //System.out.println("name1:"+name1);
        //System.out.println("name2:"+name2);


        //--------- ok --------
        BufferedReader in = new BufferedReader(
                new InputStreamReader(request.getInputStream()));
        String returnString = "";
        String line = null;
        while((line = in.readLine()) != null) {
            //System.out.println(line);
            returnString = returnString+line ;
        }
        System.out.println("后台Java 获取的参数 returnString:"+returnString);
        response.setContentType("application/json");
        response.getWriter().write(returnString);

        /**
         * 显示：
         *
         * in doPost
         * name1:null
         * name2:null
         * {"name":"123123","location":"12312312","phone":"321312321"}
         *
         * */


    }

}

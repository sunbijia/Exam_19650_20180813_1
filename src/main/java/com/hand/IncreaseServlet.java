package com.hand;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author bijia.sun@hand-china.com
 * @date 2018/8/13 19:43
 */
@WebServlet(name = "IncreaseServlet")
public class IncreaseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");
//            int fid=Integer.parseInt(request.getParameter("fid"));
            String title=request.getParameter("title");
            String description=request.getParameter("description");
            String language=request.getParameter("language");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://192.168.99.100:3306/sakila?characterEncoding=UTF-8","root","123456");
            PreparedStatement pre1=conn.prepareStatement("SELECT language_id FROM `language` WHERE name=?");
            pre1.setString(1,language);
            ResultSet rs=pre1.executeQuery();
            int lid=0;
            while(rs.next()){
                lid=rs.getInt(1);}
            PreparedStatement pre2=conn.prepareStatement("INSERT INTO film(title,description,language_id) VALUES(?,?,?)");
//            pre2.setInt(1, fid);
            pre2.setString(1, title);
            pre2.setString(2, description);
            pre2.setInt(3, lid);
            pre2.executeUpdate();

            request.getRequestDispatcher("LookServlet").forward(request, response);

        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

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
import java.util.ArrayList;
import java.util.List;

/**
 * @author wangnan
 * @date 2018/8/13 20:24
 */
@WebServlet(name = "DeleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            int fid=Integer.parseInt(request.getParameter("fid"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn= DriverManager.getConnection("jdbc:mysql://192.168.99.100:3306/sakila","root","123456");
            PreparedStatement pre0=conn.prepareStatement("SET FOREIGN_KEY_CHECKS=0");
            pre0.executeUpdate();
            PreparedStatement pre1=conn.prepareStatement("DELETE FROM film WHERE film_id=?");
            pre1.setInt(1,fid);
            pre1.executeUpdate();
            PreparedStatement pre2=conn.prepareStatement("SET FOREIGN_KEY_CHECKS=1");
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

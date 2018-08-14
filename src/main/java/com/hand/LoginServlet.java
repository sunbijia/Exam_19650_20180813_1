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
 * @date 2018/8/13 12:38
 */
@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user=request.getParameter("username");
        //String pass=request.getParameter("password");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://192.168.99.100:3306/sakila","root","123456");
            //在已经连接数据库的基础上，向数据库发送需要执行的sql语句
            PreparedStatement pre=conn.prepareStatement("SELECT * FROM customer WHERE first_name=?");
            pre.setString(1, user);
            //pre.setString(2, pass);
            ResultSet rs=pre.executeQuery();
            if(rs.next()){
/*                int uid=rs.getInt("USER_ID");
                request.setAttribute("uid", uid);*/
                request.setAttribute("user", user);
                request.getRequestDispatcher("list.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}

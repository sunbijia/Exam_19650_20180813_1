package com.hand;

import com.hand.domain.gainServlet;

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
 * @author bijia.sun@hand-china.com
 * @date 2018/8/13 15:16
 */
@WebServlet(name = "LookServlet")
public class LookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
//            int uid=Integer.parseInt(request.getParameter("uid"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://192.168.99.100:3306/sakila","root","123456");
            //PreparedStatement pre=conn.prepareStatement("SELECT * FROM film");
            PreparedStatement pre=conn.prepareStatement("SELECT f.film_id,f.title,f.description,l.name as `language` FROM film as f ,`language` as l where f.language_id=l.language_id");
            ResultSet rs=pre.executeQuery();
            List<gainServlet> list=new ArrayList<gainServlet>();
            while(rs.next()){
                gainServlet gs=new gainServlet();
                gs.setFid(rs.getInt("film_id"));
                gs.setTitle(rs.getString("title"));
                gs.setDescription(rs.getString("description"));
                gs.setLanguage(rs.getString("language"));
                list.add(gs);
            }
            request.setAttribute("list", list);
            request.getRequestDispatcher("list-details.jsp").forward(request, response);

        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.minervahub.randy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ijen
 */
public class Login extends HttpServlet {
    private String username;
    private String password;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
            
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            out.print("WELCOME "+username+" PLEASE CHANGE YOUR PASSWORD ");
           
            Class.forName("com.mysql.jdbc.Driver");
            out.println("driver loaded");
            Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sekani","root" ,"");
            out.println("Connect");
            Statement  st =  con.createStatement();
            out.println("conncetion successfull");

                ResultSet rs =   st.executeQuery("select email,uid, pass from sekani.login where Username = '"+username+"' and Password = '"+password+"'");
                rs.next();    
                String cid = rs.getString("uid");
                out.println("recod is inserted" +cid);
          
          
        
        
          HttpSession session=request.getSession();  
          session.setAttribute("sessname",cid);
         // out.println("<a href=\"LoginSucess.jsp\">Check Output Page Here </a>");
          
           
          
          String redirectedPage = "/parentPage";
          response.sendRedirect("ResetPassword.jsp");
          
        } catch (Exception e) {
            out.println("Driver not found" +e);
        }
        finally {
            out.close();
        }
    }


}

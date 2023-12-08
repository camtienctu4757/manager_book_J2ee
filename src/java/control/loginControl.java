/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.loginDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import static java.lang.System.out;
import user.Account;

/**
 *
 * @author camti
 */
public class loginControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try(PrintWriter out = response.getWriter()){
           
//           out.print("<h2>"+ a.getUserName()+"</h2>");
//           out.print("<h2>"+ a.getPassWord()+"</h2>");
//           out.print("<h2>"+ a.getHoTen()+"</h2>");
//           out.print("<h2>"+ a.getNamSinh()+"</h2>");
//           out.print("<h2>"+ a.getGioiTinh()+"</h2>");

          
           
       }
       catch(Exception e){
          e.printStackTrace();
       }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
           String username = request.getParameter("name");
           String password = request.getParameter("pass");
           loginDAO l = new loginDAO();
           Account a = l.checkin(username,password);
            if(a==null){
                
              response.sendRedirect("login.jsp");
           }
           else{
               String temp ="B";
               
               if((a.getUserName().charAt(0) - temp.charAt(0))==0){
                 request.setAttribute("a",a);
                 request.getRequestDispatcher("user.jsp").forward(request, response); 
//                   
               }
               else{
                   request.setAttribute("a",a);
                   request.getRequestDispatcher("manager.jsp").forward(request, response);  
               }
                
           }
           
            
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request,response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

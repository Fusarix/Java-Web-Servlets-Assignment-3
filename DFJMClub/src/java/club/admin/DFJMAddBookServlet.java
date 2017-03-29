/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package club.admin;

import club.business.Book;
import club.data.BookIO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Derek
 */
public class DFJMAddBookServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 
        
        String errMsg = "";
        
        String code = request.getParameter("code");
        String description = request.getParameter("description");
        String quantity = request.getParameter("quantity");
        
        Book book = new Book();
        book.setCode(code);
        book.setDescription(description);
        book.setQuantity(Integer.parseInt(quantity));        
        
        if (code.isEmpty() || "".equals(code)) {
            errMsg += "<br>Book code is required.";
        }
        if (description.length() < 2) {
            errMsg += "<br>Description must have at least 2 characters.";
        }
        if ((Integer.parseInt(quantity) <= 0)) {
            errMsg += "<br>Quantity must be a positive number.";
        }
        
        if ("".equals(errMsg)) {
            BookIO.insert(book, (getServletContext().getRealPath("/WEB-INF/books.txt")));
            request.setAttribute("book", book);
            String url="/DFJMDisplayBooks";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        }
        else{
            request.setAttribute("errMsg", errMsg);
            String url = "/DFJMAddBook.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        }
        
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DFJMAddBookServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DFJMAddBookServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
        processRequest(request, response);
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
        processRequest(request, response);
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

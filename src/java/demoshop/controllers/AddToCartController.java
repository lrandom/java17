/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demoshop.controllers;

import demoshop.dals.ProductDAL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import demoshop.models.Product;
import demoshop.models.ProductInCart;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lrandom
 */
public class AddToCartController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddToCartController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddToCartController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        String id = request.getParameter("id");
        ProductDAL productDAL = new ProductDAL();
        Product product = productDAL.getById(new Long(id));
        ProductInCart productInCart = new ProductInCart();
        productInCart.setProduct(product);
        
       
        ArrayList<ProductInCart> carts = new ArrayList<>();
        HttpSession sessison = request.getSession();
        if(sessison.getAttribute("cart")==null){
           //nếu chưa có giỏ hàng
           carts = new ArrayList<>();
           carts.add(productInCart);
           sessison.setAttribute("cart", carts); 
        }else{
           //có tồn tại giỏ hàng
            carts =
                    (ArrayList<ProductInCart>)sessison.getAttribute("cart");
            int index = -1;
            for (int i = 0; i < carts.size(); i++) {
                if(carts.get(i).getProduct().getId().longValue()==new Long(id).longValue()){
                    index = i;
                    break;
                }
            }
            if(index >=0){
                //tôn tai
                int quantity = carts.get(index).getQuantity();
                carts.get(index).setQuantity(++quantity);
            }else{
                carts.add(productInCart);
            }
            sessison.setAttribute("cart",carts); 
        }
        response.sendRedirect("/Java17/cart");
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import Daos.DistributorDao;
import Daos.ProductDao;
import Dtos.Distributor;
import Dtos.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Adrian
 */
public class ProductController extends HttpServlet {

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
        String idDistributorParent = request.getParameter("txtId");
        Distributor distributorparent = null;

        if (idDistributorParent.trim().isEmpty()) {
            request.getRequestDispatcher("error.jsp").forward(request, response);

        } else {
            DistributorDao distributorDao = new DistributorDao();
            ArrayList<Distributor> distributors = new ArrayList<>();
            distributors = distributorDao.buscar(idDistributorParent);
            if (distributors.size() == 1) {
                for (Distributor distributor : distributors) {
                    /*System.out.print(DistributorAccepted);*/
                    distributorparent = new Distributor(distributor.getId(), distributor.getNombre(), distributor.getApellido());
                    /*System.out.print(distributorparent+"test1");*/
                }

                request.getSession().setAttribute("distributorparent", distributorparent);
                /*request.getRequestDispatcher("ProductsMain.jsp").forward(request, response);*/
                String operacion = request.getParameter("operation");
                System.out.println("Entra al list");
                if (operacion.equals("list")) {
                    System.out.println("Entra al list");

                    ProductDao product = new ProductDao();
                    ArrayList<Product> productos = product.sql_selectAll();
                    request.getSession().setAttribute("Lista", productos);
                    request.getRequestDispatcher("ProductsMain.jsp").forward(request, response);
                }

            } else {
                request.getRequestDispatcher("error.jsp").forward(request, response);
                System.out.print("Error");
            }
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

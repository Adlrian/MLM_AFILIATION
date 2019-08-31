/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import Daos.DistributorDao;
import Dtos.Distributor;
import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
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
public class DistributorController extends HttpServlet {

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

        String operacion = request.getParameter("operation");
        if (operacion.equals("insert")) {
            
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String celular = request.getParameter("txtCelular");
            String dni = request.getParameter("txtDni");
            String correo = request.getParameter("txtCorreo");
            String direccion = request.getParameter("txtDireccion");
            String zip = request.getParameter("txtZip");
            String user = request.getParameter("txtUser");
            String pass = request.getParameter("txtPass");
            
            int id = (int) (100000 * Math.random());
            Distributor prentdistributor = (Distributor)request.getSession().getAttribute("distributorparent");
            Distributor distributor = new Distributor(id,nombre, apellido,celular, dni, correo, direccion,zip,user, pass, prentdistributor.getId() ,1,1,1);
            /*(int id, String nombre, String apellido, String celular, String DNI, String correo, String direccion, String zip, String username, String password, int parent, int estado, int tipo, int mercado)*/

            DistributorDao distributorDao = new DistributorDao();
            
            if (distributorDao.sql_insert(distributor)) {
                request.getRequestDispatcher("Confirmation.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("Confirmation.jsp").forward(request, response);
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

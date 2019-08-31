package controladores;

import Daos.DistributorDao;
import Dtos.Distributor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BuscadorDistributor extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Distributor distributorparent = null;
            //Lo recupera del js
          
            String nombre = request.getParameter("dato");
            DistributorDao distributorDao = new DistributorDao();
            ArrayList<Distributor> distributors = new ArrayList<>();
            distributors = distributorDao.buscar(nombre);
            if (distributors.size()==1) {
                for (Distributor distributor : distributors) {
                    out.println("<h6 style='color:green'>Patrocinador: " + distributor.getNombre()+" "+distributor.getApellido()+"</h6>");
                    /*System.out.print(DistributorAccepted);*/
                    distributorparent = new Distributor(distributor.getId(),distributor.getNombre(),distributor.getApellido());
                    /*System.out.print(distributorparent+"test1");*/
                }
                                
            } else {
                /*System.out.print("Encontrado: ");*/
                out.println("<h6 style='color:red'>Parece que tu patrocinador no existe, por favor vuelve a intentarlo.</h6>");
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

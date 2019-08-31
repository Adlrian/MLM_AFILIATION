/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Conexion.ConexionBD;
import Dtos.Distributor;
import Dtos.Product;
import interfaces.OperacionesBD;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Alumno
 */
public class DistributorDao implements OperacionesBD<Distributor> {

    private static CallableStatement cstm = null;
    private static ResultSet res = null;
    private static ConexionBD con = ConexionBD.generateInstance();
    private static final String SQL_SEARCH = "{call buscar(?)}";
    private PreparedStatement pstm = null;
    private static final String sql_insertCustomer = "insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

    public ArrayList<Distributor> buscar(String id) {

        ArrayList<Distributor> distributors = new ArrayList<>();

        try {
            cstm = con.getCon().prepareCall(SQL_SEARCH);
            cstm.setString(1, id);
            res = cstm.executeQuery();
            while (res.next()) {
                //productos.add(new Distributor(res.getInt(1),res.getString(2),res.getString(3),res.getDouble(4),res.getInt(5)));
                distributors.add(new Distributor(res.getInt(1), res.getString(2), res.getString(3)));
            }
        } catch (Exception e) {

        } finally {
            closeCon();
        }
        return distributors;
    }

    private void closeCon() {
        try {
            if (cstm != null) {
                cstm.close();
            }
            if (res != null) {
                res.close();
            }
            if (con != null) {
                con.closeConnection();
            }
        } catch (Exception e) {

        }
    }

    @Override
    public boolean sql_insert(Distributor t) {
        boolean result = false;
        try {
            
            pstm = con.getCon().prepareStatement(sql_insertCustomer);
            pstm.setInt(1, t.getId());
            pstm.setString(2, t.getNombre());
            pstm.setString(3, t.getApellido());
            pstm.setString(4, t.getCelular());
            pstm.setString(5, t.getDNI());
            pstm.setString(6, t.getCorreo());
            pstm.setString(7, t.getDireccion());
            pstm.setString(8, t.getZip());
            pstm.setString(9, t.getUsername());
            pstm.setString(10, t.getPassword());
            pstm.setInt(11, t.getParent());
            pstm.setInt(12, t.getEstado());
            pstm.setInt(13, t.getTipo());
            pstm.setInt(14, t.getMercado());

            if (pstm.executeUpdate() > 0) {
                result = true;
            }

        } catch (Exception e) {
            System.out.println("Error al insertar :" + e.getMessage());
            e.printStackTrace();
        } finally {
            cerrarConexiones();
        }
        return result;

    }

    @Override
    public boolean sql_update(Distributor t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean sql_delete(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Distributor sql_selectById(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Distributor> sql_selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void cerrarConexiones() {

        try {
            if (res != null) {
                res.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (con != null) {
                con.closeConnection();
            }
        } catch (Exception e) {
            System.out.println("Error de Cierre :" + e.getMessage());
            e.printStackTrace();
        }

    }

    public static int generarNumero() {
        return (int) (100000 * Math.random());
    }
}

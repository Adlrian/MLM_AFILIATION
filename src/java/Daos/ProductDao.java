/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Conexion.ConexionBD;
import Dtos.Product;
import interfaces.OperacionesBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Adrian
 */
public class ProductDao implements OperacionesBD<Product>{
    
     private static final String sql_insertProduct="insert into product values(?,?,?,?,?)";
    private static final String sql_updateProduct="update cliente set nombre=?, apellido=?,dni=?,correo=?,telefono=? where id=?";
    private static final String sql_selectById="select * from product where id=?";
    private static final String sql_selectAll="select * from product";
    private PreparedStatement pstm=null;
    private ResultSet res=null;
    private ConexionBD con = ConexionBD.generateInstance();
    
    @Override
    public boolean sql_insert(Product t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean sql_update(Product t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean sql_delete(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Product sql_selectById(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Product> sql_selectAll() {
        ArrayList<Product> productos=new ArrayList<>();
        try {
            pstm=con.getCon().prepareStatement(sql_selectAll);
            res = pstm.executeQuery();
            while(res.next()){     
                productos.add(new Product(res.getInt(1),res.getString(2),res.getString(3),res.getInt(4),res.getInt(5),res.getInt(6),res.getInt(7),res.getString(8)));
            }
        } catch (Exception e) {
            System.out.println("Error al seleccionar");
        }
        finally{
            cerrarConexiones();
        }           
        return productos;
    }
    
    private void cerrarConexiones(){
    
        try {
            if(res!=null)res.close();
            if(pstm!=null)pstm.close();
            if(con!=null)con.closeConnection();
        } catch (Exception e) {
            System.out.println("Error de Cierre :"+e.getMessage());
            e.printStackTrace();
        }
    
        
    }
}

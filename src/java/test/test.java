package test;

import Daos.DistributorDao;
import Daos.ProductDao;
import Dtos.Distributor;
import Dtos.Product;
import java.util.ArrayList;

public class test {
     public static void main(String[ ] args){
         
        ProductDao clienteDao = new ProductDao();
        ArrayList<Product> clientes = clienteDao.sql_selectAll();
        
        for (Product cliente : clientes) {   
            System.out.println("Nombre cliente :"+cliente.getNombre_producto());
        }
     }
}

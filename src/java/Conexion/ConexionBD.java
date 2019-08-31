package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexionBD {
    private static ConexionBD instance = null;
    private static Connection con = null;
    private static final String url  = "jdbc:sqlserver://localhost\\fuxion:1433;databaseName=Fuxion_MLM";
    private static final String driver  = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String user  = "sa";
    private static final String password   = "123456";
    
    private ConexionBD(){
        try{
            Class.forName(driver).newInstance();
            con = DriverManager.getConnection(url, user, password);
        }catch(Exception e){
            System.out.println("Error de conexion"+e.getMessage());
            e.printStackTrace();
        }
    }
    
    public synchronized static ConexionBD generateInstance(){
        if(instance==null){
           instance = new ConexionBD();
        }
        return instance;
    }
    
    public Connection getCon(){
        return con;
    }
    
    public void closeConnection(){
        instance = null;
    }
}

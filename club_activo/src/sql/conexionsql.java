package sql;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author Katherine
 */

public class conexionsql {
    Connection conn=null;
    String url="";
    String usuario="";
    String clave ="";
    
     public Connection conectar(){
        try{
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(url,usuario,clave);   
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"conexion null"+e,"mensaje",JOptionPane.ERROR_MESSAGE);
        }
        return conn;
    }  
}

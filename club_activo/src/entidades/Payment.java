package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class Payment {
    conexionsql con = new conexionsql();

    public Payment() {
    }
    
    public void insertarPayment(String registry_number_payment, String date_payment, String trade_payment, int amount_payment, String description_payment, int id_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_payment('"+registry_number_payment+"','"+date_payment+"','"+trade_payment+"',"
                                                                    + "'"+amount_payment+"','"+description_payment+"','"+id_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Pago guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Pago no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarPayment(String registry_number_payment){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_payment('"+registry_number_payment+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Pago eliminado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Pago no eliminado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarPayment(String registry_number_payment_modificar, String registry_number_payment, String date_payment, String trade_payment, int amount_payment, String description_payment, int id_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_payment('"+registry_number_payment_modificar+"','"+registry_number_payment+"','"+date_payment+"','"+trade_payment+"',"
                                                                    + "'"+amount_payment+"','"+description_payment+"','"+id_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Pago modificado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Pago no modificado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
}

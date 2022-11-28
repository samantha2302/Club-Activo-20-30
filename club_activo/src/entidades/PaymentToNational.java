package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class PaymentToNational {
    conexionsql con = new conexionsql();

    public PaymentToNational() {
    }
    
    public void insertarPaymentToNational(String registry_number_payment_national, String date_payment_to_national, int amount_payment_to_national, String status_payment_to_national, int id_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_payment_to_national('"+registry_number_payment_national+"','"+date_payment_to_national+"','"+amount_payment_to_national+"',"
                                                                    + "'"+status_payment_to_national+"','"+id_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Pago Nacional guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Pago Nacional no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarPaymentToNational(String registry_number_payment_national){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_payment_to_national('"+registry_number_payment_national+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Pago Nacional eliminado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Pago Nacional no eliminado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarPaymentToNational(String registry_number_payment_national_modificar, String registry_number_payment_national, String date_payment_to_national, int amount_payment_to_national, String status_payment_to_national, int id_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_payment_to_national('"+registry_number_payment_national_modificar+"','"+registry_number_payment_national+"','"+date_payment_to_national+"','"+amount_payment_to_national+"',"
                                                                    + "'"+status_payment_to_national+"','"+id_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Pago Nacional modificado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Pago Nacional no modificado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

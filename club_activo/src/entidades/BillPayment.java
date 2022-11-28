package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class BillPayment {
    conexionsql con = new conexionsql();

    public BillPayment() {
    }
    
    public void insertarBillPayment(String registry_number_bill_payment, String date_bill_payment, int amount_bill_payment, String trade_bill_payment, String description_bill_payment, int discount_bill_payment, int id_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_bill_payment('"+registry_number_bill_payment+"','"+date_bill_payment+"','"+amount_bill_payment+"',"
                                                                    + "'"+trade_bill_payment+"','"+description_bill_payment+"','"+discount_bill_payment+"','"+id_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Pago de Factura guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Pago de Factura no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarBillPayment(String registry_number_bill_payment){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_bill_payment('"+registry_number_bill_payment+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Pago de Factura eliminado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Pago de Factura no eliminado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarBillPayment(String registry_number_bill_payment_modificar, String registry_number_bill_payment, String date_bill_payment, int amount_bill_payment, String trade_bill_payment, String description_bill_payment, int discount_bill_payment, int id_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_bill_payment('"+registry_number_bill_payment_modificar+"','"+registry_number_bill_payment+"','"+date_bill_payment+"','"+amount_bill_payment+"',"
                                                                    + "'"+trade_bill_payment+"','"+description_bill_payment+"','"+discount_bill_payment+"','"+id_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Pago de Factura modificado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Pago de Factura no modificado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

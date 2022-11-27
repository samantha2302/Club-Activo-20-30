package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class MembershipPayment {
    conexionsql con = new conexionsql();

    public MembershipPayment() {
    }
    
    public void insertarMembershipPayment(int membership_payment_record, String status_membership_payment, int amount_membership_payment, String date_membership_payment, int id_member){
          try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_membership_payment('"+membership_payment_record+"','"+status_membership_payment+"','"+amount_membership_payment+"',"
                                                                    + "'"+date_membership_payment+"','"+id_member+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Membership Payment guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Membership Payment no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarMembershipPayment(int membership_payment_record){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_membership_payment('"+membership_payment_record+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Membership Payment eliminado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Membership Payment no eliminado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarMembershipPayment( int membership_payment_record_modificar,int membership_payment_record, String status_membership_payment, int amount_membership_payment, String date_membership_payment, int id_member){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_membership_payment('"+membership_payment_record_modificar+"','"+membership_payment_record+"','"+status_membership_payment+"','"+amount_membership_payment+"',"
                                                                    + "'"+date_membership_payment+"','"+id_member+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Membership Payment modificado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Membership Payment no modificado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

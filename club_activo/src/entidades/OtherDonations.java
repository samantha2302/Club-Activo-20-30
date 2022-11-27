package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class OtherDonations {
    conexionsql con = new conexionsql();

    public OtherDonations() {
    }
     
    public void insertarOtherDonations(int serial_number_other_donations, String date_other_donations, String description_other_donations, int approximate_amount, int id_sponsor){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_other_donations('"+serial_number_other_donations+"','"+date_other_donations+"','"+description_other_donations+"',"
                                                                    + "'"+approximate_amount+"','"+id_sponsor+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Otra Donacion guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Otra Donacion no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarOtherDonations(int serial_number_other_donations){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_other_donations('"+serial_number_other_donations+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Otra Donacion eliminada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Otra Donacion no eliminada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarOtherDonations(int serial_number_other_donations_modificar, int serial_number_other_donations, String date_other_donations, String description_other_donations, int approximate_amount, int id_sponsor){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_other_donations('"+serial_number_other_donations_modificar+"','"+serial_number_other_donations+"','"+date_other_donations+"','"+description_other_donations+"',"
                                                                    + "'"+approximate_amount+"','"+id_sponsor+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Otra Donacion modificado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Otra Donacion no modificado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

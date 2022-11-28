package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class EconomicEntry {
    conexionsql con = new conexionsql();

    public EconomicEntry() {
    }
    
    public void insertarEconomicEntry(int transaction_number_economic_entry, String description_economic_entry, String date_economic_entry, int amount_economic_entry, int id_sponsor){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_economic_entry('"+transaction_number_economic_entry+"','"+description_economic_entry+"','"+date_economic_entry+"',"
                                                                    + "'"+amount_economic_entry+"','"+id_sponsor+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Entrada Economica guardada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Entrada Economica no guardada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarEconomicEntry(int transaction_number_economic_entry){
         try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_economic_entry('"+transaction_number_economic_entry+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Entrada Economica eliminada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Entrada Economica no eliminada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarEconomicEntry(int transaction_number_economic_entry_modificar, int transaction_number_economic_entry, String description_economic_entry, String date_economic_entry, int amount_economic_entry, int id_sponsor){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_economic_entry('"+transaction_number_economic_entry_modificar+"','"+transaction_number_economic_entry+"','"+description_economic_entry+"','"+date_economic_entry+"',"
                                                                    + "'"+amount_economic_entry+"','"+id_sponsor+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Entrada Economica guardada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Entrada Economica no guardada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

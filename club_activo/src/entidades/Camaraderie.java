package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class Camaraderie {
    conexionsql con = new conexionsql();

    public Camaraderie() {
    }
    
    public void insertarCamaraderie(int id_camaraderie, String event_club_camaraderie, String event_day_camaraderie, int photos_ot_the_event_camaraderie , int id_event){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_camaraderie('"+id_camaraderie+"','"+event_club_camaraderie+"','"+event_day_camaraderie+"',"
                                                                    + "'"+photos_ot_the_event_camaraderie+"','"+id_event+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Camaraderia guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Camaraderia no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarCamaraderie(int id_camaraderie){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_camaraderie('"+id_camaraderie+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Camaraderia eliminada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Camaraderia no eliminada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarCamaraderie(int id_camaraderie_modificar, int id_camaraderie, String event_club_camaraderie, String event_day_camaraderie, int photos_ot_the_event_camaraderie , int id_event){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_camaraderie('"+id_camaraderie_modificar+"','"+id_camaraderie+"','"+event_club_camaraderie+"','"+event_day_camaraderie+"',"
                                                                    + "'"+photos_ot_the_event_camaraderie+"','"+id_event+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Camaraderia modificada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Camaraderia no modificada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

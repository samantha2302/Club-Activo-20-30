package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class AttendMemberEvent {
    conexionsql con = new conexionsql();

    public AttendMemberEvent() {
    }
    
    public void insertarAttendMemberEvent(int id_member, int id_event){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_attend_member_event('"+id_member+"','"+id_event+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Relacion guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Relacion no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarAttendMemberEvent(int id_member, int id_event){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_attend_member_event('"+id_member+"','"+id_event+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Relacion eliminada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Relacion no eliminada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarAttendMemberEvent(int id_member_modificar, int id_event_modificar, int id_member, int id_event){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_attend_member_event('"+id_member_modificar+"','"+id_event_modificar+"','"+id_member+"','"+id_event+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Relacion modificada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Relacion no modificada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

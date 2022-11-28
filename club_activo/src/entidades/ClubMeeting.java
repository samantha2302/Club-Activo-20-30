package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class ClubMeeting {
    conexionsql con = new conexionsql();

    public ClubMeeting() {
    }
    
    public void insertarClubMeeting(int id_club_meeting, String date_club_meeting, String hour_club_meeting, String type_club_meeting, String reunion_class, String attendance_club_meeting, int id_member){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_club_meeting('"+id_club_meeting+"','"+date_club_meeting+"','"+hour_club_meeting+"',"
                                                                    + "'"+type_club_meeting+"','"+reunion_class+"','"+attendance_club_meeting+"','"+id_member+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Reunion de club guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Reunion de club no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarClubMeeting(int id_club_meeting){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_club_meeting('"+id_club_meeting+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Reunion de club eliminada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Reunion de club no eliminada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarClubMeeting(int id_club_meeting_modificar, int id_club_meeting, String date_club_meeting, String hour_club_meeting, String type_club_meeting, String reunion_class, String attendance_club_meeting, int id_member){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_club_meeting('"+id_club_meeting_modificar+"','"+id_club_meeting+"','"+date_club_meeting+"','"+hour_club_meeting+"',"
                                                                    + "'"+type_club_meeting+"','"+reunion_class+"','"+attendance_club_meeting+"','"+id_member+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Reunion de club modificado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Reunion de club no modificado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

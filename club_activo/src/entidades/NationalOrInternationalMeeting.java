package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class NationalOrInternationalMeeting {
    conexionsql con = new conexionsql();

    public NationalOrInternationalMeeting() {
    }
    
    public void insertarNationalOrInternationalMeeting(int id_national_or_international_meeting, String attendance_national_or_international_meeting, String type_national_or_international_meeting, String hour_national_or_international_meeting, String date_national_or_international_meeting, int id_board_of_directors){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_national_or_international_meeting('"+id_national_or_international_meeting+"','"+attendance_national_or_international_meeting+"','"+type_national_or_international_meeting+"',"
                                                                    + "'"+hour_national_or_international_meeting+"','"+date_national_or_international_meeting+"','"+id_board_of_directors+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Reunion Nacional o Internacional guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Reunion Nacional o Internacional no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarNationalOrInternationalMeeting(int id_national_or_international_meeting){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_national_or_international_meeting('"+id_national_or_international_meeting+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Reunion Nacional o Internacional eliminada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Reunion Nacional o Internacional no eliminada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarNationalOrInternationalMeeting(int id_national_or_international_meeting_modificar, int id_national_or_international_meeting, String attendance_national_or_international_meeting, String type_national_or_international_meeting, String hour_national_or_international_meeting, String date_national_or_international_meeting, int id_board_of_directors){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_national_or_international_meeting('"+id_national_or_international_meeting_modificar+"','"+id_national_or_international_meeting+"','"+attendance_national_or_international_meeting+"','"+type_national_or_international_meeting+"',"
                                                                    + "'"+hour_national_or_international_meeting+"','"+date_national_or_international_meeting+"','"+id_board_of_directors+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Reunion Nacional o Internacional modificada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Reunion Nacional o Internacional no modificada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
}

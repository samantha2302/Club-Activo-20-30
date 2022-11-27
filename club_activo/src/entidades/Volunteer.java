package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class Volunteer {
    conexionsql con = new conexionsql();

    public Volunteer() {
    }
    
    public void insertarVolunteer(int id_volunteer, String name_volunteer, String last_name_volunteer, int phone_number_volunteer, String mail_volunteer, int id_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_volunteer('"+id_volunteer+"','"+name_volunteer+"','"+last_name_volunteer+"',"
                                                                    + "'"+phone_number_volunteer+"','"+mail_volunteer+"','"+id_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Voluntario guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Voluntario no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarVolunteer(int id_volunteer){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_volunteer('"+id_volunteer+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Voluntario eliminado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Voluntario no eliminado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarVolunteer(int id_volunteer_modificado, int id_volunteer, String name_volunteer, String last_name_volunteer, int phone_number_volunteer, String mail_volunteer, int id_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_volunteer('"+id_volunteer_modificado+"','"+id_volunteer+"','"+name_volunteer+"','"+last_name_volunteer+"',"
                                                                    + "'"+phone_number_volunteer+"','"+mail_volunteer+"','"+id_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Voluntario modificado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Voluntario no modificado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

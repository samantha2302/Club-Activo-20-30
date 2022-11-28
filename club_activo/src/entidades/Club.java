package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class Club {
    conexionsql con = new conexionsql();

    public Club() {
    }
    
    public void insertarClub(int id_club, String name_club, int phone_number_club, String mail_club, String anniversary_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_club('"+id_club+"','"+name_club+"','"+phone_number_club+"',"
                                                                    + "'"+mail_club+"','"+anniversary_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Club guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Club no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarClub(int id_club_borrar){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_club('"+id_club_borrar+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Club eliminado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Club no eliminado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }

    }
    
    public void modificarClub(int id_club_mod, int id_club, String name_club, int phone_number_club, String mail_club, String anniversary_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_club('"+id_club_mod+"','"+id_club+"','"+name_club+"','"+phone_number_club+"',"
                                                                    + "'"+mail_club+"','"+anniversary_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Club modificado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Club no modificado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
}

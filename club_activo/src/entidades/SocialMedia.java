package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class SocialMedia {
    conexionsql con = new conexionsql();

    public SocialMedia() {
    }
    
    public void insertarSocialMedia(String id_social_media, String social_network, int number_of_followers, int id_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_social_media('"+id_social_media+"','"+social_network+"','"+number_of_followers+"',"
                                                                    + "'"+id_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Red Social guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Red Social no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarSocialMedia(String id_social_media){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_social_media('"+id_social_media+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Red Social eliminada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Red Social no eliminada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarSocialMedia(String id_social_media_modificar, String id_social_media, String social_network, int number_of_followers, int id_club){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_social_media('"+id_social_media_modificar+"','"+id_social_media+"','"+social_network+"','"+number_of_followers+"',"
                                                                    + "'"+id_club+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Red Social modificada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Red Social no modificada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

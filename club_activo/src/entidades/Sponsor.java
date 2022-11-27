package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class Sponsor {
    conexionsql con = new conexionsql();

    public Sponsor() {
    }
    
    public void insertarSponsor(int id_sponsor, String name_sponsor, String mail_sponsor, String status_sponsor, int phone_number_sponsor, int id_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_sponsor('"+id_sponsor+"','"+name_sponsor+"','"+mail_sponsor+"',"
                                                                    + "'"+status_sponsor+"','"+phone_number_sponsor+"','"+id_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Sponsor guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Sponsor no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarSponsor(int id_sponsor){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_sponsor('"+id_sponsor+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Sponsor eliminado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Sponsor no eliminado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarSponsor(int id_sponsor_modificar, int id_sponsor, String name_sponsor, String mail_sponsor, String status_sponsor, int phone_number_sponsor, int id_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_sponsor('"+id_sponsor_modificar+"','"+id_sponsor+"','"+name_sponsor+"','"+mail_sponsor+"',"
                                                                    + "'"+status_sponsor+"','"+phone_number_sponsor+"','"+id_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Sponsor modificado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Sponsor no modificado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

package sql;

import java.sql.Connection;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import sql.conexionsql;
import ventana_menu.menu_principal;
import ventana_principal.inicio;

public class password {
    conexionsql con = new conexionsql();

    public password() {
    }
    
    public void insertarContra(String pass,int id_member){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_password_member('"+pass+"','"+id_member+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Contraseña guardada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Contraseña no guardada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarContra(int id_member_borrar, String pass_borrar){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_password_member('"+id_member_borrar+"','"+pass_borrar+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Contraseña eliminada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Contraseña no eliminada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarContra(int id_member_cambiar,String new_pass){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_password_member('"+id_member_cambiar+"','"+new_pass+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Contraseña modificada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Contraseña no modificada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void verificarContra(int id_member_veri,String veri_pass){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.verificar_password('"+id_member_veri+"','"+veri_pass+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Contraseña correcta", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
            inicio ini=new inicio();
            menu_principal mem=new menu_principal();
            mem.setVisible(true);
            mem.setLocationRelativeTo(ini);
       
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Contraseña incorrecta"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    
}

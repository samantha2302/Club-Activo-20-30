package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class TypeProject {
    conexionsql con = new conexionsql();

    public TypeProject() {
    }
    
    public void insertarTypeProject(int id_type_project, boolean educational, boolean ecological, boolean recreation, boolean health, boolean other, int id_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_type_project('"+id_type_project+"','"+educational+"','"+ecological+"',"
                                                                   + "'"+recreation+"','"+health+"','"+other+"','"+id_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Tipo de Proyecto guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Tipo de Proyecto no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        
        } 
    }
    
    public void eliminarTypeProject(int id_type_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_type_project('"+id_type_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Tipo de Proyecto eliminado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Tipo de Proyecto no eliminado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        
        } 
    }
    
    public void modificarTypeProject(int id_type_project_modificar, int id_type_project, boolean educational, boolean ecological, boolean recreation, boolean health, boolean other, int id_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_type_project('"+id_type_project_modificar+"','"+id_type_project+"','"+educational+"','"+ecological+"',"
                                                                   + "'"+recreation+"','"+health+"','"+other+"','"+id_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Tipo de Proyecto modificado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Tipo de Proyecto no modificado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        
        } 
    }
    
}

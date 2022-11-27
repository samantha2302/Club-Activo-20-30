package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class CategoryProject {
    conexionsql con = new conexionsql();

    public CategoryProject() {
    }
    
    public void insertarCategoryProject(int id_category_project, boolean social_service, boolean collection_category_project, int id_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_catogory_project('"+id_category_project+"','"+social_service+"','"+collection_category_project+"',"
                                                                    + "'"+id_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Categoria de Proyecto guardada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Categoria de Proyecto no guardada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarCategoryProject(int id_category_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_catogory_project('"+id_category_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Categoria de Proyecto eliminada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Categoria de Proyecto no eliminada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarCategoryProject(int id_category_project_modificar, int id_category_project, boolean social_service, boolean collection_category_project, int id_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_catogory_project('"+id_category_project_modificar+"','"+id_category_project+"','"+social_service+"','"+collection_category_project+"',"
                                                                    + "'"+id_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Categoria de Proyecto modificada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Categoria de Proyecto no modificada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

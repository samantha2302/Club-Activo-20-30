package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class Project {
     conexionsql con = new conexionsql();

    public Project() {
    }
     
    public void insertarProyecto(int id_project, String name_project, String description_project, int number_of_hours_invested_per_partner_project, String completion_date_of_the_project, int number_of_children_benefited_by_project, int number_of_adults_benefited_by_project, int total_amount_of_sponsorship_for_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_project('"+id_project+"','"+name_project+"','"+description_project+"',"
                                                                    + "'"+number_of_hours_invested_per_partner_project+"','"+completion_date_of_the_project+"','"+number_of_children_benefited_by_project+"',"
                                                                    + "'"+number_of_adults_benefited_by_project+"','"+total_amount_of_sponsorship_for_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Proyecto guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Proyecto no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarProjecto(int id_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_project('"+id_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Proyecto eliminado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Proyecto no eliminado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarProyecto(int id_project_modificar, int id_project, String name_project, String description_project, int number_of_hours_invested_per_partner_project, String completion_date_of_the_project, int number_of_children_benefited_by_project, int number_of_adults_benefited_by_project, int total_amount_of_sponsorship_for_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_project('"+id_project_modificar+"','"+id_project+"','"+name_project+"','"+description_project+"',"
                                                                    + "'"+number_of_hours_invested_per_partner_project+"','"+completion_date_of_the_project+"','"+number_of_children_benefited_by_project+"',"
                                                                    + "'"+number_of_adults_benefited_by_project+"','"+total_amount_of_sponsorship_for_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Proyecto actualizado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Proyecto no actualizado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

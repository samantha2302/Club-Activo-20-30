package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class BoardOfDirectors { 
    conexionsql con = new conexionsql();

    public BoardOfDirectors() {
    }
    
    public void insertarBoardOfDirectors(int id_board_of_directors, int year_board_of_directors, String president, String vice_president, String secretary, String treasurer, String fiscal, String vocal1, String vocal2, String director1, String director2, String sargeant_at_arms){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_board_of_directors('"+id_board_of_directors+"','"+year_board_of_directors+"','"+president+"',"
                                                                    + "'"+vice_president+"','"+secretary+"','"+treasurer+"'"
                    + ",'"+fiscal+"','"+vocal1+"','"+vocal2+"','"+director1+"','"+director2+"','"+sargeant_at_arms+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Junta Directiva guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Junta Directiva no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarBoardOfDirectors(int id_board_of_directors){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_board_of_directors('"+id_board_of_directors+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Junta Directiva eliminada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Junta Directiva no eliminada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarBoardOfDirectors(int id_board_of_directors_modificar, int id_board_of_directors, int year_board_of_directors, String president, String vice_president, String secretary, String treasurer, String fiscal, String vocal1, String vocal2, String director1, String director2, String sargeant_at_arms){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_board_of_directors('"+id_board_of_directors_modificar+"','"+id_board_of_directors+"','"+year_board_of_directors+"','"+president+"',"
                                                                    + "'"+vice_president+"','"+secretary+"','"+treasurer+"'"
                    + ",'"+fiscal+"','"+vocal1+"','"+vocal2+"','"+director1+"','"+director2+"','"+sargeant_at_arms+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Junta Directiva modificada", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Junta Directiva no modificada"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

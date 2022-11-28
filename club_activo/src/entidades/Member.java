package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class Member {
    conexionsql con = new conexionsql();

    public Member() {
    }
    
    public void insertarMember(int idMember, String nameMember, String lastNameMember, int phoneNumberMember, int ageMember, String statusMember, String mailMember, int idClub, int idProject, int idBoardOfDirectors){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_member('"+idMember+"','"+nameMember+"','"+lastNameMember+"',"
                                                                    + "'"+phoneNumberMember+"','"+ageMember+"','"+statusMember+"','"+mailMember+"',"
                                                                    + "'"+idClub+"','"+idProject+"','"+idBoardOfDirectors+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Miembro guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Miembro no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
        
    public void eliminarMiembro(int idMember){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_member('"+idMember+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Miembro eliminado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Miembro no eliminado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarMiembro(int idMemberModificar ,int idMember, String nameMember, String lastNameMember, int phoneNumberMember, int ageMember, String statusMember, String mailMember, int idClub, int idProject, int idBoardOfDirectors){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_member('"+idMemberModificar+"','"+idMember+"','"+nameMember+"','"+lastNameMember+"',"
                                                                    + "'"+phoneNumberMember+"','"+ageMember+"','"+statusMember+"','"+mailMember+"',"
                                                                    + "'"+idClub+"','"+idProject+"','"+idBoardOfDirectors+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Miembro actualizado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Miembro no actualizado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
        
}

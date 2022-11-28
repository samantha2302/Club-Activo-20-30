package entidades;

import java.sql.Connection;
import javax.swing.JOptionPane;
import sql.conexionsql;

public class Beneficiary {
    conexionsql con = new conexionsql();

    public Beneficiary() {
    }
    
    public void insertarBeneficiary(int id_beneficiary, String name_beneficiary, String last_name_beneficiary, int phone_number_beneficiary, String address, String mail_beneficiary, int id_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.insert_beneficiary('"+id_beneficiary+"','"+name_beneficiary+"','"+last_name_beneficiary+"',"
                                                                    + "'"+phone_number_beneficiary+"','"+address+"','"+mail_beneficiary+"','"+id_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Beneficiario guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Beneficiario no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void eliminarBeneficiary(int id_beneficiary){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.delete_beneficiary('"+id_beneficiary+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Beneficiario eliminado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Beneficiario no eliminado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void modificarBeneficiary(int id_beneficiary_modificar, int id_beneficiary, String name_beneficiary, String last_name_beneficiary, int phone_number_beneficiary, String address, String mail_beneficiary, int id_project){
        try{
            Connection conexion = con.conectar();
            java.sql.Statement st = conexion.createStatement();
            String query = "SELECT * FROM desarrollo.update_beneficiary('"+id_beneficiary_modificar+"','"+id_beneficiary+"','"+name_beneficiary+"','"+last_name_beneficiary+"',"
                                                                    + "'"+phone_number_beneficiary+"','"+address+"','"+mail_beneficiary+"','"+id_project+"')";
            st.execute(query);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Beneficiario modificado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Beneficiario no modificado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
}

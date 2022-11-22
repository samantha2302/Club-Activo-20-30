/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sql;

import java.sql.Connection;
import javax.swing.JOptionPane;

/**
 *
 * @author Katherine
 */

public class crudsql {
      conexionsql con = new conexionsql();
    
    public void insertar(String id_member,String name_member,String last_name_member,
    String phone_number_member,String age_member,String status_member,String mail_member,
            String id_club,String id_project,String id_board_of_directors){
        try {
           Connection conexion = con.conectar();
           java.sql.Statement st = conexion.createStatement();
           String sql="insert into member(id_member,name_member,last_name_member,"
                   + "phone_number_member,age_member,status_member,"
                   + "mail_member,id_club,id_project,"
                   + "id_board_of_directors) values('"+id_member+"','"+name_member+"','"+last_name_member+"',"
                                                     + "'"+phone_number_member+"','"+age_member+"','"+status_member+"',"
                                                     + "'"+mail_member+"','"+id_club+"','"+id_project+"','"+id_board_of_directors+"')";
          
           st.execute(sql);
           st.close();
           conexion.close();
           JOptionPane.showMessageDialog(null, "Registro guardado", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
        }
        catch(Exception e) {
            JOptionPane.showMessageDialog(null, "Registro no guardado"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
}}

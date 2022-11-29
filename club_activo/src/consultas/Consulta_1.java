package consultas;

import java.sql.*;
import javax.swing.*;
import javax.swing.table.*;
import sql.conexionsql;


public class Consulta_1 extends javax.swing.JInternalFrame {
    
    conexionsql con = new conexionsql();
    

    public Consulta_1() {
        initComponents();
    }
    
    public void mostrar(){
        String query = "SELECT * FROM desarrollo.miembros_por_club()";
        
        DefaultTableModel tablaC1 = new DefaultTableModel();
        tablaC1.addColumn("Nombre Cliente");
        tablaC1.addColumn("Nombre Club");
        tablaC1.addColumn("Id Proyecto");
        tablaC1.addColumn("Nombre Proyecto");
        Tabla_consulta1.setModel(tablaC1);
        
        String []datos = new String[5]; // Es el numero de columnas que retorna el query
        
        try{
           
            Connection conexion = con.conectar();
            Statement st = conexion.createStatement();
            ResultSet resultado = st.executeQuery(query);
            
            while(resultado.next()){
                datos[0] = resultado.getString(1);
                datos[1] = resultado.getString(2);
                datos[2] = resultado.getString(3);
                datos[3] = resultado.getString(4);
                tablaC1.addRow(datos);
            }
            

            //Tabla_consulta1.setModel(tablaC1);

        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Error en la consulta"+e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        Tabla_consulta1 = new javax.swing.JTable();

        jPanel1.setBackground(new java.awt.Color(87, 124, 152));

        Tabla_consulta1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(Tabla_consulta1);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(57, 57, 57)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(76, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(73, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(32, 32, 32))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable Tabla_consulta1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JInternalFrame.java to edit this template
 */
package actualizar_datos;

import agregar_datos.*;

/**
 *
 * @author Katherine
 */
public class modificar_entrada_especie extends javax.swing.JInternalFrame {

    /**
     * Creates new form agregar_entrada_especie
     */
    public modificar_entrada_especie() {
        initComponents();
        this.setClosable(true);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        idClub = new javax.swing.JTextField();
        jPanel1 = new javax.swing.JPanel();
        idClub1 = new javax.swing.JTextField();
        idClub2 = new javax.swing.JTextField();
        idClub3 = new javax.swing.JTextField();
        idClub4 = new javax.swing.JTextField();
        idClub5 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();

        idClub.setBackground(new java.awt.Color(85, 124, 152));
        idClub.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idClub.setForeground(new java.awt.Color(255, 255, 255));
        idClub.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Cédula Jurídica", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        jPanel1.setBackground(new java.awt.Color(85, 124, 152));

        idClub1.setBackground(new java.awt.Color(85, 124, 152));
        idClub1.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idClub1.setForeground(new java.awt.Color(255, 255, 255));
        idClub1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número de Transacción", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        idClub2.setBackground(new java.awt.Color(85, 124, 152));
        idClub2.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idClub2.setForeground(new java.awt.Color(255, 255, 255));
        idClub2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Descripción", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        idClub3.setBackground(new java.awt.Color(85, 124, 152));
        idClub3.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idClub3.setForeground(new java.awt.Color(255, 255, 255));
        idClub3.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Fecha", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        idClub4.setBackground(new java.awt.Color(85, 124, 152));
        idClub4.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idClub4.setForeground(new java.awt.Color(255, 255, 255));
        idClub4.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Cantidad", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        idClub5.setBackground(new java.awt.Color(85, 124, 152));
        idClub5.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idClub5.setForeground(new java.awt.Color(255, 255, 255));
        idClub5.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Cédula del Patrocinador", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        jButton1.setBackground(new java.awt.Color(52, 84, 132));
        jButton1.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        jButton1.setForeground(new java.awt.Color(255, 255, 255));
        jButton1.setText("Agregar Entrada");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(32, 32, 32)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(idClub4, javax.swing.GroupLayout.PREFERRED_SIZE, 172, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(idClub3, javax.swing.GroupLayout.DEFAULT_SIZE, 172, Short.MAX_VALUE)
                                .addComponent(idClub2)
                                .addComponent(idClub1)
                                .addComponent(idClub5))))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(53, 53, 53)
                        .addComponent(jButton1)))
                .addContainerGap(39, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(idClub1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(idClub3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(idClub2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(idClub4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(idClub5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton1)
                .addContainerGap(26, Short.MAX_VALUE))
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
    private javax.swing.JTextField idClub;
    private javax.swing.JTextField idClub1;
    private javax.swing.JTextField idClub2;
    private javax.swing.JTextField idClub3;
    private javax.swing.JTextField idClub4;
    private javax.swing.JTextField idClub5;
    private javax.swing.JButton jButton1;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}

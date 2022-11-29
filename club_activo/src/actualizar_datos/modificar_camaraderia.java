
package actualizar_datos;

import entidades.Camaraderie;

public class modificar_camaraderia extends javax.swing.JInternalFrame {

    public modificar_camaraderia() {
        initComponents();
        this.setClosable(true);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        idCamara = new javax.swing.JTextField();
        fechaCamara = new javax.swing.JTextField();
        fotosCamara = new javax.swing.JTextField();
        nomClubCamara = new javax.swing.JTextField();
        idEventoCamara = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        idMo = new javax.swing.JTextField();

        jPanel1.setBackground(new java.awt.Color(85, 124, 152));

        idCamara.setBackground(new java.awt.Color(85, 124, 152));
        idCamara.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idCamara.setForeground(new java.awt.Color(255, 255, 255));
        idCamara.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número de Camaradería", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        fechaCamara.setBackground(new java.awt.Color(85, 124, 152));
        fechaCamara.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        fechaCamara.setForeground(new java.awt.Color(255, 255, 255));
        fechaCamara.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Fecha del evento", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        fotosCamara.setBackground(new java.awt.Color(85, 124, 152));
        fotosCamara.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        fotosCamara.setForeground(new java.awt.Color(255, 255, 255));
        fotosCamara.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Fotos del evento", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        nomClubCamara.setBackground(new java.awt.Color(85, 124, 152));
        nomClubCamara.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        nomClubCamara.setForeground(new java.awt.Color(255, 255, 255));
        nomClubCamara.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Club del evento", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        idEventoCamara.setBackground(new java.awt.Color(85, 124, 152));
        idEventoCamara.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idEventoCamara.setForeground(new java.awt.Color(255, 255, 255));
        idEventoCamara.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número del evento", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        jButton1.setBackground(new java.awt.Color(52, 84, 132));
        jButton1.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        jButton1.setForeground(new java.awt.Color(255, 255, 255));
        jButton1.setText("Modificar Camaradería");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        idMo.setBackground(new java.awt.Color(85, 124, 152));
        idMo.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idMo.setForeground(new java.awt.Color(255, 255, 255));
        idMo.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número a Verificar", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(67, 67, 67)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jButton1)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                        .addComponent(nomClubCamara, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 181, Short.MAX_VALUE)
                        .addComponent(idCamara, javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(fechaCamara, javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(fotosCamara, javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(idEventoCamara, javax.swing.GroupLayout.DEFAULT_SIZE, 181, Short.MAX_VALUE)
                        .addComponent(idMo, javax.swing.GroupLayout.Alignment.LEADING)))
                .addContainerGap(59, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(idMo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(idCamara, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(nomClubCamara, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(fechaCamara, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(fotosCamara, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(idEventoCamara, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(23, Short.MAX_VALUE))
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

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        Camaraderie cam=new Camaraderie();
        int idMod = Integer.parseUnsignedInt(idMo.getText());
        int idCam = Integer.parseUnsignedInt(idCamara.getText());
        int foto = Integer.parseUnsignedInt(fotosCamara.getText());
        int idEven = Integer.parseUnsignedInt(idEventoCamara.getText());
        cam.modificarCamaraderie(idMod,idCam,nomClubCamara.getText(),fechaCamara.getText(),foto,idEven);
    }//GEN-LAST:event_jButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField fechaCamara;
    private javax.swing.JTextField fotosCamara;
    private javax.swing.JTextField idCamara;
    private javax.swing.JTextField idEventoCamara;
    private javax.swing.JTextField idMo;
    private javax.swing.JButton jButton1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField nomClubCamara;
    // End of variables declaration//GEN-END:variables
}

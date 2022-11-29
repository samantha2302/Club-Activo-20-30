package actualizar_datos;

import entidades.CategoryProject;

public class modificar_categoria_proyecto extends javax.swing.JInternalFrame {
    

    public modificar_categoria_proyecto() {
        initComponents();
        this.setClosable(true); 
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        idModificar = new javax.swing.JTextField();
        servicio = new javax.swing.JTextField();
        recaudo = new javax.swing.JTextField();
        id_proyecto = new javax.swing.JTextField();
        btnModificarCategoria = new javax.swing.JButton();
        idCate = new javax.swing.JTextField();

        jPanel1.setBackground(new java.awt.Color(85, 124, 152));

        idModificar.setBackground(new java.awt.Color(85, 124, 152));
        idModificar.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idModificar.setForeground(new java.awt.Color(255, 255, 255));
        idModificar.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número a Verificar", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        servicio.setBackground(new java.awt.Color(85, 124, 152));
        servicio.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        servicio.setForeground(new java.awt.Color(255, 255, 255));
        servicio.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Servicio Social", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        recaudo.setBackground(new java.awt.Color(85, 124, 152));
        recaudo.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        recaudo.setForeground(new java.awt.Color(255, 255, 255));
        recaudo.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Recaudo", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        id_proyecto.setBackground(new java.awt.Color(85, 124, 152));
        id_proyecto.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        id_proyecto.setForeground(new java.awt.Color(255, 255, 255));
        id_proyecto.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número de Proyecto", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        btnModificarCategoria.setBackground(new java.awt.Color(36, 52, 84));
        btnModificarCategoria.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        btnModificarCategoria.setForeground(new java.awt.Color(255, 255, 255));
        btnModificarCategoria.setText("Modificar  Categoría");
        btnModificarCategoria.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnModificarCategoriaActionPerformed(evt);
            }
        });

        idCate.setBackground(new java.awt.Color(85, 124, 152));
        idCate.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idCate.setForeground(new java.awt.Color(255, 255, 255));
        idCate.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número de Categoría", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnModificarCategoria)
                .addGap(84, 84, 84))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(73, 73, 73)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(idModificar, javax.swing.GroupLayout.PREFERRED_SIZE, 184, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(64, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(idCate, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 184, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(servicio, javax.swing.GroupLayout.DEFAULT_SIZE, 184, Short.MAX_VALUE)
                                .addComponent(id_proyecto)
                                .addComponent(recaudo)))
                        .addGap(0, 0, Short.MAX_VALUE))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(11, 11, 11)
                .addComponent(idModificar, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 12, Short.MAX_VALUE)
                .addComponent(idCate, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(servicio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(recaudo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(id_proyecto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnModificarCategoria)
                .addGap(28, 28, 28))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnModificarCategoriaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnModificarCategoriaActionPerformed
       CategoryProject cate=new CategoryProject();
       int idMod = Integer.parseUnsignedInt(idModificar.getText());
       int idCat = Integer.parseUnsignedInt(idCate.getText());
       int idProy = Integer.parseUnsignedInt(id_proyecto.getText());
       boolean ser = Boolean.parseBoolean(servicio.getText());
       boolean rec = Boolean.parseBoolean(recaudo.getText());
       cate.modificarCategoryProject(idMod,idCat,ser,rec,idProy);
    }//GEN-LAST:event_btnModificarCategoriaActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnModificarCategoria;
    private javax.swing.JTextField idCate;
    private javax.swing.JTextField idModificar;
    private javax.swing.JTextField id_proyecto;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField recaudo;
    private javax.swing.JTextField servicio;
    // End of variables declaration//GEN-END:variables
}

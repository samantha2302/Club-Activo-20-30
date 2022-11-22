package agregar_datos;

/**
 *
 * @author Katherine
 */
public class agregar_categoria_proyecto extends javax.swing.JInternalFrame {
    

    public agregar_categoria_proyecto() {
        initComponents();
        this.setClosable(true); 
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        categoria = new javax.swing.JTextField();
        servicio = new javax.swing.JTextField();
        recaudo = new javax.swing.JTextField();
        id_proyecto = new javax.swing.JTextField();
        btnAgregarCategoria = new javax.swing.JButton();

        jPanel1.setBackground(new java.awt.Color(85, 124, 152));

        categoria.setBackground(new java.awt.Color(85, 124, 152));
        categoria.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        categoria.setForeground(new java.awt.Color(255, 255, 255));
        categoria.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número de Categoría", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

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

        btnAgregarCategoria.setBackground(new java.awt.Color(36, 52, 84));
        btnAgregarCategoria.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        btnAgregarCategoria.setForeground(new java.awt.Color(255, 255, 255));
        btnAgregarCategoria.setText("Agregar Categoría");
        btnAgregarCategoria.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAgregarCategoriaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(73, 73, 73)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(categoria, javax.swing.GroupLayout.PREFERRED_SIZE, 184, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(64, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(servicio, javax.swing.GroupLayout.DEFAULT_SIZE, 184, Short.MAX_VALUE)
                            .addComponent(id_proyecto)
                            .addComponent(recaudo))
                        .addGap(0, 0, Short.MAX_VALUE))))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnAgregarCategoria)
                .addGap(84, 84, 84))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addComponent(categoria, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(servicio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(recaudo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(12, 12, 12)
                .addComponent(id_proyecto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(btnAgregarCategoria)
                .addContainerGap(23, Short.MAX_VALUE))
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

    private void btnAgregarCategoriaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAgregarCategoriaActionPerformed
       
    }//GEN-LAST:event_btnAgregarCategoriaActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAgregarCategoria;
    private javax.swing.JTextField categoria;
    private javax.swing.JTextField id_proyecto;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField recaudo;
    private javax.swing.JTextField servicio;
    // End of variables declaration//GEN-END:variables
}

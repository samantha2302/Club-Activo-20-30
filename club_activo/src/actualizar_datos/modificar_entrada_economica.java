
package actualizar_datos;

import entidades.EconomicEntry;

public class modificar_entrada_economica extends javax.swing.JInternalFrame {

    
    public modificar_entrada_economica() {
        initComponents();
        this.setClosable(true);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        idEntra = new javax.swing.JTextField();
        descrip = new javax.swing.JTextField();
        fecha = new javax.swing.JTextField();
        monto = new javax.swing.JTextField();
        idPatro = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        idMod = new javax.swing.JTextField();

        jPanel1.setBackground(new java.awt.Color(85, 124, 152));

        idEntra.setBackground(new java.awt.Color(85, 124, 152));
        idEntra.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idEntra.setForeground(new java.awt.Color(255, 255, 255));
        idEntra.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número de Transacción", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        descrip.setBackground(new java.awt.Color(85, 124, 152));
        descrip.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        descrip.setForeground(new java.awt.Color(255, 255, 255));
        descrip.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Descripción", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        fecha.setBackground(new java.awt.Color(85, 124, 152));
        fecha.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        fecha.setForeground(new java.awt.Color(255, 255, 255));
        fecha.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Fecha", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        monto.setBackground(new java.awt.Color(85, 124, 152));
        monto.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        monto.setForeground(new java.awt.Color(255, 255, 255));
        monto.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Cantidad ", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        idPatro.setBackground(new java.awt.Color(85, 124, 152));
        idPatro.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idPatro.setForeground(new java.awt.Color(255, 255, 255));
        idPatro.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Cédula del Patrocinador", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        jButton1.setBackground(new java.awt.Color(52, 84, 132));
        jButton1.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        jButton1.setForeground(new java.awt.Color(255, 255, 255));
        jButton1.setText("Modicar Entrada");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        idMod.setBackground(new java.awt.Color(85, 124, 152));
        idMod.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idMod.setForeground(new java.awt.Color(255, 255, 255));
        idMod.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número a Verificar", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(45, 45, 45)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(idPatro, javax.swing.GroupLayout.PREFERRED_SIZE, 179, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(descrip, javax.swing.GroupLayout.PREFERRED_SIZE, 179, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(idEntra, javax.swing.GroupLayout.PREFERRED_SIZE, 179, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(fecha, javax.swing.GroupLayout.PREFERRED_SIZE, 179, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(monto, javax.swing.GroupLayout.PREFERRED_SIZE, 179, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(idMod, javax.swing.GroupLayout.PREFERRED_SIZE, 179, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(66, 66, 66)
                        .addComponent(jButton1)))
                .addContainerGap(46, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(12, Short.MAX_VALUE)
                .addComponent(idMod, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(idEntra, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(descrip, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(fecha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(monto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(idPatro, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton1)
                .addGap(18, 18, 18))
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
        EconomicEntry eco=new EconomicEntry();
        int idModi = Integer.parseUnsignedInt(idMod.getText());
        int idEnt = Integer.parseUnsignedInt(idEntra.getText());
        int mont = Integer.parseUnsignedInt(monto.getText());
        int idPat = Integer.parseUnsignedInt(idPatro.getText());
        eco.modificarEconomicEntry(idModi,idEnt,descrip.getText(),fecha.getText(),mont,idPat);
    }//GEN-LAST:event_jButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField descrip;
    private javax.swing.JTextField fecha;
    private javax.swing.JTextField idEntra;
    private javax.swing.JTextField idMod;
    private javax.swing.JTextField idPatro;
    private javax.swing.JButton jButton1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField monto;
    // End of variables declaration//GEN-END:variables
}

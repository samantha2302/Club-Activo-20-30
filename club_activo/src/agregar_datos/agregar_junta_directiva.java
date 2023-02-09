
package agregar_datos;

import entidades.BoardOfDirectors;

public class agregar_junta_directiva extends javax.swing.JInternalFrame {

    public agregar_junta_directiva() {
        initComponents();
        this.setClosable(true);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        idJunta = new javax.swing.JTextField();
        vice = new javax.swing.JTextField();
        secre = new javax.swing.JTextField();
        year = new javax.swing.JTextField();
        voca1 = new javax.swing.JTextField();
        presi = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        tese = new javax.swing.JTextField();
        fisca = new javax.swing.JTextField();
        voca2 = new javax.swing.JTextField();
        dic1 = new javax.swing.JTextField();
        dic2 = new javax.swing.JTextField();
        sar = new javax.swing.JTextField();

        jPanel1.setBackground(new java.awt.Color(85, 124, 152));

        idJunta.setBackground(new java.awt.Color(85, 124, 152));
        idJunta.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idJunta.setForeground(new java.awt.Color(255, 255, 255));
        idJunta.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número de Junta", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        vice.setBackground(new java.awt.Color(85, 124, 152));
        vice.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        vice.setForeground(new java.awt.Color(255, 255, 255));
        vice.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Vicepresidente", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        secre.setBackground(new java.awt.Color(85, 124, 152));
        secre.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        secre.setForeground(new java.awt.Color(255, 255, 255));
        secre.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Secretario", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        year.setBackground(new java.awt.Color(85, 124, 152));
        year.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        year.setForeground(new java.awt.Color(255, 255, 255));
        year.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Año", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        voca1.setBackground(new java.awt.Color(85, 124, 152));
        voca1.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        voca1.setForeground(new java.awt.Color(255, 255, 255));
        voca1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Vocal 1", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        presi.setBackground(new java.awt.Color(85, 124, 152));
        presi.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        presi.setForeground(new java.awt.Color(255, 255, 255));
        presi.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Presidente", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        jButton1.setBackground(new java.awt.Color(52, 84, 132));
        jButton1.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        jButton1.setForeground(new java.awt.Color(255, 255, 255));
        jButton1.setText("Agregar Junta Directiva");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        tese.setBackground(new java.awt.Color(85, 124, 152));
        tese.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        tese.setForeground(new java.awt.Color(255, 255, 255));
        tese.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Tesorero", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        fisca.setBackground(new java.awt.Color(85, 124, 152));
        fisca.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        fisca.setForeground(new java.awt.Color(255, 255, 255));
        fisca.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Fiscal", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        voca2.setBackground(new java.awt.Color(85, 124, 152));
        voca2.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        voca2.setForeground(new java.awt.Color(255, 255, 255));
        voca2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Vocal 2", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        dic1.setBackground(new java.awt.Color(85, 124, 152));
        dic1.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        dic1.setForeground(new java.awt.Color(255, 255, 255));
        dic1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Director 1", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        dic2.setBackground(new java.awt.Color(85, 124, 152));
        dic2.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        dic2.setForeground(new java.awt.Color(255, 255, 255));
        dic2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Director 2", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        sar.setBackground(new java.awt.Color(85, 124, 152));
        sar.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        sar.setForeground(new java.awt.Color(255, 255, 255));
        sar.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Sargento de Armas", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(27, 27, 27)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(year)
                    .addComponent(idJunta)
                    .addComponent(presi)
                    .addComponent(vice, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 154, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(voca1)
                    .addComponent(secre, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(fisca, javax.swing.GroupLayout.DEFAULT_SIZE, 165, Short.MAX_VALUE)
                    .addComponent(tese))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                            .addGap(7, 7, 7)
                            .addComponent(dic1, javax.swing.GroupLayout.PREFERRED_SIZE, 165, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(sar, javax.swing.GroupLayout.PREFERRED_SIZE, 165, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(dic2, javax.swing.GroupLayout.PREFERRED_SIZE, 165, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(voca2, javax.swing.GroupLayout.PREFERRED_SIZE, 165, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(32, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 181, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(207, 207, 207))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(idJunta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(voca2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(secre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(year, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(dic1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(tese, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(presi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(dic2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(fisca, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(vice, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(sar, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(voca1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(26, 26, 26)
                .addComponent(jButton1)
                .addContainerGap(25, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        BoardOfDirectors junta=new BoardOfDirectors();
        int idJ = Integer.parseInt(idJunta.getText());
        int ye = Integer.parseInt(year.getText());
        junta.insertarBoardOfDirectors(idJ, ye,presi.getText(),vice.getText(),secre.getText(), tese.getText(),fisca.getText(),voca1.getText(),voca2.getText(),dic1.getText(),dic2.getText(),sar.getText());      
    }//GEN-LAST:event_jButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField dic1;
    private javax.swing.JTextField dic2;
    private javax.swing.JTextField fisca;
    private javax.swing.JTextField idJunta;
    private javax.swing.JButton jButton1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField presi;
    private javax.swing.JTextField sar;
    private javax.swing.JTextField secre;
    private javax.swing.JTextField tese;
    private javax.swing.JTextField vice;
    private javax.swing.JTextField voca1;
    private javax.swing.JTextField voca2;
    private javax.swing.JTextField year;
    // End of variables declaration//GEN-END:variables
}

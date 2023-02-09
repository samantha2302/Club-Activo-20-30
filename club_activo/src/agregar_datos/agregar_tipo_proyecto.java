package agregar_datos;

import entidades.TypeProject;

public class agregar_tipo_proyecto extends javax.swing.JInternalFrame {

    public agregar_tipo_proyecto() {
        initComponents();
        this.setClosable(true); 
    }

  
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanelEco = new javax.swing.JPanel();
        comEco = new javax.swing.JComboBox<>();
        jPanelRecre = new javax.swing.JPanel();
        comRecre = new javax.swing.JComboBox<>();
        jPanelOtro = new javax.swing.JPanel();
        comOtro = new javax.swing.JComboBox<>();
        jPanelEdu = new javax.swing.JPanel();
        comEdu = new javax.swing.JComboBox<>();
        jPanelSalud = new javax.swing.JPanel();
        comSalud = new javax.swing.JComboBox<>();
        btnAgregar = new javax.swing.JButton();
        idProyecto = new javax.swing.JTextField();
        idTipo = new javax.swing.JTextField();

        jPanel1.setBackground(new java.awt.Color(85, 124, 152));

        jPanelEco.setBackground(new java.awt.Color(85, 124, 152));
        jPanelEco.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Ecológico", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N
        jPanelEco.setForeground(new java.awt.Color(255, 255, 255));

        comEco.setBackground(new java.awt.Color(52, 84, 132));
        comEco.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        comEco.setForeground(new java.awt.Color(255, 255, 255));
        comEco.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "SI/NO", "TRUE", "FALSE" }));

        javax.swing.GroupLayout jPanelEcoLayout = new javax.swing.GroupLayout(jPanelEco);
        jPanelEco.setLayout(jPanelEcoLayout);
        jPanelEcoLayout.setHorizontalGroup(
            jPanelEcoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelEcoLayout.createSequentialGroup()
                .addGap(38, 38, 38)
                .addComponent(comEco, javax.swing.GroupLayout.PREFERRED_SIZE, 129, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanelEcoLayout.setVerticalGroup(
            jPanelEcoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelEcoLayout.createSequentialGroup()
                .addComponent(comEco, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 6, Short.MAX_VALUE))
        );

        jPanelRecre.setBackground(new java.awt.Color(85, 124, 152));
        jPanelRecre.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Recreación", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N
        jPanelRecre.setForeground(new java.awt.Color(255, 255, 255));

        comRecre.setBackground(new java.awt.Color(52, 84, 132));
        comRecre.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        comRecre.setForeground(new java.awt.Color(255, 255, 255));
        comRecre.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "SI/NO", "TRUE", "FALSE" }));

        javax.swing.GroupLayout jPanelRecreLayout = new javax.swing.GroupLayout(jPanelRecre);
        jPanelRecre.setLayout(jPanelRecreLayout);
        jPanelRecreLayout.setHorizontalGroup(
            jPanelRecreLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelRecreLayout.createSequentialGroup()
                .addGap(38, 38, 38)
                .addComponent(comRecre, javax.swing.GroupLayout.PREFERRED_SIZE, 129, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(43, Short.MAX_VALUE))
        );
        jPanelRecreLayout.setVerticalGroup(
            jPanelRecreLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelRecreLayout.createSequentialGroup()
                .addComponent(comRecre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 10, Short.MAX_VALUE))
        );

        jPanelOtro.setBackground(new java.awt.Color(85, 124, 152));
        jPanelOtro.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Otro Tipo", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N
        jPanelOtro.setForeground(new java.awt.Color(255, 255, 255));

        comOtro.setBackground(new java.awt.Color(52, 84, 132));
        comOtro.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        comOtro.setForeground(new java.awt.Color(255, 255, 255));
        comOtro.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "SI/NO", "TRUE", "FALSE" }));

        javax.swing.GroupLayout jPanelOtroLayout = new javax.swing.GroupLayout(jPanelOtro);
        jPanelOtro.setLayout(jPanelOtroLayout);
        jPanelOtroLayout.setHorizontalGroup(
            jPanelOtroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelOtroLayout.createSequentialGroup()
                .addGap(38, 38, 38)
                .addComponent(comOtro, javax.swing.GroupLayout.PREFERRED_SIZE, 129, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanelOtroLayout.setVerticalGroup(
            jPanelOtroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelOtroLayout.createSequentialGroup()
                .addComponent(comOtro, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        jPanelEdu.setBackground(new java.awt.Color(85, 124, 152));
        jPanelEdu.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Educativo", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N
        jPanelEdu.setForeground(new java.awt.Color(255, 255, 255));

        comEdu.setBackground(new java.awt.Color(52, 84, 132));
        comEdu.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        comEdu.setForeground(new java.awt.Color(255, 255, 255));
        comEdu.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "SI/NO", "TRUE", "FALSE" }));

        javax.swing.GroupLayout jPanelEduLayout = new javax.swing.GroupLayout(jPanelEdu);
        jPanelEdu.setLayout(jPanelEduLayout);
        jPanelEduLayout.setHorizontalGroup(
            jPanelEduLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelEduLayout.createSequentialGroup()
                .addGap(38, 38, 38)
                .addComponent(comEdu, javax.swing.GroupLayout.PREFERRED_SIZE, 129, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(40, Short.MAX_VALUE))
        );
        jPanelEduLayout.setVerticalGroup(
            jPanelEduLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelEduLayout.createSequentialGroup()
                .addComponent(comEdu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 4, Short.MAX_VALUE))
        );

        jPanelSalud.setBackground(new java.awt.Color(85, 124, 152));
        jPanelSalud.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Salud", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N
        jPanelSalud.setForeground(new java.awt.Color(255, 255, 255));

        comSalud.setBackground(new java.awt.Color(52, 84, 132));
        comSalud.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        comSalud.setForeground(new java.awt.Color(255, 255, 255));
        comSalud.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "SI/NO", "TRUE", "FALSE" }));

        javax.swing.GroupLayout jPanelSaludLayout = new javax.swing.GroupLayout(jPanelSalud);
        jPanelSalud.setLayout(jPanelSaludLayout);
        jPanelSaludLayout.setHorizontalGroup(
            jPanelSaludLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelSaludLayout.createSequentialGroup()
                .addGap(38, 38, 38)
                .addComponent(comSalud, javax.swing.GroupLayout.PREFERRED_SIZE, 129, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(43, Short.MAX_VALUE))
        );
        jPanelSaludLayout.setVerticalGroup(
            jPanelSaludLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelSaludLayout.createSequentialGroup()
                .addComponent(comSalud, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        btnAgregar.setBackground(new java.awt.Color(52, 84, 132));
        btnAgregar.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        btnAgregar.setForeground(new java.awt.Color(255, 255, 255));
        btnAgregar.setText("Agregar Tipo de Proyecto");
        btnAgregar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAgregarActionPerformed(evt);
            }
        });

        idProyecto.setBackground(new java.awt.Color(85, 124, 152));
        idProyecto.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idProyecto.setForeground(new java.awt.Color(255, 255, 255));
        idProyecto.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número del Proyecto", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        idTipo.setBackground(new java.awt.Color(85, 124, 152));
        idTipo.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        idTipo.setForeground(new java.awt.Color(255, 255, 255));
        idTipo.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Número del Tipo de Proyecto", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI Black", 0, 12), new java.awt.Color(255, 255, 255))); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(28, 28, 28)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanelEdu, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanelEco, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(idTipo))
                .addGap(21, 21, 21)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jPanelSalud, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jPanelOtro, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addComponent(jPanelRecre, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 30, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(btnAgregar)
                        .addGap(163, 163, 163))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(idProyecto, javax.swing.GroupLayout.PREFERRED_SIZE, 217, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(145, 145, 145))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(10, 10, 10)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanelRecre, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(idTipo))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanelEdu, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanelSalud, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(12, 12, 12)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanelEco, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanelOtro, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(idProyecto, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnAgregar, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
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
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnAgregarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAgregarActionPerformed
        TypeProject tipo=new TypeProject();
        int idT = Integer.parseInt(idTipo.getText());
        int idP = Integer.parseInt(idProyecto.getText());
        boolean educational = (boolean) comEdu.getSelectedItem();
        boolean ecological = (boolean) comEco.getSelectedItem();
        boolean recreation = (boolean) comRecre.getSelectedItem();
        boolean health = (boolean) comSalud.getSelectedItem();
        boolean other = (boolean) comOtro.getSelectedItem();
        tipo.insertarTypeProject(idT, educational,ecological,recreation,health,other,idP);
    }//GEN-LAST:event_btnAgregarActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAgregar;
    private javax.swing.JComboBox<String> comEco;
    private javax.swing.JComboBox<String> comEdu;
    private javax.swing.JComboBox<String> comOtro;
    private javax.swing.JComboBox<String> comRecre;
    private javax.swing.JComboBox<String> comSalud;
    private javax.swing.JTextField idProyecto;
    private javax.swing.JTextField idTipo;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanelEco;
    private javax.swing.JPanel jPanelEdu;
    private javax.swing.JPanel jPanelOtro;
    private javax.swing.JPanel jPanelRecre;
    private javax.swing.JPanel jPanelSalud;
    // End of variables declaration//GEN-END:variables
}

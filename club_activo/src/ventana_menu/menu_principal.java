
package ventana_menu;

import actualizar_datos.modificar_categoria_proyecto;
import actualizar_datos.modificar_proyecto;
import actualizar_datos.modificar_socio;
import actualizar_datos.modificar_tipo_proyecto;
import agregar_datos.agregar_beneficiario;
import agregar_datos.agregar_camaraderia;
import agregar_datos.agregar_categoria_proyecto;
import agregar_datos.agregar_club;
import agregar_datos.agregar_entrada_economica;
import agregar_datos.agregar_entrada_especie;
import agregar_datos.agregar_evento;
import agregar_datos.agregar_gasto;
import agregar_datos.agregar_junta_directiva;
import agregar_datos.agregar_pago_membresia;
import agregar_datos.agregar_pago_nacional;
import agregar_datos.agregar_pago_regular;
import agregar_datos.agregar_patrocinador;
import agregar_datos.agregar_proyecto;
import agregar_datos.agregar_redes_sociales;
import agregar_datos.agregar_reunion_club;
import agregar_datos.agregar_reunion_internacional;
import agregar_datos.agregar_socio;
import agregar_datos.agregar_socio_a_evento;
import agregar_datos.agregar_tipo_proyecto;
import agregar_datos.agregar_voluntario;
import java.awt.Color;
import java.awt.Image;
import javax.swing.Icon;
import javax.swing.ImageIcon;


public class menu_principal extends javax.swing.JFrame {

    public menu_principal() {
        initComponents();
        
        ImageIcon imagen = new ImageIcon("src/imagenes/cr.png");
        Icon icono = new ImageIcon(imagen.getImage().getScaledInstance(fondo.getWidth(), fondo.getHeight(),Image.SCALE_DEFAULT));
        fondo.setIcon(icono);
        this.repaint(); 
        
        lema1.setForeground(Color.white);
        lema2.setForeground(Color.white);
        
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPopupMenu1 = new javax.swing.JPopupMenu();
        jPopupMenu2 = new javax.swing.JPopupMenu();
        jPopupMenu3 = new javax.swing.JPopupMenu();
        jPopupMenu4 = new javax.swing.JPopupMenu();
        jMenuBar2 = new javax.swing.JMenuBar();
        jMenu3 = new javax.swing.JMenu();
        jMenu4 = new javax.swing.JMenu();
        jFileChooser1 = new javax.swing.JFileChooser();
        jDialog1 = new javax.swing.JDialog();
        jFrame1 = new javax.swing.JFrame();
        popupMenu1 = new java.awt.PopupMenu();
        buttonGroup1 = new javax.swing.ButtonGroup();
        escritorioMenu = new javax.swing.JDesktopPane();
        fondo = new javax.swing.JLabel();
        lema1 = new javax.swing.JLabel();
        lema2 = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenuInsertar = new javax.swing.JMenu();
        jMenuSocio = new javax.swing.JMenu();
        jMenuProyecto = new javax.swing.JMenu();
        jMenuAgregarProyecto = new javax.swing.JMenu();
        jMenuAgregarCategoria = new javax.swing.JMenu();
        jMenuAgregarTipo = new javax.swing.JMenu();
        jMenuAgrePatrocinador = new javax.swing.JMenu();
        jMenuAgreBeneficiario = new javax.swing.JMenu();
        jMenuReunion = new javax.swing.JMenu();
        jMenuAgreReuClub = new javax.swing.JMenu();
        jMenuAgreReuNacioInter = new javax.swing.JMenu();
        jMenuAgregarVoluntario = new javax.swing.JMenu();
        jMenuAgreEvento = new javax.swing.JMenu();
        jMenuAgreCamara = new javax.swing.JMenu();
        jMenuAgreSocioEvento = new javax.swing.JMenu();
        jMenuAgregarEvento = new javax.swing.JMenu();
        jMenuAgregarClub = new javax.swing.JMenu();
        jMenuAgregarRedesSociales = new javax.swing.JMenu();
        jMenu5 = new javax.swing.JMenu();
        jMenuAgregarPagoMembresia = new javax.swing.JMenu();
        jMenuAgregarPagoaNacional = new javax.swing.JMenu();
        jMenuAgregarPagoRegular = new javax.swing.JMenu();
        jMenu6 = new javax.swing.JMenu();
        jMenuAgregarEntradaEconomica = new javax.swing.JMenu();
        jMenuEntradaEspecie = new javax.swing.JMenu();
        jMenuAgreagarGasto = new javax.swing.JMenu();
        jMenuAgregarJuntaDirectiva = new javax.swing.JMenu();
        jMenuEliminar = new javax.swing.JMenu();
        jMenu20 = new javax.swing.JMenu();
        jMenu21 = new javax.swing.JMenu();
        jMenu40 = new javax.swing.JMenu();
        jMenu41 = new javax.swing.JMenu();
        jMenu22 = new javax.swing.JMenu();
        jMenu23 = new javax.swing.JMenu();
        jMenu24 = new javax.swing.JMenu();
        jMenu42 = new javax.swing.JMenu();
        jMenu43 = new javax.swing.JMenu();
        jMenu25 = new javax.swing.JMenu();
        jMenu26 = new javax.swing.JMenu();
        jMenu44 = new javax.swing.JMenu();
        jMenu45 = new javax.swing.JMenu();
        jMenu14 = new javax.swing.JMenu();
        jMenu15 = new javax.swing.JMenu();
        jMenu16 = new javax.swing.JMenu();
        jMenu1 = new javax.swing.JMenu();
        jMenu2 = new javax.swing.JMenu();
        jMenu7 = new javax.swing.JMenu();
        jMenu17 = new javax.swing.JMenu();
        jMenu8 = new javax.swing.JMenu();
        jMenu9 = new javax.swing.JMenu();
        jMenu18 = new javax.swing.JMenu();
        jMenu19 = new javax.swing.JMenu();
        jMenuActualizar = new javax.swing.JMenu();
        modificarSocio = new javax.swing.JMenu();
        jMenu28 = new javax.swing.JMenu();
        modificarTipoProyecto = new javax.swing.JMenu();
        modificarCatergoriaProyecto = new javax.swing.JMenu();
        modificarProyecto = new javax.swing.JMenu();
        modificarPatrocinador = new javax.swing.JMenu();
        modificarBeneficiario = new javax.swing.JMenu();
        jMenu31 = new javax.swing.JMenu();
        modificarReunionClub = new javax.swing.JMenu();
        modificarReunionNacInt = new javax.swing.JMenu();
        modificarVoluntario = new javax.swing.JMenu();
        jMenu33 = new javax.swing.JMenu();
        modificarCamaraderia = new javax.swing.JMenu();
        modificarMiembroenEvento = new javax.swing.JMenu();
        modificarEvento = new javax.swing.JMenu();
        modificarClub = new javax.swing.JMenu();
        modificarRedSocial = new javax.swing.JMenu();
        jMenu58 = new javax.swing.JMenu();
        modificarPagoMembresia = new javax.swing.JMenu();
        modificarPagoNacional = new javax.swing.JMenu();
        modificarPagoRegular = new javax.swing.JMenu();
        jMenu59 = new javax.swing.JMenu();
        modificarEntradaEconomica = new javax.swing.JMenu();
        modificarEntradaEspecie = new javax.swing.JMenu();
        modificarGastos = new javax.swing.JMenu();
        modificarJuntaDirectiva = new javax.swing.JMenu();
        jMenuConsultas = new javax.swing.JMenu();
        jMenu34 = new javax.swing.JMenu();
        jMenu35 = new javax.swing.JMenu();
        jMenu36 = new javax.swing.JMenu();
        jMenu37 = new javax.swing.JMenu();
        jMenu38 = new javax.swing.JMenu();
        jMenu39 = new javax.swing.JMenu();
        jMenu52 = new javax.swing.JMenu();
        jMenu53 = new javax.swing.JMenu();
        jMenu54 = new javax.swing.JMenu();
        jMenu55 = new javax.swing.JMenu();

        jMenu3.setText("File");
        jMenuBar2.add(jMenu3);

        jMenu4.setText("Edit");
        jMenuBar2.add(jMenu4);

        javax.swing.GroupLayout jDialog1Layout = new javax.swing.GroupLayout(jDialog1.getContentPane());
        jDialog1.getContentPane().setLayout(jDialog1Layout);
        jDialog1Layout.setHorizontalGroup(
            jDialog1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        jDialog1Layout.setVerticalGroup(
            jDialog1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout jFrame1Layout = new javax.swing.GroupLayout(jFrame1.getContentPane());
        jFrame1.getContentPane().setLayout(jFrame1Layout);
        jFrame1Layout.setHorizontalGroup(
            jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        jFrame1Layout.setVerticalGroup(
            jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        popupMenu1.setLabel("popupMenu1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lema1.setFont(new java.awt.Font("Segoe UI Black", 0, 14)); // NOI18N
        lema1.setText(" “Sinceridad en Servicio, nuestro Lema para el Éxito”.");

        lema2.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        lema2.setText("“La juventud para ser servida, debe servir”. ");

        escritorioMenu.setLayer(fondo, javax.swing.JLayeredPane.DEFAULT_LAYER);
        escritorioMenu.setLayer(lema1, javax.swing.JLayeredPane.DEFAULT_LAYER);
        escritorioMenu.setLayer(lema2, javax.swing.JLayeredPane.DEFAULT_LAYER);

        javax.swing.GroupLayout escritorioMenuLayout = new javax.swing.GroupLayout(escritorioMenu);
        escritorioMenu.setLayout(escritorioMenuLayout);
        escritorioMenuLayout.setHorizontalGroup(
            escritorioMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, escritorioMenuLayout.createSequentialGroup()
                .addContainerGap(142, Short.MAX_VALUE)
                .addGroup(escritorioMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, escritorioMenuLayout.createSequentialGroup()
                        .addComponent(fondo, javax.swing.GroupLayout.PREFERRED_SIZE, 223, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(212, 212, 212))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, escritorioMenuLayout.createSequentialGroup()
                        .addComponent(lema1, javax.swing.GroupLayout.PREFERRED_SIZE, 393, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(117, 117, 117))))
            .addGroup(escritorioMenuLayout.createSequentialGroup()
                .addGap(188, 188, 188)
                .addComponent(lema2)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        escritorioMenuLayout.setVerticalGroup(
            escritorioMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(escritorioMenuLayout.createSequentialGroup()
                .addGap(61, 61, 61)
                .addComponent(fondo, javax.swing.GroupLayout.PREFERRED_SIZE, 221, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(30, 30, 30)
                .addComponent(lema1, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(lema2)
                .addContainerGap(71, Short.MAX_VALUE))
        );

        jMenuInsertar.setText("Insertar");

        jMenuSocio.setText("Socio");
        jMenuSocio.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuSocioMousePressed(evt);
            }
        });
        jMenuInsertar.add(jMenuSocio);

        jMenuProyecto.setText("Proyecto");

        jMenuAgregarProyecto.setText("Nuevo Proyecto");
        jMenuAgregarProyecto.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarProyectoMousePressed(evt);
            }
        });
        jMenuProyecto.add(jMenuAgregarProyecto);

        jMenuAgregarCategoria.setText("Categoría ");
        jMenuAgregarCategoria.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarCategoriaMousePressed(evt);
            }
        });
        jMenuProyecto.add(jMenuAgregarCategoria);

        jMenuAgregarTipo.setText("Tipo");
        jMenuAgregarTipo.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarTipoMousePressed(evt);
            }
        });
        jMenuProyecto.add(jMenuAgregarTipo);

        jMenuInsertar.add(jMenuProyecto);

        jMenuAgrePatrocinador.setText("Patrocinador");
        jMenuAgrePatrocinador.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgrePatrocinadorMousePressed(evt);
            }
        });
        jMenuInsertar.add(jMenuAgrePatrocinador);

        jMenuAgreBeneficiario.setText("Beneficiario");
        jMenuAgreBeneficiario.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgreBeneficiarioMousePressed(evt);
            }
        });
        jMenuInsertar.add(jMenuAgreBeneficiario);

        jMenuReunion.setText("Reunión");

        jMenuAgreReuClub.setText("Club");
        jMenuAgreReuClub.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgreReuClubMousePressed(evt);
            }
        });
        jMenuReunion.add(jMenuAgreReuClub);

        jMenuAgreReuNacioInter.setText("Nacional e Internacional");
        jMenuAgreReuNacioInter.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgreReuNacioInterMousePressed(evt);
            }
        });
        jMenuReunion.add(jMenuAgreReuNacioInter);

        jMenuInsertar.add(jMenuReunion);

        jMenuAgregarVoluntario.setText("Voluntario");
        jMenuAgregarVoluntario.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarVoluntarioMousePressed(evt);
            }
        });
        jMenuInsertar.add(jMenuAgregarVoluntario);

        jMenuAgreEvento.setText("Evento");

        jMenuAgreCamara.setText("Camaradería");
        jMenuAgreCamara.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgreCamaraMousePressed(evt);
            }
        });
        jMenuAgreEvento.add(jMenuAgreCamara);

        jMenuAgreSocioEvento.setText("Agregar socio a Evento");
        jMenuAgreSocioEvento.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgreSocioEventoMousePressed(evt);
            }
        });
        jMenuAgreEvento.add(jMenuAgreSocioEvento);

        jMenuAgregarEvento.setText("Nuevo Evento");
        jMenuAgregarEvento.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarEventoMousePressed(evt);
            }
        });
        jMenuAgreEvento.add(jMenuAgregarEvento);

        jMenuInsertar.add(jMenuAgreEvento);

        jMenuAgregarClub.setText("Club");
        jMenuAgregarClub.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarClubMousePressed(evt);
            }
        });
        jMenuInsertar.add(jMenuAgregarClub);

        jMenuAgregarRedesSociales.setText("Redes Sociales");
        jMenuAgregarRedesSociales.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarRedesSocialesMousePressed(evt);
            }
        });
        jMenuInsertar.add(jMenuAgregarRedesSociales);

        jMenu5.setText("Pagos");

        jMenuAgregarPagoMembresia.setText("Membresía");
        jMenuAgregarPagoMembresia.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarPagoMembresiaMousePressed(evt);
            }
        });
        jMenu5.add(jMenuAgregarPagoMembresia);

        jMenuAgregarPagoaNacional.setText("Nacional");
        jMenuAgregarPagoaNacional.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarPagoaNacionalMousePressed(evt);
            }
        });
        jMenu5.add(jMenuAgregarPagoaNacional);

        jMenuAgregarPagoRegular.setText("Regulares");
        jMenuAgregarPagoRegular.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarPagoRegularMousePressed(evt);
            }
        });
        jMenu5.add(jMenuAgregarPagoRegular);

        jMenuInsertar.add(jMenu5);

        jMenu6.setText("Entradas");

        jMenuAgregarEntradaEconomica.setText("Económicas");
        jMenuAgregarEntradaEconomica.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarEntradaEconomicaMousePressed(evt);
            }
        });
        jMenu6.add(jMenuAgregarEntradaEconomica);

        jMenuEntradaEspecie.setText("Especies");
        jMenuEntradaEspecie.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuEntradaEspecieMousePressed(evt);
            }
        });
        jMenu6.add(jMenuEntradaEspecie);

        jMenuInsertar.add(jMenu6);

        jMenuAgreagarGasto.setText("Gastos");
        jMenuAgreagarGasto.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgreagarGastoMousePressed(evt);
            }
        });
        jMenuInsertar.add(jMenuAgreagarGasto);

        jMenuAgregarJuntaDirectiva.setText("Junta Directiva");
        jMenuAgregarJuntaDirectiva.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jMenuAgregarJuntaDirectivaMousePressed(evt);
            }
        });
        jMenuInsertar.add(jMenuAgregarJuntaDirectiva);

        jMenuBar1.add(jMenuInsertar);

        jMenuEliminar.setText("Eliminar");

        jMenu20.setText("Socio");
        jMenuEliminar.add(jMenu20);

        jMenu21.setText("Proyecto");

        jMenu40.setText("Tipo");
        jMenu21.add(jMenu40);

        jMenu41.setText("Categoria");
        jMenu21.add(jMenu41);

        jMenuEliminar.add(jMenu21);

        jMenu22.setText("Patrocinador");
        jMenuEliminar.add(jMenu22);

        jMenu23.setText("Beneficiario");
        jMenuEliminar.add(jMenu23);

        jMenu24.setText("Reunión");

        jMenu42.setText("Club");
        jMenu24.add(jMenu42);

        jMenu43.setText("Nacional e Internacional");
        jMenu24.add(jMenu43);

        jMenuEliminar.add(jMenu24);

        jMenu25.setText("Voluntario");
        jMenuEliminar.add(jMenu25);

        jMenu26.setText("Evento");

        jMenu44.setText("Camaradería");
        jMenu26.add(jMenu44);

        jMenu45.setText("Eliminar miembro");
        jMenu26.add(jMenu45);

        jMenuEliminar.add(jMenu26);

        jMenu14.setText("Club");
        jMenuEliminar.add(jMenu14);

        jMenu15.setText("Redes Sociales");
        jMenuEliminar.add(jMenu15);

        jMenu16.setText("Pagos");

        jMenu1.setText("Membresía");
        jMenu16.add(jMenu1);

        jMenu2.setText("Nacional");
        jMenu16.add(jMenu2);

        jMenu7.setText("Regular");
        jMenu16.add(jMenu7);

        jMenuEliminar.add(jMenu16);

        jMenu17.setText("Entradas");

        jMenu8.setText("Económicas");
        jMenu17.add(jMenu8);

        jMenu9.setText("Especies");
        jMenu17.add(jMenu9);

        jMenuEliminar.add(jMenu17);

        jMenu18.setText("Gastos");
        jMenuEliminar.add(jMenu18);

        jMenu19.setText("Junta Directiva");
        jMenuEliminar.add(jMenu19);

        jMenuBar1.add(jMenuEliminar);

        jMenuActualizar.setText("Actualizar");

        modificarSocio.setText("Socio");
        modificarSocio.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarSocioMousePressed(evt);
            }
        });
        jMenuActualizar.add(modificarSocio);

        jMenu28.setText("Proyecto");

        modificarTipoProyecto.setText("Tipo");
        modificarTipoProyecto.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarTipoProyectoMousePressed(evt);
            }
        });
        jMenu28.add(modificarTipoProyecto);

        modificarCatergoriaProyecto.setText("Categoría");
        modificarCatergoriaProyecto.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarCatergoriaProyectoMousePressed(evt);
            }
        });
        jMenu28.add(modificarCatergoriaProyecto);

        modificarProyecto.setText("Modificar Proyecto");
        modificarProyecto.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarProyectoMousePressed(evt);
            }
        });
        jMenu28.add(modificarProyecto);

        jMenuActualizar.add(jMenu28);

        modificarPatrocinador.setText("Patrocinador");
        modificarPatrocinador.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarPatrocinadorMousePressed(evt);
            }
        });
        jMenuActualizar.add(modificarPatrocinador);

        modificarBeneficiario.setText("Beneficiario");
        modificarBeneficiario.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarBeneficiarioMousePressed(evt);
            }
        });
        jMenuActualizar.add(modificarBeneficiario);

        jMenu31.setText("Reunión");

        modificarReunionClub.setText("Club");
        modificarReunionClub.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarReunionClubMousePressed(evt);
            }
        });
        jMenu31.add(modificarReunionClub);

        modificarReunionNacInt.setText("Nacional e Internacional");
        modificarReunionNacInt.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarReunionNacIntMousePressed(evt);
            }
        });
        jMenu31.add(modificarReunionNacInt);

        jMenuActualizar.add(jMenu31);

        modificarVoluntario.setText("Voluntario");
        modificarVoluntario.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarVoluntarioMousePressed(evt);
            }
        });
        jMenuActualizar.add(modificarVoluntario);

        jMenu33.setText("Evento");

        modificarCamaraderia.setText("Camaradería");
        modificarCamaraderia.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarCamaraderiaMousePressed(evt);
            }
        });
        jMenu33.add(modificarCamaraderia);

        modificarMiembroenEvento.setText("Cambiar miembro");
        modificarMiembroenEvento.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarMiembroenEventoMousePressed(evt);
            }
        });
        jMenu33.add(modificarMiembroenEvento);

        modificarEvento.setText("Modificar Evento");
        modificarEvento.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarEventoMousePressed(evt);
            }
        });
        jMenu33.add(modificarEvento);

        jMenuActualizar.add(jMenu33);

        modificarClub.setText("Club");
        modificarClub.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarClubMousePressed(evt);
            }
        });
        jMenuActualizar.add(modificarClub);

        modificarRedSocial.setText("Redes Sociales");
        modificarRedSocial.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarRedSocialMousePressed(evt);
            }
        });
        jMenuActualizar.add(modificarRedSocial);

        jMenu58.setText("Pagos");

        modificarPagoMembresia.setText("Membresía");
        modificarPagoMembresia.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarPagoMembresiaMousePressed(evt);
            }
        });
        jMenu58.add(modificarPagoMembresia);

        modificarPagoNacional.setText("Nacional");
        modificarPagoNacional.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarPagoNacionalMousePressed(evt);
            }
        });
        jMenu58.add(modificarPagoNacional);

        modificarPagoRegular.setText("Regular");
        modificarPagoRegular.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarPagoRegularMousePressed(evt);
            }
        });
        jMenu58.add(modificarPagoRegular);

        jMenuActualizar.add(jMenu58);

        jMenu59.setText("Entradas");

        modificarEntradaEconomica.setText("Económicas");
        modificarEntradaEconomica.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarEntradaEconomicaMousePressed(evt);
            }
        });
        jMenu59.add(modificarEntradaEconomica);

        modificarEntradaEspecie.setText("Especies");
        modificarEntradaEspecie.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarEntradaEspecieMousePressed(evt);
            }
        });
        jMenu59.add(modificarEntradaEspecie);

        jMenuActualizar.add(jMenu59);

        modificarGastos.setText("Gastos");
        modificarGastos.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarGastosMousePressed(evt);
            }
        });
        jMenuActualizar.add(modificarGastos);

        modificarJuntaDirectiva.setText("Junta Directiva");
        modificarJuntaDirectiva.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                modificarJuntaDirectivaMousePressed(evt);
            }
        });
        jMenuActualizar.add(modificarJuntaDirectiva);

        jMenuBar1.add(jMenuActualizar);

        jMenuConsultas.setText("Consultas");

        jMenu34.setText("Miembros y club ");
        jMenuConsultas.add(jMenu34);

        jMenu35.setText("Reuniones del club");
        jMenuConsultas.add(jMenu35);

        jMenu36.setText("Proyecto y patrocinio");
        jMenuConsultas.add(jMenu36);

        jMenu37.setText("Proyectos de  recreación");
        jMenuConsultas.add(jMenu37);

        jMenu38.setText("Conferencias");
        jMenuConsultas.add(jMenu38);

        jMenu39.setText("jMenu39");
        jMenuConsultas.add(jMenu39);

        jMenu52.setText("jMenu52");
        jMenuConsultas.add(jMenu52);

        jMenu53.setText("jMenu53");
        jMenuConsultas.add(jMenu53);

        jMenu54.setText("jMenu54");
        jMenuConsultas.add(jMenu54);

        jMenu55.setText("jMenu55");
        jMenuConsultas.add(jMenu55);

        jMenuBar1.add(jMenuConsultas);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(escritorioMenu, javax.swing.GroupLayout.Alignment.TRAILING)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(escritorioMenu, javax.swing.GroupLayout.Alignment.TRAILING)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

 //--------------------------------------------AGREGAR-----------------------------------------------------------
    
    private void jMenuSocioMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuSocioMousePressed
        agregar_socio sos = new agregar_socio();
        escritorioMenu.add(sos);
        sos.setVisible(true);
        sos.setLocation(35,5);
    }//GEN-LAST:event_jMenuSocioMousePressed

    private void jMenuAgregarProyectoMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarProyectoMousePressed
        agregar_proyecto proc = new agregar_proyecto();
        escritorioMenu.add(proc);
        proc.setVisible(true);
        proc.setLocation(105,5);
    }//GEN-LAST:event_jMenuAgregarProyectoMousePressed

    private void jMenuAgregarCategoriaMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarCategoriaMousePressed
        agregar_categoria_proyecto cat= new agregar_categoria_proyecto();
        escritorioMenu.add(cat);
        cat.setVisible(true);
        cat.setLocation(170,25);
    }//GEN-LAST:event_jMenuAgregarCategoriaMousePressed

    private void jMenuAgregarTipoMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarTipoMousePressed
        agregar_tipo_proyecto tip=new agregar_tipo_proyecto();
        escritorioMenu.add(tip);
        tip.setVisible(true);
        tip.setLocation(40,5);   
    }//GEN-LAST:event_jMenuAgregarTipoMousePressed

    private void jMenuAgrePatrocinadorMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgrePatrocinadorMousePressed
        agregar_patrocinador pat=new agregar_patrocinador();
        escritorioMenu.add(pat);
        pat.setVisible(true);
        pat.setLocation(130,35);
    }//GEN-LAST:event_jMenuAgrePatrocinadorMousePressed

    private void jMenuAgreBeneficiarioMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgreBeneficiarioMousePressed
        agregar_beneficiario bene = new agregar_beneficiario();
        escritorioMenu.add(bene);
        bene.setVisible(true);
        bene.setLocation(125, 20);
    }//GEN-LAST:event_jMenuAgreBeneficiarioMousePressed

    private void jMenuAgreReuClubMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgreReuClubMousePressed
        agregar_reunion_club clubReu = new agregar_reunion_club();
        escritorioMenu.add(clubReu);
        clubReu.setVisible(true);
        clubReu.setLocation(95, 10);
    }//GEN-LAST:event_jMenuAgreReuClubMousePressed

    private void jMenuAgreReuNacioInterMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgreReuNacioInterMousePressed
        agregar_reunion_internacional nacio=new agregar_reunion_internacional();
        escritorioMenu.add(nacio);
        nacio.setVisible(true);
        nacio.setLocation(105,30);
    }//GEN-LAST:event_jMenuAgreReuNacioInterMousePressed

    private void jMenuAgregarVoluntarioMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarVoluntarioMousePressed
        agregar_voluntario vol=new agregar_voluntario();
        escritorioMenu.add(vol);
        vol.setVisible(true);
        vol.setLocation(135,40);
    }//GEN-LAST:event_jMenuAgregarVoluntarioMousePressed

    private void jMenuAgreCamaraMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgreCamaraMousePressed
        agregar_camaraderia cam = new agregar_camaraderia();
        escritorioMenu.add(cam);
        cam.setVisible(true);
        cam.setLocation(170,10);
    }//GEN-LAST:event_jMenuAgreCamaraMousePressed

    private void jMenuAgreSocioEventoMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgreSocioEventoMousePressed
        agregar_socio_a_evento ase=new agregar_socio_a_evento();
        escritorioMenu.add(ase);
        ase.setVisible(true);
        ase.setLocation(170,50);
    }//GEN-LAST:event_jMenuAgreSocioEventoMousePressed

    private void jMenuAgregarEventoMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarEventoMousePressed
        agregar_evento event =new agregar_evento();
        escritorioMenu.add(event);
        event.setVisible(true);
        event.setLocation(150,70);
    }//GEN-LAST:event_jMenuAgregarEventoMousePressed

    private void jMenuAgregarClubMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarClubMousePressed
        agregar_club club =new agregar_club();
        escritorioMenu.add(club);
        club.setVisible(true);
        club.setLocation(150,70);
    }//GEN-LAST:event_jMenuAgregarClubMousePressed

    private void jMenuAgregarRedesSocialesMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarRedesSocialesMousePressed
        agregar_redes_sociales red=new agregar_redes_sociales();
        escritorioMenu.add(red);
        red.setVisible(true);
        red.setLocation(190,30);
    }//GEN-LAST:event_jMenuAgregarRedesSocialesMousePressed

    private void jMenuAgregarPagoMembresiaMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarPagoMembresiaMousePressed
        agregar_pago_membresia mem=new agregar_pago_membresia();
        escritorioMenu.add(mem);
        mem.setVisible(true);
        mem.setLocation(120,50);
    }//GEN-LAST:event_jMenuAgregarPagoMembresiaMousePressed

    private void jMenuAgregarPagoaNacionalMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarPagoaNacionalMousePressed
        agregar_pago_nacional naci=new agregar_pago_nacional();
        escritorioMenu.add(naci);
        naci.setVisible(true);
        naci.setLocation(120,50);
    }//GEN-LAST:event_jMenuAgregarPagoaNacionalMousePressed

    private void jMenuAgregarPagoRegularMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarPagoRegularMousePressed
        agregar_pago_regular regu=new agregar_pago_regular();
        escritorioMenu.add(regu);
        regu.setVisible(true);
        regu.setLocation(120,50);
    }//GEN-LAST:event_jMenuAgregarPagoRegularMousePressed

    private void jMenuAgregarEntradaEconomicaMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarEntradaEconomicaMousePressed
        agregar_entrada_economica eco= new agregar_entrada_economica();
        escritorioMenu.add(eco);
        eco.setVisible(true);
        eco.setLocation(190,5);
    }//GEN-LAST:event_jMenuAgregarEntradaEconomicaMousePressed

    private void jMenuEntradaEspecieMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuEntradaEspecieMousePressed
        agregar_entrada_especie espe=new agregar_entrada_especie();
        escritorioMenu.add(espe);
        espe.setVisible(true);
        espe.setLocation(190,5);
    }//GEN-LAST:event_jMenuEntradaEspecieMousePressed

    private void jMenuAgreagarGastoMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgreagarGastoMousePressed
        agregar_gasto gasto=new agregar_gasto();
        escritorioMenu.add(gasto);
        gasto.setVisible(true);
        gasto.setLocation(140,10);
    }//GEN-LAST:event_jMenuAgreagarGastoMousePressed

    private void jMenuAgregarJuntaDirectivaMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuAgregarJuntaDirectivaMousePressed
        agregar_junta_directiva junta=new agregar_junta_directiva();
        escritorioMenu.add(junta);
        junta.setVisible(true);
        junta.setLocation(50,20);
    }//GEN-LAST:event_jMenuAgregarJuntaDirectivaMousePressed

//--------------------------------ACTUALIZAR/MODIFICAR-------------------------------------------------------------
    private void modificarSocioMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarSocioMousePressed
        modificar_socio sos = new modificar_socio();
        escritorioMenu.add(sos);
        sos.setVisible(true);
        sos.setLocation(35,5);
    }//GEN-LAST:event_modificarSocioMousePressed

    private void modificarTipoProyectoMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarTipoProyectoMousePressed
        modificar_tipo_proyecto tip=new modificar_tipo_proyecto();
        escritorioMenu.add(tip);
        tip.setVisible(true);
        tip.setLocation(40,5); 
    }//GEN-LAST:event_modificarTipoProyectoMousePressed

    private void modificarCatergoriaProyectoMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarCatergoriaProyectoMousePressed
        modificar_categoria_proyecto cat= new modificar_categoria_proyecto();
        escritorioMenu.add(cat);
        cat.setVisible(true);
        cat.setLocation(170,25);
    }//GEN-LAST:event_modificarCatergoriaProyectoMousePressed

    private void modificarProyectoMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarProyectoMousePressed
        modificar_proyecto proc = new modificar_proyecto();
        escritorioMenu.add(proc);
        proc.setVisible(true);
        proc.setLocation(105,5);
    }//GEN-LAST:event_modificarProyectoMousePressed

    private void modificarPatrocinadorMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarPatrocinadorMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarPatrocinadorMousePressed

    private void modificarBeneficiarioMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarBeneficiarioMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarBeneficiarioMousePressed

    private void modificarReunionClubMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarReunionClubMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarReunionClubMousePressed

    private void modificarReunionNacIntMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarReunionNacIntMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarReunionNacIntMousePressed

    private void modificarVoluntarioMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarVoluntarioMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarVoluntarioMousePressed

    private void modificarCamaraderiaMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarCamaraderiaMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarCamaraderiaMousePressed

    private void modificarMiembroenEventoMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarMiembroenEventoMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarMiembroenEventoMousePressed

    private void modificarEventoMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarEventoMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarEventoMousePressed

    private void modificarClubMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarClubMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarClubMousePressed

    private void modificarRedSocialMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarRedSocialMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarRedSocialMousePressed

    private void modificarPagoMembresiaMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarPagoMembresiaMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarPagoMembresiaMousePressed

    private void modificarPagoNacionalMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarPagoNacionalMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarPagoNacionalMousePressed

    private void modificarPagoRegularMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarPagoRegularMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarPagoRegularMousePressed

    private void modificarEntradaEconomicaMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarEntradaEconomicaMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarEntradaEconomicaMousePressed

    private void modificarEntradaEspecieMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarEntradaEspecieMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarEntradaEspecieMousePressed

    private void modificarGastosMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarGastosMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarGastosMousePressed

    private void modificarJuntaDirectivaMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_modificarJuntaDirectivaMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_modificarJuntaDirectivaMousePressed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(menu_principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(menu_principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(menu_principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(menu_principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new menu_principal().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JDesktopPane escritorioMenu;
    private javax.swing.JLabel fondo;
    private javax.swing.JDialog jDialog1;
    private javax.swing.JFileChooser jFileChooser1;
    private javax.swing.JFrame jFrame1;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu14;
    private javax.swing.JMenu jMenu15;
    private javax.swing.JMenu jMenu16;
    private javax.swing.JMenu jMenu17;
    private javax.swing.JMenu jMenu18;
    private javax.swing.JMenu jMenu19;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenu jMenu20;
    private javax.swing.JMenu jMenu21;
    private javax.swing.JMenu jMenu22;
    private javax.swing.JMenu jMenu23;
    private javax.swing.JMenu jMenu24;
    private javax.swing.JMenu jMenu25;
    private javax.swing.JMenu jMenu26;
    private javax.swing.JMenu jMenu28;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenu jMenu31;
    private javax.swing.JMenu jMenu33;
    private javax.swing.JMenu jMenu34;
    private javax.swing.JMenu jMenu35;
    private javax.swing.JMenu jMenu36;
    private javax.swing.JMenu jMenu37;
    private javax.swing.JMenu jMenu38;
    private javax.swing.JMenu jMenu39;
    private javax.swing.JMenu jMenu4;
    private javax.swing.JMenu jMenu40;
    private javax.swing.JMenu jMenu41;
    private javax.swing.JMenu jMenu42;
    private javax.swing.JMenu jMenu43;
    private javax.swing.JMenu jMenu44;
    private javax.swing.JMenu jMenu45;
    private javax.swing.JMenu jMenu5;
    private javax.swing.JMenu jMenu52;
    private javax.swing.JMenu jMenu53;
    private javax.swing.JMenu jMenu54;
    private javax.swing.JMenu jMenu55;
    private javax.swing.JMenu jMenu58;
    private javax.swing.JMenu jMenu59;
    private javax.swing.JMenu jMenu6;
    private javax.swing.JMenu jMenu7;
    private javax.swing.JMenu jMenu8;
    private javax.swing.JMenu jMenu9;
    private javax.swing.JMenu jMenuActualizar;
    private javax.swing.JMenu jMenuAgreBeneficiario;
    private javax.swing.JMenu jMenuAgreCamara;
    private javax.swing.JMenu jMenuAgreEvento;
    private javax.swing.JMenu jMenuAgrePatrocinador;
    private javax.swing.JMenu jMenuAgreReuClub;
    private javax.swing.JMenu jMenuAgreReuNacioInter;
    private javax.swing.JMenu jMenuAgreSocioEvento;
    private javax.swing.JMenu jMenuAgreagarGasto;
    private javax.swing.JMenu jMenuAgregarCategoria;
    private javax.swing.JMenu jMenuAgregarClub;
    private javax.swing.JMenu jMenuAgregarEntradaEconomica;
    private javax.swing.JMenu jMenuAgregarEvento;
    private javax.swing.JMenu jMenuAgregarJuntaDirectiva;
    private javax.swing.JMenu jMenuAgregarPagoMembresia;
    private javax.swing.JMenu jMenuAgregarPagoRegular;
    private javax.swing.JMenu jMenuAgregarPagoaNacional;
    private javax.swing.JMenu jMenuAgregarProyecto;
    private javax.swing.JMenu jMenuAgregarRedesSociales;
    private javax.swing.JMenu jMenuAgregarTipo;
    private javax.swing.JMenu jMenuAgregarVoluntario;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuBar jMenuBar2;
    private javax.swing.JMenu jMenuConsultas;
    private javax.swing.JMenu jMenuEliminar;
    private javax.swing.JMenu jMenuEntradaEspecie;
    private javax.swing.JMenu jMenuInsertar;
    private javax.swing.JMenu jMenuProyecto;
    private javax.swing.JMenu jMenuReunion;
    private javax.swing.JMenu jMenuSocio;
    private javax.swing.JPopupMenu jPopupMenu1;
    private javax.swing.JPopupMenu jPopupMenu2;
    private javax.swing.JPopupMenu jPopupMenu3;
    private javax.swing.JPopupMenu jPopupMenu4;
    private javax.swing.JLabel lema1;
    private javax.swing.JLabel lema2;
    private javax.swing.JMenu modificarBeneficiario;
    private javax.swing.JMenu modificarCamaraderia;
    private javax.swing.JMenu modificarCatergoriaProyecto;
    private javax.swing.JMenu modificarClub;
    private javax.swing.JMenu modificarEntradaEconomica;
    private javax.swing.JMenu modificarEntradaEspecie;
    private javax.swing.JMenu modificarEvento;
    private javax.swing.JMenu modificarGastos;
    private javax.swing.JMenu modificarJuntaDirectiva;
    private javax.swing.JMenu modificarMiembroenEvento;
    private javax.swing.JMenu modificarPagoMembresia;
    private javax.swing.JMenu modificarPagoNacional;
    private javax.swing.JMenu modificarPagoRegular;
    private javax.swing.JMenu modificarPatrocinador;
    private javax.swing.JMenu modificarProyecto;
    private javax.swing.JMenu modificarRedSocial;
    private javax.swing.JMenu modificarReunionClub;
    private javax.swing.JMenu modificarReunionNacInt;
    private javax.swing.JMenu modificarSocio;
    private javax.swing.JMenu modificarTipoProyecto;
    private javax.swing.JMenu modificarVoluntario;
    private java.awt.PopupMenu popupMenu1;
    // End of variables declaration//GEN-END:variables
}

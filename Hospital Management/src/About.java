import javax.swing.GroupLayout.Alignment;
import javax.swing.GroupLayout;
import javax.swing.LayoutStyle.ComponentPlacement;
import javax.swing.JLabel;
import java.awt.Font;

public class About extends javax.swing.JFrame {

    /**
     * Creates new form About
     */
    public About() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();

        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
        });

        jLabel1.setFont(new Font("Times New Roman", Font.BOLD, 24)); // NOI18N
        jLabel1.setText("Hospital Management System");
        
        JLabel lblSaiKalyanV = new JLabel();
        lblSaiKalyanV.setText("Sai Kalyan V");
        lblSaiKalyanV.setFont(new Font("Times New Roman", Font.PLAIN, 24));
        
        JLabel lblSagarBM = new JLabel();
        lblSagarBM.setText("Sagar B M");
        lblSagarBM.setFont(new Font("Times New Roman", Font.PLAIN, 24));
        
        JLabel lblveis = new JLabel();
        lblveis.setText("1VE15IS043");
        lblveis.setFont(new Font("Times New Roman", Font.PLAIN, 24));
        
        JLabel lblveis_1 = new JLabel();
        lblveis_1.setText("1VE15IS042");
        lblveis_1.setFont(new Font("Times New Roman", Font.PLAIN, 24));
        
        JLabel label = new JLabel();
        label.setText("8951270727");
        label.setFont(new Font("Times New Roman", Font.PLAIN, 24));
        
        JLabel label_1 = new JLabel();
        label_1.setText("8971279692");
        label_1.setFont(new Font("Times New Roman", Font.PLAIN, 24));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        layout.setHorizontalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(layout.createSequentialGroup()
        			.addGroup(layout.createParallelGroup(Alignment.LEADING)
        				.addGroup(layout.createSequentialGroup()
        					.addGap(250)
        					.addComponent(jLabel1, GroupLayout.PREFERRED_SIZE, 344, GroupLayout.PREFERRED_SIZE))
        				.addGroup(layout.createSequentialGroup()
        					.addGap(82)
        					.addGroup(layout.createParallelGroup(Alignment.TRAILING)
        						.addComponent(lblSagarBM, GroupLayout.PREFERRED_SIZE, 175, GroupLayout.PREFERRED_SIZE)
        						.addComponent(lblSaiKalyanV, GroupLayout.PREFERRED_SIZE, 175, GroupLayout.PREFERRED_SIZE))
        					.addGap(76)
        					.addGroup(layout.createParallelGroup(Alignment.LEADING)
        						.addComponent(lblveis, Alignment.TRAILING, GroupLayout.PREFERRED_SIZE, 175, GroupLayout.PREFERRED_SIZE)
        						.addComponent(lblveis_1, Alignment.TRAILING, GroupLayout.PREFERRED_SIZE, 175, GroupLayout.PREFERRED_SIZE))
        					.addGap(73)
        					.addGroup(layout.createParallelGroup(Alignment.LEADING)
        						.addComponent(label, GroupLayout.PREFERRED_SIZE, 175, GroupLayout.PREFERRED_SIZE)
        						.addComponent(label_1, GroupLayout.PREFERRED_SIZE, 175, GroupLayout.PREFERRED_SIZE))))
        			.addContainerGap(106, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(layout.createSequentialGroup()
        			.addContainerGap()
        			.addComponent(jLabel1)
        			.addPreferredGap(ComponentPlacement.RELATED)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(label, GroupLayout.PREFERRED_SIZE, 32, GroupLayout.PREFERRED_SIZE)
        				.addComponent(lblveis, GroupLayout.PREFERRED_SIZE, 32, GroupLayout.PREFERRED_SIZE)
        				.addComponent(lblSaiKalyanV, GroupLayout.PREFERRED_SIZE, 32, GroupLayout.PREFERRED_SIZE))
        			.addPreferredGap(ComponentPlacement.UNRELATED)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(label_1, GroupLayout.PREFERRED_SIZE, 32, GroupLayout.PREFERRED_SIZE)
        				.addComponent(lblveis_1, GroupLayout.PREFERRED_SIZE, 32, GroupLayout.PREFERRED_SIZE)
        				.addComponent(lblSagarBM, GroupLayout.PREFERRED_SIZE, 32, GroupLayout.PREFERRED_SIZE))
        			.addContainerGap(30, Short.MAX_VALUE))
        );
        getContentPane().setLayout(layout);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
         // TODO add your handling code here:
    }//GEN-LAST:event_formWindowClosing

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
            java.util.logging.Logger.getLogger(About.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(About.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(About.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(About.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new About().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
}
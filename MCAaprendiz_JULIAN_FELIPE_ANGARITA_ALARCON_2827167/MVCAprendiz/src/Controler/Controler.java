package Controler;

import Model.ApprendicceDAO;
import Model.Apprentice;
import Model.File;
import Model.fileDAO;
import View.Formulary;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;

public class Controler implements ActionListener {

    ApprendicceDAO DAO = new ApprendicceDAO();
    fileDAO DAO2 = new fileDAO();
    Apprentice ap = new Apprentice();
    Formulary form;
    File fi;

    public Controler(Formulary f) {
        this.form = f;
        this.form.btnList.addActionListener(this);
        this.form.btnSave.addActionListener(this);
        this.form.btnSearch.addActionListener(this);
        this.form.btnDelete.addActionListener(this);
        this.form.btnUpdate.addActionListener(this);
        this.form.btnList1.addActionListener(this);
        this.form.btnSave1.addActionListener(this);
        this.form.btnSearch1.addActionListener(this);
        this.form.btnDelete1.addActionListener(this);
        this.form.btnUpdate1.addActionListener(this);
        

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == form.btnList) {
            clearTable();
            list(form.tblApprendice);
            clear();
        }
        if (e.getSource() == form.btnSave) {
            Save();
            list(form.tblApprendice);
            clear();
        }
        if (e.getSource() == form.btnUpdate) {
            update();
            list(form.tblApprendice);
            clear();
        }
        if (e.getSource() == form.btnDelete) {
            delete();
            list(form.tblApprendice);
            clear();
        }

        
        //FILE:
         if (e.getSource() == form.btnList1) {
            CleanTableToken();
            ListToken(form.tblfile);
            CleanToken();
        }
        if (e.getSource() == form.btnSave1) {
            SaveFile();
            ListToken(form.tblfile);
            CleanToken();
        }
        if (e.getSource() == form.btnUpdate1) {
            UpdateFile();
            ListToken(form.tblfile);
            CleanToken();
        }
        if (e.getSource() == form.btnDelete1) {
            DeleteToken();
            ListToken(form.tblfile);
            CleanToken();
        }

        if (e.getSource() == form.btnSearch) {
            int row = form.tblApprendice.getSelectedRow();
            if (row == -1) {
                JOptionPane.showMessageDialog(form, "por favor seleccione una fila");
            } else {

                int id = Integer.parseInt(form.tblApprendice.getValueAt(row, 0).toString());
                String typeDoc = form.tblApprendice.getValueAt(row, 1).toString();
                String numDoc = form.tblApprendice.getValueAt(row, 2).toString();
                String name = form.tblApprendice.getValueAt(row, 3).toString();
                String birthdate = form.tblApprendice.getValueAt(row, 4).toString();
                String genere = form.tblApprendice.getValueAt(row, 5).toString();
                String city = form.tblApprendice.getValueAt(row, 6).toString();
                form.txtIdAppre.setText(String.valueOf(id));
                form.cbxType.setSelectedItem(typeDoc);
                form.txtNumDoc.setText(numDoc);
                form.txtName.setText(name);
                form.jdcBirthDate.setDate(java.sql.Date.valueOf(birthdate));
                if (genere.equalsIgnoreCase("Male")) {
                    form.rbMale.setSelected(true);
                } else if (genere.equalsIgnoreCase("Female")) {
                    form.rbFemale.setSelected(true);
                }
                form.txtCity.setText(city);
            }
        }

    }

    public void list(JTable tblApprentice) {
        centralCells(tblApprentice);
        DefaultTableModel model = (DefaultTableModel) form.tblApprendice.getModel();
        model.setRowCount(0);
        List<Apprentice> list = DAO.list();
        for (Apprentice appre : list) {
            Object[] object = {appre.getId(), appre.getTypedoc(), appre.getNumdoc(), appre.getName(), appre.getBirthdate(), appre.getGenere(), appre.getCity()};
            model.addRow(object);
        }
        tblApprentice.setModel(model);
    }

    public void Save() {
        String typeDoc = form.cbxType.getSelectedItem().toString();
        String numDoc = form.txtNumDoc.getText();
        String name = form.txtName.getText();
        java.util.Date birthDate = form.jdcBirthDate.getDate();
        String gender = form.rbMale.isSelected() ? "Male" : "Female";
        String city = form.txtCity.getText();

        Apprentice appre = new Apprentice();
        appre.setTypedoc(typeDoc);
        appre.setNumdoc(numDoc);
        appre.setName(name);
        appre.setBirthdate(birthDate);
        appre.setGenere(gender);
        appre.setCity(city);

        int r = DAO.Add(appre);
        if (r == 1) {
            JOptionPane.showMessageDialog(form, "Registered user");
        } else {
            JOptionPane.showMessageDialog(form, "Unregistered user");
        }

    }
    
     public void SaveFile() {
        String numfile = form.txtNumfile.getText();
        String namefile = form.txtNameFile.getText();
        String campus = form.cbxCampus.getSelectedItem().toString();
        String city = form.cbxCity.getSelectedItem().toString();
        String idAppre = form.txtIdApprendice.getText();

        // Validation of empty fields
        if (numfile.isEmpty() || namefile.isEmpty() || campus.isEmpty() || city.isEmpty() || idAppre.isEmpty()) {
            JOptionPane.showMessageDialog(form, "¡¡¡ All fields must be filled in !!!");
            return;
        }

        int idApFo = Integer.parseInt(idAppre);

        File tok = new File();
        tok.setNumfile(numfile);
        tok.setNamefile(namefile);
        tok.setCampus(campus);
        tok.setCity(city);
        tok.setIdApprendice(idApFo);

        int rrr = DAO2.AddToken(tok);
        if (rrr == 1) {
            JOptionPane.showMessageDialog(form, "¡¡¡ Registered Token !!!");
        } else {
            JOptionPane.showMessageDialog(form, "¡¡¡ Token NOT Registered !!!");
        }
    }

    public void update() {
        if (form.txtIdAppre.getText().equals("")) {
            JOptionPane.showMessageDialog(form, "the id was not found");
        } else {
            int id = Integer.parseInt(form.txtIdAppre.getText());
            String typeDoc = form.cbxType.getSelectedItem().toString();
            String numDoc = form.txtNumDoc.getText();
            String name = form.txtName.getText();
            java.util.Date birthdate = form.jdcBirthDate.getDate();
            String genere = form.rbMale.isSelected() ? "Male" : "Female";
            String city = form.txtCity.getText();

            ap.setTypedoc(typeDoc);
            ap.setNumdoc(numDoc);
            ap.setName(name);
            ap.setBirthdate(birthdate);
            ap.setGenere(genere);
            ap.setCity(city);

            int r = DAO.Add(ap);
            if (r == 1) {
                JOptionPane.showMessageDialog(form, "updated user");
            } else {
                JOptionPane.showMessageDialog(form, "Unupdated user");
            }
        }
    }
    
    public void UpdateFile() {
        if (form.txtIdApprendice.getText().equals("")) {
            JOptionPane.showMessageDialog(form, "¡¡¡ Id not found, select an existing record !!!!");
        } else {
            int idtok = Integer.parseInt(form.txtIdFile.getText());
            String numfile = form.txtNumfile.getText();
            String namefile = form.txtNameFile.getText();
            String campus = form.cbxCampus.getSelectedItem().toString();
            String city = form.cbxCity.getSelectedItem().toString();
            int idapppre = Integer.parseInt(form.txtIdApprendice.getText());

            File tke = new File();
            tke.setNumfile(numfile);
            tke.setNamefile(namefile);
            tke.setCampus(campus);
            tke.setCity(city);
            tke.setIdApprendice(idapppre);
            tke.setId1(idtok);

            int rrrr = DAO2.UpdateToken(tke);
            if (rrrr == 1) {
                JOptionPane.showMessageDialog(form, "¡¡¡ Updated Token !!!");
            } else {
                JOptionPane.showMessageDialog(form, "¡¡¡ Token NOT updated !!!");
            }
        }
    }

    public void delete() {
        int row = form.tblApprendice.getSelectedRow();
        if (row == -1) {
            JOptionPane.showMessageDialog(form, "Please select a row");
        } else {
            int id = Integer.parseInt(form.tblApprendice.getValueAt(row, 0).toString());
            DAO.Delete(id);
            JOptionPane.showMessageDialog(form, "the record was deleted");

        }
    }

    public void centralCells(JTable tblApprentice) {
        DefaultTableCellRenderer tcr = new DefaultTableCellRenderer();
        tcr.setHorizontalAlignment(SwingConstants.CENTER);
        for (int i = 0; i < form.tblApprendice.getColumnCount(); i++) {
            tblApprentice.getColumnModel().getColumn(i).setCellRenderer(tcr);
        }

    }

    void clearTable() {
        DefaultTableModel model = (DefaultTableModel) form.tblApprendice.getModel();
        model.setRowCount(0);
    }

    public void clear() {
        form.txtIdAppre.setText("");
        form.cbxType.setSelectedIndex(0);
        form.txtNumDoc.setText("");
        form.txtName.setText("");
        form.jdcBirthDate.setDate(null);
        form.rbMale.setSelected(false);
        form.rbFemale.setSelected(false);
        form.txtCity.setText("");
    }

    public void DeleteToken() {
        int rowT = form.tblfile.getSelectedRow();
        if (rowT == -1) {
            JOptionPane.showMessageDialog(form, "¡¡¡ Please select a row !!!");

        } else {
            int idT = Integer.parseInt(form.tblfile.getValueAt(rowT, 0).toString());
            DAO2.DeleteToken(idT);
            JOptionPane.showMessageDialog(form, "¡¡¡ Record Deleted !!!");
        }
        CleanTableToken();
    }

    public void ListToken(JTable tblToken) {
        CenterCellsToken(tblToken);
        DefaultTableModel modelT = (DefaultTableModel) form.tblfile.getModel();
        modelT.setRowCount(0);
        List<File> listO = DAO2.ListToken();
        for (File toke : listO) {
            Object[] objectT = {toke.getId1(), toke.getNumfile(), toke.getNamefile(), toke.getCampus(), toke.getCity(), toke.getIdApprendice()};
            modelT.addRow(objectT);
        }
        tblToken.setModel(modelT);
    }
    
     public void ListEverythingInTheTable(JTable tblAll) {
        CenterCellsAll(tblAll);
        DefaultTableModel modelAll = (DefaultTableModel) form.tblApprendice.getModel();
        modelAll.setRowCount(0);
        List<Object[]> listAll = DAO2.ListAllData();

        for (Object[] DataAll : listAll) {
            Apprentice apree = (Apprentice) DataAll[0];
            File tkn = (File) DataAll[1];

            Object[] rowAll = {apree.getId(), apree.getTypedoc(), apree.getNumdoc(), apree.getName(), apree.getBirthdate(), apree.getGenere(), apree.getCity(), tkn.getId1(), tkn.getNumfile(), tkn.getNamefile(), tkn.getCampus(), tkn.getCity(), tkn.getIdApprendice()};

            modelAll.addRow(rowAll);
        }

        tblAll.setModel(modelAll);
    }
    
    public void CenterCellsApprentice(JTable tblAprendiz) {
        DefaultTableCellRenderer tcr = new DefaultTableCellRenderer();
        tcr.setHorizontalAlignment(SwingConstants.CENTER);
        for (int i = 0; i < form.tblApprendice.getColumnCount(); i++) {
            tblAprendiz.getColumnModel().getColumn(i).setCellRenderer(tcr);
        }
    }

    public void CenterCellsToken(JTable tblToken) {
        DefaultTableCellRenderer tcrT = new DefaultTableCellRenderer();
        tcrT.setHorizontalAlignment(SwingConstants.CENTER);
        for (int i = 0; i < form.tblfile.getColumnCount(); i++) {
            tblToken.getColumnModel().getColumn(i).setCellRenderer(tcrT);
        }
    }

    public void CenterCellsAll(JTable tblAll) {
        DefaultTableCellRenderer tacr = new DefaultTableCellRenderer();
        tacr.setHorizontalAlignment(SwingConstants.CENTER);
        for (int i = 0; i < form.tblApprendice.getColumnCount(); i++) {
            tblAll.getColumnModel().getColumn(i).setCellRenderer(tacr);
        }
    }

    public void CleanTable() {
        DefaultTableModel model = (DefaultTableModel) form.tblApprendice.getModel();
        model.setRowCount(0);
    }

    public void CleanTableToken() {
        DefaultTableModel model = (DefaultTableModel) form.tblfile.getModel();
        model.setRowCount(0);
    }

    public void CleanTableAll() {
        DefaultTableModel modelAll = (DefaultTableModel) form.tblApprendice.getModel();
        modelAll.setRowCount(0);
    }

    public void CleanApprentice() {
        form.txtIdAppre.setText("");
        form.cbxType.setSelectedIndex(0);
        form.txtNumDoc.setText("");
        form.txtName.setText("");
        form.jdcBirthDate.setDate(null);
        form.rbMale.setSelected(false);
        form.rbFemale.setSelected(false);
        form.txtCity.setText("");
    }

    public void CleanToken() {
        form.txtIdFile.setText("");
        form.txtNameFile.setText("");
        form.txtNumfile.setText("");
        form.cbxCampus.setSelectedIndex(0);
        form.cbxCity.setSelectedIndex(0);
        form.txtIdApprendice.setText("");
    }
}

  
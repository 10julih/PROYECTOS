package Model;
import java.sql.*;
import java.util.*;
public class fileDAO {

   PreparedStatement ps;
    ResultSet rs;
    Connection Connectiondm;
    Conectionn connect1 = Conectionn.getInstance();
    
    public List ListToken(){
        List<File> datam = new ArrayList<>();
        try {
            Connectiondm = connect1.connect();
            ps = Connectiondm.prepareStatement("SELECT*FROM ficha");
            rs = ps.executeQuery();
            while (rs.next()) {
                File tk = new File();
                tk.setId1(rs.getInt(1));
                tk.setNumfile(rs.getString(2));
                tk.setNamefile(rs.getString(3));
                tk.setCampus(rs.getString(4));
                tk.setCity(rs.getString(5));
                tk.setIdApprendice(rs.getInt(6));
                datam.add(tk);
            }
        } catch (SQLException e) {
        }
        return datam;
    }
    
    public int AddToken (File tok) {
        int r = 0;
        String sql = "INSERT INTO ficha(numfile,namefile,campus,city,idapprendice) VALUES (?,?,?,?,?)";
        try {
            Connectiondm = connect1.connect();
            ps = Connectiondm.prepareStatement(sql);
            ps.setString(1,tok.getNumfile());
            ps.setString(2,tok.getNamefile());
            ps.setString(3,tok.getCampus());
            ps.setString(4,tok.getCity());
            ps.setInt(5,tok.getIdApprendice());
            
            r = ps.executeUpdate();
            
        } catch (SQLException e) {
        }
        return r;
    }
    
    
    public int UpdateToken (File tok) {
        int r = 0;
        String sql = "UPDATE ficha SET numfile=?,namefile=?,campus=?,city=?,idapprendice=? WHERE idfile=?";
        try {
            Connectiondm = connect1.connect();
            ps = Connectiondm.prepareStatement(sql);
            ps.setString(1,tok.getNumfile());
            ps.setString(2,tok.getNamefile());
            ps.setString(3,tok.getCampus());
            ps.setString(4,tok.getCity());
            ps.setInt(5,tok.getIdApprendice());
            ps.setInt(6, tok.getId1());
            r= ps.executeUpdate();
               if (r == 1) {
                   return 1;
               } else {
                   return 0;
               }
        } catch (SQLException e) {
        }
        return r;
    }
    
    public int DeleteToken (int id1) {
        int rrr = 0;
        String sql = "DELETE FROM ficha WHERE idfile=" + id1;
        try {
            Connectiondm = connect1.connect();
            ps = Connectiondm.prepareStatement(sql);
            rrr = ps.executeUpdate();
            
        } catch (SQLException e) {
        }
        return rrr;
    }
    
    //Lista total de las dos tablas
    public List<Object[]> ListAllData() {
           List<Object[]> completedata = new ArrayList<>();
           
           try {
            Connectiondm = connect1.connect();
            ps = Connectiondm.prepareStatement("SELECT apprendice.idapprendice, apprendice.numdoc, apprendice.name,  ficha.idfile, ficha.numfile, ficha.idapprendice FROM apprendice JOIN ficha ON apprendice.idapprendice = ficha.idapprendice");
            rs = ps.executeQuery();
            
            while (rs.next()){
                Apprentice apree = new Apprentice();
                File tkn = new File();
                
                apree.setId(rs.getInt(1));
                apree.setNumdoc(rs.getString(2));
                apree.setName(rs.getString(3));
                tkn.setId1(rs.getInt(4));
                tkn.setNumfile(rs.getString(5));
                tkn.setCampus(rs.getString(6));
                tkn.setIdApprendice(rs.getInt(7));
 
                completedata.add(new Object[]{apree,tkn});
            }   
        } catch (SQLException e) {
        }
           return completedata;
}
}
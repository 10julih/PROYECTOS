package Model;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
public class ApprendicceDAO {

    PreparedStatement ps;
    ResultSet rs;
    Connection conexion;
    Conectionn conectar = Conectionn.getInstance();
    
    public List list(){
        List<Apprentice>  data = new ArrayList<>();
        try {
            conexion =  conectar.connect();
            ps = conexion.prepareStatement("SELECT * FROM apprendice");
            rs = ps.executeQuery();
            while (rs.next()) {
            Apprentice ap = new Apprentice();
            ap.setId(rs.getInt(1));
            ap.setTypedoc(rs.getString(2));
            ap.setNumdoc(rs.getString(3));
            ap.setName(rs.getString(4));
            ap.setBirthdate(rs.getDate(5));
            ap.setGenere(rs.getString(6));
            ap.setCity(rs.getString(7));  
            data.add(ap);
            }
        } catch (SQLException e) {
        }
        return data;
    }
    public int Add(Apprentice apre){
        int r =0;
        String sql = "INSERT INTO apprendice(typedoc,numdoc,name,datenac,genere,city) VALUES(?,?,?,?,?,?)";
        try {
            conexion = (java.sql.Connection) conectar.connect();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, getTypeDocIndex(apre.getTypedoc()));
            ps.setString(2, apre.getNumdoc());
            ps.setString(3, apre.getName());
            java.util.Date date = apre.getBirthdate();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String formatt = sdf.format(date);
            ps.setString(4, formatt);
            ps.setString(5, apre.getGenere());
            ps.setString(6, apre.getCity());
            r = ps.executeUpdate();
            
        } catch (SQLException e) {
        }
        return r;
    }
    
    public int Update(Apprentice apre){
        int r = 0;
        String sql = "UPDATE apprendice SET typedoc=?,numdoc=?,name=?,datenac=?,genere=?,city=? WHERE id=?";
      try{
            conexion = (java.sql.Connection) conectar.connect();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, getTypeDocIndex(apre.getTypedoc()));
            ps.setString(2, apre.getNumdoc());
            ps.setString(3, apre.getName());
            java.util.Date date = apre.getBirthdate();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String formatt = sdf.format(date);
            ps.setString(4, formatt);
            ps.setString(5, apre.getGenere());
            ps.setString(6, apre.getCity());
            ps.setInt(7, apre.getId());
            r = ps.executeUpdate();
            if (r==1) {
                return 1;
        } else {
                return 0;
        }
    } catch(SQLException e){
    }
      return r;
    }
    
     public int Delete(int ida){
        int r=0;
        String sql = "DELETE FROM apprendice WHERE id =" + ida;
        try {
            conexion = (java.sql.Connection) conectar.connect();
            ps = conexion.prepareStatement(sql);
            r = ps.executeUpdate();
            
        } catch (SQLException e) {
        }
        return r;
    }
    
    
    private String getTypeDocIndex(String typedoc){
        return switch(typedoc){
            case "Citizenship Card" -> "CC";
            case "Foreigner ID" -> "CE";
            case "Identity Card" -> "TI";
            case "Civil Registration" -> "RC";
            case "Passport" -> "PS";
                 default->"";
            
        };
    }

   
}
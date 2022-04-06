package hadoop;

import java.sql.*;

/**
 *
 * @author 1605093
 */
public class cloudera {
    public static ResultSet getData(String query) {
        try{
            Class.forName("org.apache.hive.jdbc.HiveDriver");
            String URL = "jdbc:hive2://192.168.247.129:10000/winterproject";
            Connection con = DriverManager.getConnection(URL,"","");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error FOUND : "+e.getMessage());
            return null;
        }
    }
}

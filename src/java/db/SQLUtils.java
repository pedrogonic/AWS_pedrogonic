/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author pedrogonic
 */
public class SQLUtils {
    
    @SuppressWarnings("CallToPrintStackTrace")
    public static String test () {
        
        java.sql.Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String result = "";
        
        try {
            con = getConnection();
            
            String query = "SELECT * FROM "+Secret.TEST_TABLE;
            
            ps = con.prepareCall(query);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                result += "ID: "+rs.getInt(1) + " STRING: "+rs.getString(2)+"\n";
            }
            
        } catch(Exception e) {e.printStackTrace();}
        finally {
            if (con != null) { try {con.close();}catch(Exception e){}}
            if (ps != null) { try {ps.close();}catch(Exception e){}}
            if (rs != null) { try {rs.close();}catch(Exception e){}}
        }
        
        
        return result;
    }
    
    public static List<String> test2() {
        
        java.sql.Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<String> result = new ArrayList<String>();
        
        try {
            con = getConnection();
            
            String query = "SELECT * FROM "+Secret.TEST_TABLE;
            
            ps = con.prepareCall(query);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                result.add("ID: "+rs.getInt(1) + " STRING: "+rs.getString(2));
            }
            
        } catch(Exception e) {e.printStackTrace();}
        finally {
            if (con != null) { try {con.close();}catch(Exception e){}}
            if (ps != null) { try {ps.close();}catch(Exception e){}}
            if (rs != null) { try {rs.close();}catch(Exception e){}}
        }
        
        
        return result;
    }
    
    private static java.sql.Connection getConnection() throws Exception{
        java.sql.Connection con;
        try {
            Class.forName(Secret.DRIVER);
            con = DriverManager.getConnection(Secret.URL + Secret.DBNAME, Secret.USERNAME, Secret.PASSWORD);
        }
        catch (Exception e) {
                throw e;
        }
        return con;
    }
    
}

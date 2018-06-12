package com.wine.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import org.apache.log4j.Logger;

import com.wine.web.bean.WeatheInfo;

public class DBUtil {
	private final static Logger log = Logger.getLogger(DBUtil.class); 
	public static void main(String[] args) {  
        try {  
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
            // String url = "jdbc:odbc:wombat";  
            // string url=“jdbc:odbc:Driver={MicroSoft Access Driver  
            // (*.mdb)};DBQ=“+application.getRealPath(“/Data/ReportDemo.mdb“);  
            String url = "jdbc:odbc:Driver={MicroSoft Access Driver (*.mdb)};DBQ=/home/hok/sqlite/data.MDB";  
            Connection conn = DriverManager.getConnection(url,"","");  //,"","zoujiaming"
            Statement stmt = conn.createStatement();  
            ResultSet rs = stmt.executeQuery("SELECT * FROM metetable");  
            System.out.println("Got ResultSet Now");  
            //rs.beforeFirst();  
            while (rs.next()) {  
                System.out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3));  
            }  
            rs.close();  
  
            stmt.close();  
            conn.close();  
        } catch (Exception ex) {  
            ex.printStackTrace();  
        }  
    }
	
	public static WeatheInfo getTemperatureInfo(DataSource ds) {
		WeatheInfo ti = new WeatheInfo();
		try {
			Connection conn = ds.getConnection();
			Statement stmt = conn.createStatement();  
          ResultSet rs = stmt.executeQuery("SELECT * FROM metetable order by nDate desc");  
          //rs.beforeFirst();  
          if(rs.next()) {  
              ti.setId(rs.getString(1));
              ti.setNdate(rs.getString(2));
              ti.setTolGlobalRadiation(rs.getString(3));
              ti.setTolDirectRadiation(rs.getString(4));
              ti.setTemperature1(rs.getString(5));
              ti.setTemperature2(rs.getString(6));
              ti.setTemperature3(rs.getString(7));
              ti.setTemperature4(rs.getString(8));
              ti.setTemperature5(rs.getString(9));
              ti.setEnvirTemp(rs.getString(10));
              ti.setEnvirHumid(rs.getString(11));
              ti.setDewPointTemp(rs.getString(12));
              ti.setAirPressure(rs.getString(13));
              ti.setAltitude(rs.getString(14));
              ti.setWindSpeed(rs.getString(15));
              ti.setWindSpeedOf2Avg(rs.getString(16));
              ti.setWindSpeedOf10Avg(rs.getString(17));
              ti.setWindDirection(rs.getString(18));
              ti.setInsGlobalRadiation(rs.getString(19));
              ti.setInsDirectRadiation(rs.getString(20));
              ti.setRainfall(rs.getString(21));
              ti.setEvaporation(rs.getString(22));
              ti.setSunLightHour(rs.getString(23));
              ti.setRecorderID(rs.getString(24));
              ti.setIsCable(rs.getString(25));
              ti.setFileDate(rs.getString(26));
           }  
          rs.close();  
          stmt.close();  
          conn.close();  
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ti;
		
	}
	
	public static WeatheInfo getTemperatureInfo(String recordId) {
		WeatheInfo ti = new WeatheInfo();
		try {  
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
            String url = "jdbc:odbc:Driver={MicroSoft Access Driver (*.mdb)};DBQ=U:\\sqlite\\data.MDB";  
            Connection conn = DriverManager.getConnection(url,"admin","zoujiaming");  //,"","zoujiaming"
            Statement stmt = conn.createStatement();  
            String sql = "SELECT * FROM metetable where RecorderId = '" + recordId + "' order by nDate desc";
            ResultSet rs = stmt.executeQuery(sql); 
            System.out.println("Got ResultSet Now");  
            //rs.beforeFirst();  
            if(rs.next()) {  
                ti.setId(rs.getString(1));
                ti.setNdate(rs.getString(2));
                ti.setTolGlobalRadiation(rs.getString(3));
                ti.setTolDirectRadiation(rs.getString(4));
                ti.setTemperature1(rs.getString(5));
                ti.setTemperature2(rs.getString(6));
                ti.setTemperature3(rs.getString(7));
                ti.setTemperature4(rs.getString(8));
                ti.setTemperature5(rs.getString(9));
                ti.setEnvirTemp(rs.getString(10));
                ti.setEnvirHumid(rs.getString(11));
                ti.setDewPointTemp(rs.getString(12));
                ti.setAirPressure(rs.getString(13));
                ti.setAltitude(rs.getString(14));
                ti.setWindSpeed(rs.getString(15));
                ti.setWindSpeedOf2Avg(rs.getString(16));
                ti.setWindSpeedOf10Avg(rs.getString(17));
                ti.setWindDirection(rs.getString(18));
                ti.setInsGlobalRadiation(rs.getString(19));
                ti.setInsDirectRadiation(rs.getString(20));
                ti.setRainfall(rs.getString(21));
                ti.setEvaporation(rs.getString(22));
                ti.setSunLightHour(rs.getString(23));
                ti.setRecorderID(rs.getString(24));
                ti.setIsCable(rs.getString(25));
                ti.setFileDate(rs.getString(26));
                System.out.println(ti.getId()+"\t"+ti.getNdate()+"\t"+ti.getTolDirectRadiation()); 
              }  
            rs.close();  
            stmt.close();  
            conn.close();  
        } catch (Exception ex) {  
            ex.printStackTrace();  
        }  
		return ti;
	}
	
	
}

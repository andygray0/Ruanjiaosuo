package com.wine.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SqliteTest {
	public static void main(String[] args) {
		weatherDb();
	}
	
	public static void weatherDb() {
		try {
			// 连接SQLite的JDBC
			Class.forName("org.sqlite.JDBC");
			// 建立一个数据库名zieckey.db的连接，如果不存在就在当前目录下创建之
			Connection conn = DriverManager.getConnection("jdbc:sqlite:/home/hok/mydoc/other/yanqing/Data2.db",null,"zoujiaming");
			
//			Connection conn = DriverManager.getConnection("jdbc:sqlite:u:/mydoc/other/yanqing/Data2.db",null,"zoujiaming");
			Statement stat = conn.createStatement();
			System.out.println(stat);
			// 
//			ResultSet rs = stat.executeQuery("select * from MeteTable");// 查询数据
			ResultSet rs = stat.executeQuery("sqlite3_key('Data2.db','zoujiaming)");// 查询数据
			while (rs.next()) {// 将查询到的数据打印出来
				System.out.print("name = " + rs.getString("1") + " ");// 列属性一
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void testDb() {
		try {
			// 连接SQLite的JDBC
			Class.forName("org.sqlite.JDBC");
			// 建立一个数据库名zieckey.db的连接，如果不存在就在当前目录下创建之
			Connection conn = DriverManager.getConnection("jdbc:sqlite:/home/hok/sqlite/test.db");
			Statement stat = conn.createStatement();
//			opt2(stat, conn);
			insertMetaTable(stat, conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void opt2(Statement stat, Connection conn) throws SQLException {
		ResultSet rs = stat.executeQuery("select * from info;");// 查询数据
		while (rs.next()) {// 将查询到的数据打印出来
			System.out.print("id = " + rs.getString("id") + " ");// 列属性一
			System.out.println("title = " + rs.getString("title"));// 列属性二
		}
		rs.close();
		conn.close();// 结束数据库的连接
	}
	
	public static void opt1(Statement stat, Connection conn) throws SQLException {
		stat.executeUpdate("create table tbl1(name varchar(20), salary int);");// 创建一个表，两列
		stat.executeUpdate("insert into tbl1values('ZhangSan',8000);");// 插入数据
		stat.executeUpdate("insert into tbl1values('LiSi',7800);");
		stat.executeUpdate("insert into tbl1values('WangWu',5800);");
		stat.executeUpdate("insert into tbl1values('ZhaoLiu',9100);");
		ResultSet rs = stat.executeQuery("select * from tbl1;");// 查询数据
		while (rs.next()) {// 将查询到的数据打印出来
			System.out.print("name = " + rs.getString("name") + " ");// 列属性一
			System.out.println("salary = " + rs.getString("salary"));// 列属性二
		}
		rs.close();
		conn.close();// 结束数据库的连接
	}
	
	public static void insertMetaTable(Statement stat, Connection conn) throws SQLException {
		stat.executeUpdate("insert into MeteTable values('2','2014年08月11日 16时43分00秒','5.5529236070400000e+11','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','9.4599999999999994e+01','2.3800000000000001e+01','1.4400000000000000e+01','1.4800000000000001e+01','1.5199999999999999e+01','4.0329999999999998e+01','0.0000000000000000e+00','0.0000000000000000e+00','2.5000000000000000e+02','2.5000000000000000e+02','2.5000000000000000e+02','2500','2.5000000000000000e+03','2.5000000000000000e+03','2.5000000000000000e+02','0.0000000000000000e+00','6.6699999999999995e-02','40315','0','2014年08月11日 00时00分00秒')");// 插入数据
		stat.executeUpdate("insert into MeteTable values('5','2014年08月11日 16时46分00秒','2.1693073920000000e+09','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','1.0050000000000000e+02','2.4300000000000001e+01','1.4400000000000000e+01','1.4800000000000001e+01','1.5199999999999999e+01','4.0329999999999998e+01','0.0000000000000000e+00','0.0000000000000000e+00','2.5000000000000000e+02','2.5000000000000000e+02','2.5000000000000000e+02','2500','2.5000000000000000e+03','2.5000000000000000e+03','2.5000000000000000e+02','2.0480000000000000e+03','8.3299999999999999e-02','40315','0','2014年08月11日 00时00分00秒')");
		stat.executeUpdate("insert into MeteTable values('6','2014年08月11日 16时48分00秒','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','1.2130000000000000e+02','3.1699999999999999e+01','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','3.9710000000000001e+01','0.0000000000000000e+00','0.0000000000000000e+00','2.5000000000000000e+02','2.5000000000000000e+02','2.5000000000000000e+02','2500','2.5000000000000000e+03','2.5000000000000000e+03','2.5000000000000000e+02','0.0000000000000000e+00','0.0000000000000000e+00','40316','0','2014年08月11日 00时00分00秒')");
		stat.executeUpdate("insert into MeteTable values('11','2014年08月11日 16时49分00秒','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','1.1540000000000001e+02','3.2500000000000000e+01','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','3.9710000000000001e+01','0.0000000000000000e+00','0.0000000000000000e+00','2.5000000000000000e+02','2.5000000000000000e+02','2.5000000000000000e+02','2500','2.5000000000000000e+03','2.5000000000000000e+03','2.5000000000000000e+02','0.0000000000000000e+00','0.0000000000000000e+00','40316','0','2014年08月11日 00时00分00秒')");
		stat.executeUpdate("insert into MeteTable values('24','2014年08月11日 16时52分00秒','2.0675630000000001e+03','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','9.2900000000000006e+01','2.5300000000000001e+01','3.7700000000000003e+01','3.7200000000000003e+01','3.6600000000000001e+01','4.1979999999999997e+01','0.0000000000000000e+00','0.0000000000000000e+00','2.5000000000000000e+02','2.5000000000000000e+02','2.5000000000000000e+02','2500','2.5000000000000000e+03','2.5000000000000000e+03','2.5000000000000000e+02','0.0000000000000000e+00','0.0000000000000000e+00','40317','0','2014年08月11日 00时00分00秒')");
		stat.executeUpdate("insert into MeteTable values('28','2014年08月11日 16时53分00秒','2.0675630000000001e+03','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','9.5200000000000003e+01','2.5800000000000001e+01','3.7799999999999997e+01','3.5799999999999997e+01','3.3600000000000001e+01','4.2170000000000002e+01','0.0000000000000000e+00','0.0000000000000000e+00','2.5000000000000000e+02','2.5000000000000000e+02','2.5000000000000000e+02','2500','2.5000000000000000e+03','2.5000000000000000e+03','2.5000000000000000e+02','0.0000000000000000e+00','0.0000000000000000e+00','40317','0','2014年08月11日 00时00分00秒')");
		stat.executeUpdate("insert into MeteTable values('31','2014年08月11日 16时55分00秒','-2.6601600308891897e+36','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','1.1780000000000000e+02','3.7600000000000001e+01','4.4799999999999997e+01','4.6000000000000000e+01','4.7500000000000000e+01','4.0520000000000003e+01','0.0000000000000000e+00','0.0000000000000000e+00','2.5000000000000000e+02','2.5000000000000000e+02','2.5000000000000000e+02','2500','2.5000000000000000e+03','2.5000000000000000e+03','2.5000000000000000e+02','0.0000000000000000e+00','5.1670000000000005e-01','40318','0','2014年08月11日 00时00分00秒')");
		stat.executeUpdate("insert into MeteTable values('33','2014年08月13日 09时50分00秒','-1.3820231680000000e+11','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','1.7750000000000000e+02','9.6500000000000000e+01','3.8000000000000000e+01','3.9299999999999997e+01','4.0799999999999997e+01','4.2189999999999998e+01','0.0000000000000000e+00','0.0000000000000000e+00','2.5000000000000000e+02','2.5000000000000000e+02','2.5000000000000000e+02','2500','2.5000000000000000e+03','2.5000000000000000e+03','2.5000000000000000e+02','-3.5840000000000000e+03','3.4167000000000001e+00','40318','0','2014年08月13日 00时00分00秒')");
		stat.executeUpdate("insert into MeteTable values('51','2014年08月13日 09时53分00秒','-8.2355000000000000e+03','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','1.6959999999999999e+02','9.7900000000000006e+01','4.6799999999999997e+01','4.6500000000000000e+01','4.6100000000000001e+01','4.3880000000000003e+01','0.0000000000000000e+00','0.0000000000000000e+00','2.5000000000000000e+02','2.5000000000000000e+02','2.5000000000000000e+02','2500','2.5000000000000000e+03','2.5000000000000000e+03','2.5000000000000000e+02','0.0000000000000000e+00','0.0000000000000000e+00','40314','0','2014年08月13日 00时00分00秒')");
		stat.executeUpdate("insert into MeteTable values('56','2014年08月13日 09时55分00秒','-3.1000000000000000e-02','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','1.7709999999999999e+02','9.7599999999999994e+01','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','4.3799999999999997e+01','0.0000000000000000e+00','0.0000000000000000e+00','2.5000000000000000e+02','2.5000000000000000e+02','2.5000000000000000e+02','2500','2.5000000000000000e+03','2.5000000000000000e+03','2.5000000000000000e+02','0.0000000000000000e+00','0.0000000000000000e+00','40316','0','2014年08月13日 00时00分00秒')");
 
		
		ResultSet rs = stat.executeQuery("select * from MeteTable order by nDate desc");// 查询数据
		while (rs.next()) {// 将查询到的数据打印出来
			System.out.print("nDate = " + rs.getString("nDate") + " ");// 列属性一
			System.out.println("tolGlobalRadiation = " + rs.getString("tolGlobalRadiation"));// 列属性二
		}
		rs.close();
		conn.close();// 结
	}
	
	public static void createMetaTable(Statement stat, Connection conn) throws SQLException {
		stat.executeUpdate("create table MeteTable(id INTEGER PRIMARY KEY, nDate,tolGlobalRadiation,tolDirectRadiation,Temperature1,Temperature2,Temperature3,Temperature4,Temperature5," +
				"EnvirTemp,EnvirHumid,DewPointTemp,AirPressure,Altitude,WindSpeed,WindSpeedOf2Avg,WindSpeedOf10Avg,WindDirection,InsGlobalRadiation,InsDirectRadiation,Rainfall,Evaporation,SunLightHour," +
				"RecorderID,IsCable,FileDate)");// 创建一个表
//		stat.executeUpdate("insert into MeteTable values('2','2014年08月11日 16时43分00秒','5.5529236070400000e+11','0.0000000000000000e+00','0.0000000000000000e+00','0.0000000000000000e+00','9.4599999999999994e+01','2.3800000000000001e+01','1.4400000000000000e+01','1.4800000000000001e+01','1.5199999999999999e+01','4.0329999999999998e+01','0.0000000000000000e+00','0.0000000000000000e+00','2.5000000000000000e+02','2.5000000000000000e+02','2.5000000000000000e+02','2500','2.5000000000000000e+03','2.5000000000000000e+03','2.5000000000000000e+02','0.0000000000000000e+00','6.6699999999999995e-02','40315','0','2014年08月11日 00时00分00秒')");// 插入数据
//		stat.executeUpdate("insert into MeteTable values()");
//		stat.executeUpdate("insert into MeteTable values()");
//		stat.executeUpdate("insert into MeteTable values()");
//		stat.executeUpdate("insert into MeteTable values()");
//		stat.executeUpdate("insert into MeteTable values()");
		
		ResultSet rs = stat.executeQuery("select * from MeteTable order by nDate desc");// 查询数据
		while (rs.next()) {// 将查询到的数据打印出来
			System.out.print("nDate = " + rs.getString("nDate") + " ");// 列属性一
			System.out.println("tolGlobalRadiation = " + rs.getString("tolGlobalRadiation"));// 列属性二
		}
		rs.close();
		conn.close();// 结
		
	}
}

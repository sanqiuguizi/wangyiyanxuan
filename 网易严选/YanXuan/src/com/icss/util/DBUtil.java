package com.icss.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DBUtil {
	
	private static ComboPooledDataSource pool = null;
	static{
		pool = new ComboPooledDataSource("mysql");
	}
	
	
	public static Connection getDB(){
		try {
			return pool.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static void close(Connection conn,Statement sta,ResultSet res){
		if(res!=null){
			try {
				res.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(sta!=null){
			try {
				sta.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static boolean dml(String sql, Object[] params) {
		// 获取一个数据库连接
		Connection conn = getDB();
		// 生成SQL预处理语句
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			// 插入参数
			for (int i = 0; i < params.length; i++) {
				ps.setObject(i + 1, params[i]);
			}
			// 执行SQL语句
			int i = ps.executeUpdate();
			if (i > 0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {// 关闭相应的对象
			close(conn, ps, null);
		}
		return false;
	}

	public static <T> List<T> find(String sql, Object[] params, Class<?> clazz) {
		// 获取数据库的连接
		Connection conn = getDB();
		// 生成SQL预处理语句
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 生成结果列表对象
		List<T> list = new ArrayList<T>();
		try {
			ps = conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					ps.setObject(i + 1, params[i]);
				}
			}
			// 执行SQL语句
			rs = ps.executeQuery();
			// 将获取的结果封装到list对象里
			while (rs.next()){
				MapRow mr = new MapRow(clazz);
				T user = (T) mr.mapRow(rs);
				list.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {// 关闭相应的对象
			close(conn,ps,rs);
		}
		return list;
	}

	public static <T> T findOne(String sql, Object[] params, Class<?> clazz) {
		List<T> list = find(sql, params, clazz);
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	
}

package com.icss.util;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * 
 * 
 *
 */
public class MapRow {
	private Class<?> className;

	public MapRow(Class<?> className) {
		this.className = className;
	}

	/**
	 * �÷����Զ������ݿ��ֶζ�Ӧ��Object����Ӧ�ֶ� Ҫ�����ݿ���Object���ֶ�����ͬ
	 */
	public Object mapRow(ResultSet rs) throws SQLException {

		Object obj = new Object();
		Field[] fields = className.getDeclaredFields();
		try {
			obj = className.newInstance();
			for (Field field : fields) {
				// ��������û�и�field��������
				try {
					rs.findColumn(field.getName());
				} catch (Exception e) {
					continue;
				}
				// �޸���Ӧfiled��Ȩ��
				boolean accessFlag = field.isAccessible();
				field.setAccessible(true);
				String value = rs.getString(field.getName());
				value = value == null ? "" : value;
				setFieldValue(obj, field, value);

				// �ָ���Ӧfield��Ȩ��
				field.setAccessible(accessFlag);
			}
		} catch (Exception e) {
			e.printStackTrace();
			obj = rs.getLong(1);
		}

		return obj;
	}

	/**
	 * �������ͶԾ���������Ը�ֵ
	 * 
	 * @throws IllegalAccessException
	 * @throws IllegalArgumentException
	 * @throws ParseException
	 */
	public static void setFieldValue(Object obj, Field field, String value)
			throws IllegalArgumentException, IllegalAccessException, ParseException {
		String elemType = field.getType().toString();

		if (elemType.indexOf("boolean") != -1 || elemType.indexOf("Boolean") != -1) {
			field.set(obj, Boolean.valueOf(value));
		} else if (elemType.indexOf("byte") != -1 || elemType.indexOf("Byte") != -1) {
			field.set(obj, Byte.valueOf(value));
		} else if (elemType.indexOf("char") != -1 || elemType.indexOf("Character") != -1) {
			field.set(obj, Character.valueOf(value.charAt(0)));
		} else if (elemType.indexOf("double") != -1 || elemType.indexOf("Double") != -1) {
			field.set(obj, Double.valueOf(value));
		} else if (elemType.indexOf("float") != -1 || elemType.indexOf("Float") != -1) {
			field.set(obj, Float.valueOf(value));
		} else if (elemType.indexOf("int") != -1 || elemType.indexOf("Integer") != -1) {
			field.set(obj, Integer.valueOf(value));
		} else if (elemType.indexOf("long") != -1 || elemType.indexOf("Long") != -1) {
			field.set(obj, Long.valueOf(value));
		} else if (elemType.indexOf("short") != -1 || elemType.indexOf("Short") != -1) {
			field.set(obj, Short.valueOf(value));
		} else if (elemType.indexOf("date") != -1 || elemType.indexOf("Date") != -1) {
			DateFormat df = new SimpleDateFormat("yy-MM-dd hh:mm:ss.SS");
			field.set(obj, df.parse(value));
		} else {
			field.set(obj, (Object) value);
		}
	}
}
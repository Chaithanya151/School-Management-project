package com.school.servces;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.school.entity.Students;

public class studentService {
	private static  String url = "jdbc:postgresql://localhost:5432/school";
	private static  String user = "postgres";
	private static  String pswd = "2004";
	private static Connection con;
	private static int res;
	static {
		try {
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection(url,user,pswd);
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

public int save(Students st) {
	int id=st.getId();
	String name=st.getName();
	int age=st.getAge();
	String sql="insert into students values(?,?,?)";
try {
	PreparedStatement pstm = con.prepareStatement(sql);

pstm.setInt(1,id);
pstm.setString(2, name);
pstm.setInt(3, age);

 res=pstm.executeUpdate();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

return res;
}
public List<Students> fetchall(){
	List<Students> sts=new ArrayList<Students>();
	String sql="select * from students";
	try {
		Statement stm=con.createStatement();
		ResultSet rs=stm.executeQuery(sql);
		while(rs.next()) {
			Students st1=new Students(rs.getInt(1),rs.getString(2),rs.getInt(3));
			sts.add(st1);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return sts;
}
public int update(Students st1) {
	int res=0;
	String sql="update students set name=?, age=? where id=?";
	try {
		PreparedStatement pstm = con.prepareStatement(sql);

	pstm.setString(1,st1.getName());
	pstm.setInt(2, st1.getAge());
	pstm.setInt(3,st1.getId());

	 res=pstm.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return res;
}
public int delete(int id)
{
	int res=0;
	String sql="delete from students where id=?";
	try {
		PreparedStatement pstm=con.prepareStatement(sql);
		pstm.setInt(1, id);
		res=pstm.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return res;
}
}


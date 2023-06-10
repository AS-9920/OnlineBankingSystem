package com.banking.models;
import java.sql.*;

import org.springframework.stereotype.Component;

import com.banking.entities.Account;
@Component
public class UserOperations 
{
	public String authenticate(String mono, String psw)
	{
		String stat="";
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankdb?user=root & password=adarsh");
			pst=con.prepareStatement("select * from accounts where mono = ? and psw = ? and status = 'active';");
			pst.setString(1, mono);
			pst.setString(2, psw);
			rs = pst.executeQuery();
			if(rs.next())
			{
				stat = "success";
			}
			else
			{
				stat = "failed";
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			stat = "Error";
		}
		return psw;
	}
}

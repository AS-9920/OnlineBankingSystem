package com.banking.controllers;

import java.sql.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.banking.entities.Account;
import com.banking.models.UserOperations;

@Controller
@ComponentScan("com.banking.models")
public class BankController 
{
	@Autowired
	UserOperations uops;
	
	@RequestMapping("/")
	public String index()
	{
		return "index";
	}
	
	@RequestMapping("/signup")
	public String signUp() 
	{
		return "SignUp";
	}
	
	@RequestMapping("/forgetpsw")
	public String forgetpsw()
	{
		return "ForgetPsw";
	}
	
	@RequestMapping("/index")
	public String home()
	{
		return "index";
	}
	
	@RequestMapping("/register")
	public String Register(Account obj)
	{
		String page="";
		
		Connection con;
		PreparedStatement pst;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankdb?user=root & password=adarsh");
			pst=con.prepareStatement("insert into accounts (email, psw, name, mono, balance, gen, acctype, sque, ans)values (?,?,?,?,?,?,?,?,?);");
			pst.setString(1, obj.getEmail()); 
			pst.setString(2, obj.getPsw());
			pst.setString(3, obj.getName()); 
			pst.setString(4, obj.getMono());
			pst.setDouble(5, obj.getBalance()); 
			pst.setString(6, obj.getGen());
			pst.setString(7, obj.getAcctype()); 
			pst.setString(8, obj.getSque());
			pst.setString(9, obj.getAns());
			pst.executeUpdate();
			con.close();
			page="success";
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			page = "Error";
		}
		return page;
	}
	
	@RequestMapping("/login")
	public String check(String mono, String psw)
	{
		String page="";
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankdb?user=root & password=adarsh");
			pst=con.prepareStatement("select * from accounts  where mono=? and psw=? and status='active';");
			pst.setString(1, mono);
			pst.setString(2, psw);
			rs = pst.executeQuery();
			if(rs.next())
			{
				page = "Admin";
			}
			else
			{
				page = "Error";
			}
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			page = "Error";
		}
		return page;
	}
	
	@RequestMapping("/reports")
	public String report() 
	{
		return "reports";
	}
}

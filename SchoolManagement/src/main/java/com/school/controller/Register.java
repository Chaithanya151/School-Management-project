package com.school.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.school.entity.Students;
import com.school.servces.studentService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/save")
public class Register extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("id"));
	String name=req.getParameter("name");
	int age=Integer.parseInt(req.getParameter("age"));
	 
	Students students=new Students();
	students.setId(id);
	students.setName(name);
	students.setAge(age);
	studentService ss=new studentService();
	int res=ss.save(students);
	if(res!=0) {
		resp.sendRedirect("index.jsp");
	}
	else {
		PrintWriter pr=resp.getWriter();
		pr.print("<h1>data not stored successfully</h1>");
	}
}
}

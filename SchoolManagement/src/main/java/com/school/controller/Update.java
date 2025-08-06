package com.school.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.school.entity.Students;
import com.school.servces.studentService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/update")
public class Update extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("id"));
	String name=req.getParameter("name");
int age=	Integer.parseInt(req.getParameter("age"));
Students sts=new Students(id,name,age);
studentService ss=new studentService();
int res=ss.update(sts);
if(res!=0) {
	RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
	rd.forward(req, resp);
}
else {
	PrintWriter pr=resp.getWriter();
	pr.print("<h1>data not update<h1>");
}
	
}
}

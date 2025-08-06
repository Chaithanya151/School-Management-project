package com.school.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.school.servces.studentService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class Delete extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("id"));
	studentService ss=new studentService();
int res=ss.delete(id);
	if(res!=0) {
		RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
		rd.forward(req, resp);
	}
	else {
		PrintWriter pr=resp.getWriter();
		pr.print("<h1>User not found to delete<h1>");
	}
}
}

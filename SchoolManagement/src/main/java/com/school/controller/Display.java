package com.school.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.school.entity.Students;
import com.school.servces.studentService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/display")
public class Display extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	studentService ss=new studentService();
	List<Students> sts=ss.fetchall();
	PrintWriter pr=resp.getWriter();
	pr.print("<!DOCTYPE html>\r\n"
	        + "<html lang=\"en\">\r\n"
	        + "<head>\r\n"
	        + "    <meta charset=\"UTF-8\">\r\n"
	        + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n"
	        + "    <title>User Table</title>\r\n"
	        + "    <style>\r\n"
	        + "        body {\r\n"
	        + "            font-family: Arial, sans-serif;\r\n"
	        + "            background: linear-gradient(to right, #74ebd5, #acb6e5);\r\n"
	        + "            display: flex;\r\n"
	        + "            justify-content: center;\r\n"
	        + "            align-items: center;\r\n"
	        + "            height: 100vh;\r\n"
	        + "            margin: 0;\r\n"
	        + "        }\r\n"
	        + "        .container {\r\n"
	        + "            background-color: #fff;\r\n"
	        + "            padding: 30px;\r\n"
	        + "            border-radius: 10px;\r\n"
	        + "            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);\r\n"
	        + "            width: 90%;\r\n"
	        + "            max-width: 800px;\r\n"
	        + "        }\r\n"
	        + "        h1 {\r\n"
	        + "            text-align: center;\r\n"
	        + "            margin-bottom: 20px;\r\n"
	        + "            color: #333;\r\n"
	        + "        }\r\n"
	        + "        table {\r\n"
	        + "            width: 100%;\r\n"
	        + "            border-collapse: collapse;\r\n"
	        + "            margin-top: 10px;\r\n"
	        + "        }\r\n"
	        + "        table, th, td {\r\n"
	        + "            border: 1px solid #ccc;\r\n"
	        + "        }\r\n"
	        + "        th, td {\r\n"
	        + "            padding: 12px;\r\n"
	        + "            text-align: left;\r\n"
	        + "        }\r\n"
	        + "        th {\r\n"
	        + "            background-color: #f2f2f2;\r\n"
	        + "        }\r\n"
	        + "        a {\r\n"
	        + "            display: inline-block;\r\n"
	        + "            padding: 6px 12px;\r\n"
	        + "            margin-right: 5px;\r\n"
	        + "            font-size: 14px;\r\n"
	        + "            color: white;\r\n"
	        + "            text-decoration: none;\r\n"
	        + "            border-radius: 5px;\r\n"
	        + "            transition: background-color 0.3s ease;\r\n"
	        + "        }\r\n"
	        + "        a[href*='edit'] {\r\n"
	        + "            background-color: #28a745;\r\n"
	        + "        }\r\n"
	        + "        a[href*='edit']:hover {\r\n"
	        + "            background-color: #218838;\r\n"
	        + "        }\r\n"
	        + "        a[href*='delete'] {\r\n"
	        + "            background-color: #dc3545;\r\n"
	        + "        }\r\n"
	        + "        a[href*='delete']:hover {\r\n"
	        + "            background-color: #c82333;\r\n"
	        + "        }\r\n"
	        + "    </style>\r\n"
	        + "</head>\r\n"
	        + "<body>\r\n"
	        + "    <div class=\"container\">\r\n"
	        + "        <h1>Students Table</h1>\r\n"
	        + "        <table>\r\n"
	        + "            <thead>\r\n"
	        + "                <tr>\r\n"
	        + "                    <th>Id</th>\r\n"
	        + "                    <th>Name</th>\r\n"
	        + "                    <th>Age</th>\r\n"
	        + "                    <th>Actions</th>\r\n"
	        + "                </tr>\r\n"
	        + "            </thead>\r\n"
	        + "            <tbody>");

	for (Students students : sts) {
		int id=students.getId();
		String name=students.getName();
		int age=students.getAge();
		
		 pr.print("<tr>\r\n"
	             + "    <td>" + id + "</td>\r\n"
	             + "    <td>" + name + "</td>\r\n"
	             + "    <td>" + age + "</td>\r\n"
	             + "    <td>\r\n"
	             + "        <a href="+"edit.jsp"+">edit</a>\r\n"
	             + "        <a href="+"delete.jsp"+">delete</a>\r\n"
	             + "    </td>\r\n"
	             + "</tr>");
	 }}
}


package com.company.aboutking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// localhost:80/jspmodel1/MyServlet2
@WebServlet("/MySerblet2")
public class MyServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyServlet2() {
        super();
    }

    // 1. http 통신에 request 요청방식을 처리한다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("````````````````````");
		System.out.println("get 방식으로 사용자가 연결을 요청 했습니다.");
		
		// 2. 쿼리 스트링 방식을 처리한다.
		// http://localhost/jspmodel1/MyServlet2?name="홍길동"&age=20
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		System.out.println("name : " + name);
		System.out.println("age : " + age);
		
		// 값을 통해서  DB에 접근해서 추가하거나 찾는다.
		
		// 3. 응답하기
		// MIME 타입을 이해하기
//		response.setContentType("text/plain; charset=utf-8");
//		response.setContentType("text/html; charset=utf-8");
		
		// 3.1 : json 형태로 돌려주기
		response.setContentType("application/json; charset=utf-8");
		
		// response - html
		PrintWriter out = response.getWriter();
//		out.println("<html>");
//		out.println("<head>");
//		out.println("</head>");
//		out.println("<body>");
//		out.println("<div style='background-color:red;'>");
//		out.println("<h1> 응답을 돌려 줍니다. </h1>");
//		out.println("</div>");
//		out.println("</body>");
//		out.println("</html>");
//		out.flush();
		
//		{"name" : "홍길동", "age" : 30} json 
		out.print("{\"name\" : " + name + ",\"age\" : " + age + "}");
		out.flush();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

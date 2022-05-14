package com.company.aboutking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 주소
@WebServlet("/test3")
public class MyServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyServlet3() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	// post 방식 (암호화 되서 사용자에게 요청값들이 날라온다.)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 블로그 (음식 조리방법)
		String food = request.getParameter("food");
		String recipe = request.getParameter("recipe");
		
		System.out.println("food : " + food);
		System.out.println("recipe : " + recipe);
		
		// DB에 저장
		// 저장결과에 따라서 응답 결과를 다르게 보내줘야 한다.
		// 저장 불가/ 저장 성공
		
//		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
//		boolean result = true;
//		
//		if(result) {
//			// 성공에 대한 응답
//			out.println("<html>");
//			out.println("<h1 style='color:green'>저장성공</h1>");
//			out.println("</html>");
//		} else {
//			// 실패에 대한 응답
//			out.println("<html>");
//			out.println("<h1 style='color:red'>저장실패</h1>");
//			out.println("</html>");
//		}
		
		// 문제 응답을 JSON 형식으로 만들어서 보내주세요.
		response.setContentType("application/json; charset=utf-8");
		boolean result = true;
		
		if(result) {
			out.println("{success" + " : " + result + "}");
		} else {
			out.println("{success" + " : " + result + "}");
		}
		
	}

}

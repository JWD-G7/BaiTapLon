package btwebfinal.servlets;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.DoiMatKhau;
import method.models.KiemTraDangNhap;

@WebServlet("/DoiMatKhau")
public class DoiMK extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DoiMK() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter writer =response.getWriter();
		writer.println("Đổi MK ");
		String username=request.getParameter("taikhoan");
		String password=request.getParameter("matkhaucu");
		String passnew=request.getParameter("matkhaumoi");
		String passnew2=request.getParameter("matkhaunhaplai");
		DoiMatKhau a=new DoiMatKhau();		
		boolean kt=a.DoiMKhau(username, password, passnew, passnew2);		
		if(kt==true)
			writer.println("Đổi MK thành công");
		else
		{
			writer.println("Thất bại!!!");
		}
	}
	
}

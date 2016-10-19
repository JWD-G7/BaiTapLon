package btwebfinal.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.KiemTraDangNhap;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
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
		String s=kiemTra(request, response);
		
		
		
	}
	protected void LayThongTin (HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {	
		String username=request.getParameter("InputUserName1");
		String password=request.getParameter("InputPassword1");
		KiemTraDangNhap ktdn=new KiemTraDangNhap();
		
		String id=ktdn.LayThongTin(username, password,1);
		request.setAttribute("masoid", id);
		String tenuser=ktdn.LayThongTin(username, password,2);
		request.setAttribute("tenuser",tenuser );						
	}
	
	protected String kiemTra(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {	
		String username=request.getParameter("InputUserName1");
		String password=request.getParameter("InputPassword1");
		String chucvu=request.getParameter("chucvu");
		KiemTraDangNhap ktdn=new KiemTraDangNhap();
		boolean ktra=ktdn.checkTaiKhoan(username,password);
		
		if(ktra==true)
		{		
			if(ktdn.ChucVu(username, password)==1)	
			{			
				if(chucvu.equals("GiangVien"))
				{
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuGiangVien.jsp");
					LayThongTin(request,response);				
					dispatcher.forward(request, response);
					
					return "Thanh Cong";
				}
				else
				{				
					return "Sai Chức vụ";
				}
			}
			if(ktdn.ChucVu(username, password)==2)	
			{			
				if(chucvu.equals("HieuTruong"))
				{
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuHieuTruong.jsp");
					LayThongTin(request,response);
					dispatcher.forward(request, response);
					return "Thanh Cong";
				}
				else
				{
					
					return "Sai Chức vụ";
				}
			}		
			if(ktdn.ChucVu(username, password)==3)	
			{			
				if(chucvu.equals("PhongTCCB"))
				{
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuPTCCB.jsp");
					LayThongTin(request,response);
					dispatcher.forward(request, response);
					return "Thanh Cong";
				}
				else
				{
					
					return "Sai Chức vụ";
				}
			}		
			if(ktdn.ChucVu(username, password)==4)	
			{			
				if(chucvu.equals("TruongBoMon"))
				{
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuTruongBoMon.jsp");
					LayThongTin(request,response);
					dispatcher.forward(request, response);
					return "Thanh Cong";
				}
				else
				{
					
					return "Sai Chức vụ";
				}
			}		
			if(ktdn.ChucVu(username, password)==5)	
			{			
				if(chucvu.equals("TruongKhoa"))
				{
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuTruongKhoa.jsp");
					LayThongTin(request,response);
					dispatcher.forward(request, response);
					return "Thanh Cong";
				}
				else
				{
					
					return "Sai Chức vụ";
				}
			}		
			if(ktdn.ChucVu(username, password)==6)	
			{			
				if(chucvu.equals("Admin"))
				{
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuAdmin.jsp");
					LayThongTin(request,response);
					dispatcher.forward(request, response);
					return "Thanh Cong";
				}
				else
				{
					
					return "Sai Chức vụ";
				}
			}		
		}
		else
		{
			
			return "false";
		}
		return "false";
	}

}

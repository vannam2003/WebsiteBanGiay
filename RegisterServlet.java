package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modal.Account;

import java.io.IOException;

import dal.ProductDAO;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String confirmPassword = request.getParameter("confirmPass");

        // Kiểm tra mật khẩu có trùng không
        if (!password.equals(confirmPassword)) {
            request.setAttribute("mess", "Mật khẩu xác nhận không khớp!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // Kiểm tra tài khoản đã tồn tại chưa
        ProductDAO dao = new ProductDAO();
        Account account = dao.checkAccount(username);
        if (account == null) {
            // Nếu tài khoản chưa tồn tại, thực hiện đăng ký
            dao.dangky(username, password);
            request.setAttribute("mess", "Đăng ký thành công. Vui lòng đăng nhập!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            // Nếu tài khoản đã tồn tại, gửi thông báo
            request.setAttribute("mess", "Tài khoản đã tồn tại.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}

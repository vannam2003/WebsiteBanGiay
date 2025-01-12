package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modal.Product;

import java.io.IOException;

import dal.AdminDAO;

/**
 * Servlet implementation class AdDeleteProductServlet
 */
@WebServlet("/AdDeleteProductServlet")
public class AdDeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdDeleteProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		int productid = Integer.parseInt(pid);
		AdminDAO dao = new AdminDAO();
		Product product = dao.getProductById(productid);
		
		request.setAttribute("product", product);
		request.getRequestDispatcher("Xoasanpham.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		int productid = Integer.parseInt(pid);
		AdminDAO dao = new AdminDAO();
		dao.deleteProduct(productid);
		response.sendRedirect("AdminQuanlysanpham");
	}

}

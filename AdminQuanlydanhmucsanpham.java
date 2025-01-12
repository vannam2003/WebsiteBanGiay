package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modal.Categories;
import modal.Product;

import java.io.IOException;
import java.util.List;

import dal.AdminDAO;

/**
 * Servlet implementation class AdminQuanlydanhmucsanpham
 */
@WebServlet("/AdminQuanlydanhmucsanpham")
public class AdminQuanlydanhmucsanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminQuanlydanhmucsanpham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminDAO dao = new AdminDAO();
		List<Categories> listallcategory = dao.getAllCategory();
		
		request.setAttribute("Dtcategory", listallcategory);
		request.getRequestDispatcher("AdminQuanlydanhmucsanpham.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

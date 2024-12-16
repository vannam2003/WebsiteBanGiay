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

import dal.ProductDAO;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/Category")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String categoryid = request.getParameter("cid");
		
		ProductDAO dao = new ProductDAO();
		List<Product> listlocsanpham = dao.getProductByCID(categoryid);
		List<Categories> listcategory = dao.getAllCategory();
		List<Product> listsanphammoinhat = dao.getSanphammoinhat();
		
		
		request.setAttribute("DataCategory", listcategory);
		request.setAttribute("DataSanphammoinhat", listsanphammoinhat);
		request.setAttribute("DataAllProduct", listlocsanpham);
		request.getRequestDispatcher("SanPham.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

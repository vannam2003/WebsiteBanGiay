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
 * Servlet implementation class TrangSanPhamServlet
 */
@WebServlet("/SanPhamServlet")
public class TrangSanPhamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrangSanPhamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao = new ProductDAO();
		List<Product> listallproduct = dao.getTrangSanPham();
		List<Categories> listcategory = dao.getAllCategory();
		List<Product> listsanphammoinhat = dao.getSanphammoinhat();
		
		request.setAttribute("DataAllProduct", listallproduct);
		request.setAttribute("DataCategory", listcategory);
		request.setAttribute("DataSanphammoinhat", listsanphammoinhat);
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

package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modal.News;
import modal.Product;

import java.io.IOException;
import java.util.List;


import dal.ProductDAO;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao = new ProductDAO();
		List<Product> listproduct = dao.getAllProduct();
		List<Product> listgiamgialon = dao.getGiamgialon();
		List<Product> listsanphammoi = dao.getSanphammoi();
		List<Product> listdanggiamgia = dao.getSanphammoi();
		List<News> listnews = dao.getAllNews();
		
		
		request.setAttribute("DataProduc", listproduct);
		request.setAttribute("DataGiamgialon", listgiamgialon);
		request.setAttribute("DataSanphammoi", listsanphammoi);
		request.setAttribute("DataDanggiamgia", listdanggiamgia);
		request.setAttribute("DataNews", listnews);
		request.getRequestDispatcher("Home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

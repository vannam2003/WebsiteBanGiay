package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modal.Product;

import java.io.IOException;
import java.math.BigDecimal;

import dal.AdminDAO;

/**
 * Servlet implementation class AaddProductServlet
 */
@WebServlet("/AaddProductServlet")
public class AaddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AaddProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	String productName = request.getParameter("productname");
	        String title = request.getParameter("title");
	        BigDecimal price = new BigDecimal(request.getParameter("price"));
	        int sale = Integer.parseInt(request.getParameter("sale"));
	        int categoryId = Integer.parseInt(request.getParameter("categoryid"));
	        String img = request.getParameter("img");  
	        String img2 = request.getParameter("img2");
	        String img3 = request.getParameter("img3");
	        String img4 = request.getParameter("img4");
	        
	        BigDecimal priceSale = price.subtract(price.multiply(BigDecimal.valueOf(sale)).divide(BigDecimal.valueOf(100)));

	        // Tạo đối tượng Product từ dữ liệu form
	        Product product = new Product();
	        product.setProductname(productName);
	        product.setTitle(title);
	        product.setPrice(price);
	        product.setPricesale(priceSale);
	        product.setSale(sale);
	        product.setCategoryid(categoryId);
	        product.setImg(img);
	        product.setImg2(img2);
	        product.setImg3(img3);
	        product.setImg4(img4);

	        AdminDAO productDAO = new AdminDAO();
	        productDAO.AddProduct(product);


	        response.sendRedirect("AdminQuanlysanpham");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

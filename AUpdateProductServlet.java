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
 * Servlet implementation class AUpdateProductServlet
 */
@WebServlet("/AUpdateProductServlet")
public class AUpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AUpdateProductServlet() {
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
		request.getRequestDispatcher("Suasanpham.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Lấy thông tin từ form
	    int productid = Integer.parseInt(request.getParameter("productid"));
	    String productname = request.getParameter("productName");
	    String title = request.getParameter("title");
	    BigDecimal price = new BigDecimal(request.getParameter("price"));
	    int sale = Integer.parseInt(request.getParameter("sale"));
	    String img = request.getParameter("img");
	    String img2 = request.getParameter("img2");
	    String img3 = request.getParameter("img3");
	    String img4 = request.getParameter("img4");

	    BigDecimal priceSale = price.subtract(price.multiply(BigDecimal.valueOf(sale)).divide(BigDecimal.valueOf(100)));
	    // Tạo đối tượng Product
	    Product product = new Product();
	    product.setProductid(productid);
	    product.setProductname(productname);
	    product.setTitle(title);
	    product.setPrice(price);
	    product.setPricesale(priceSale);
	    product.setSale(sale);
	    product.setImg(img);
	    product.setImg2(img2);
	    product.setImg3(img3);
	    product.setImg4(img4);

	    // Gọi DAO để cập nhật dữ liệu
	    AdminDAO dao = new AdminDAO();
	    dao.UpdateProduct(product);
	    response.sendRedirect("AdminQuanlysanpham");
	}

}

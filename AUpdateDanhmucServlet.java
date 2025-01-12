package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modal.News;

import java.io.IOException;

import dal.AdminDAO;

/**
 * Servlet implementation class AUpdateDanhmucServlet
 */
@WebServlet("/AUpdateDanhmucServlet")
public class AUpdateDanhmucServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AUpdateDanhmucServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ctid = request.getParameter("ctid");
		int cateid = Integer.parseInt(ctid);
		
		AdminDAO dao = new AdminDAO();
		News news = dao.getCategoryById(cateid);
		
		request.setAttribute("dtnews", news);
		request.getRequestDispatcher("Suabaiviet.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modal.News;
import modal.Slide;

import java.io.IOException;

import dal.AdminDAO;

/**
 * Servlet implementation class AUpdateNewsServlet
 */
@WebServlet("/AUpdateNewsServlet")
public class AUpdateNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AUpdateNewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nid = request.getParameter("nid");
		int newsid = Integer.parseInt(nid);
		
		AdminDAO dao = new AdminDAO();
		News news = dao.getNewsById(newsid);
		
		request.setAttribute("dtnews", news);
		request.getRequestDispatcher("Suabaiviet.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nid = request.getParameter("nid");
		int newsid = Integer.parseInt(nid);
		
		String title = request.getParameter("title");
	    String author = request.getParameter("author");
	    String img = request.getParameter("img");
	    String contents = request.getParameter("contents");
	    
	    News news = new News();
	    news.setNewsid(newsid); 
	    news.setTitle(title);
	    news.setAuthor(author);
	    news.setImg(img);
	    news.setContents(contents);	   
	    
	    AdminDAO dao = new AdminDAO();
	    dao.UpdateNews(news);
	    response.sendRedirect("AdminQuanlybaiviet");
	}

}

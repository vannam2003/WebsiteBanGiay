package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modal.News;
import modal.Slide;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;

import dal.AdminDAO;

/**
 * Servlet implementation class AaddNewsServlet
 */
@WebServlet("/AaddNewsServlet")
public class AaddNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AaddNewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
        String author = request.getParameter("author");
        String img = request.getParameter("img");
        String contents = request.getParameter("contents");
        Date datetime = Date.valueOf(LocalDate.now()); 
        
        News news = new News();
        news.setTitle(title);
        news.setAuthor(author);
        news.setImg(img);
        news.setContents(contents);
        news.setDatetime(datetime);
        news.setContents(contents);      
        
        AdminDAO productDAO = new AdminDAO();
        productDAO.AddNews(news);


        response.sendRedirect("AdminQuanlybaiviet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

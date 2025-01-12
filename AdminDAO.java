package dal;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;

import modal.Account;
import modal.News;
import modal.Product;
import modal.Slide;

public class AdminDAO extends DBContext {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	//đăng nhập admin
	public Account Adminlogin(String user, String pass) {
		String sql ="SELECT * \r\n"
				+ "FROM websitebangiay.account \r\n"
				+ "WHERE user = ? AND pass = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				return new Account(rs.getInt(1),
						rs.getString(2),
						rs.getString(3), 
						rs.getInt(4), 
						rs.getInt(5));
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	// danh sách sản phẩm
	public List<Product> getAllProduct(){
		List<Product> Alistproduct = new ArrayList<>();
		String sql = "SELECT * FROM websitebangiay.product\r\n"
				+ "ORDER BY productid DESC";
				
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while(rs.next()) {
				Alistproduct.add(new Product(rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5), 
						rs.getInt(6),
						rs.getBigDecimal(7), 
						rs.getBigDecimal(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return Alistproduct;
	}
	
	// sản phẩm không giảm giá
	public List<Product> getProductNoSale(){
		List<Product> Alistproductnosale = new ArrayList<>();
		String sql = "SELECT * FROM websitebangiay.product\r\n"
				+ "where sale = 0\r\n"
				+ "ORDER BY productid DESC";
				
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while(rs.next()) {
				Alistproductnosale.add(new Product(rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5), 
						rs.getInt(6),
						rs.getBigDecimal(7), 
						rs.getBigDecimal(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return Alistproductnosale;
	}
	
	// sản phẩm giảm giá
		public List<Product> getProductSale(){
			List<Product> Alistproductsale = new ArrayList<>();
			String sql = "SELECT * FROM websitebangiay.product\r\n"
					+ "where sale != 0\r\n"
					+ "ORDER BY productid DESC";
					
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();

				while(rs.next()) {
					Alistproductsale.add(new Product(rs.getInt(1),
							rs.getInt(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5), 
							rs.getInt(6),
							rs.getBigDecimal(7), 
							rs.getBigDecimal(8),
							rs.getString(9),
							rs.getString(10),
							rs.getString(11)));
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			return Alistproductsale;
		}
	// thêm sản phẩm
	public void AddProduct(Product product) {
	    String sql = "INSERT INTO `websitebangiay`.`product` ("
	            + "`categoryid`, "
	            + "`productname`, "
	            + "`title`, "
	            + "`img`, "
	            + "`sale`, "
	            + "`price`, "
	            + "`pricesale`, "
	            + "`img2`, "
	            + "`img3`, "
	            + "`img4`) "
	            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
	    
	    try {
	        conn = new DBContext().getConnection(); 
	        ps = conn.prepareStatement(sql);    
	        
	        ps.setInt(1, product.getCategoryid());  
	        ps.setString(2, product.getProductname()); 
	        ps.setString(3, product.getTitle()); 
	        ps.setString(4, product.getImg()); 
	        ps.setInt(5, product.getSale()); 
	        ps.setBigDecimal(6, product.getPrice());  
	        ps.setBigDecimal(7, product.getPricesale());
	        ps.setString(8, product.getImg2()); 
	        ps.setString(9, product.getImg3()); 
	        ps.setString(10, product.getImg4());
	      

	        ps.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();  
	    }
	}
	// Xóa sản phẩm
	public void deleteProduct(int productid) {
	    String sql = "DELETE FROM websitebangiay.product WHERE productid = ?";

	    try (Connection conn = new DBContext().getConnection(); // Mở kết nối mới
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setInt(1, productid);
	        ps.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}

	// Lấy thông tin sản phẩm theo ID
	 public Product getProductById(int productid) {
	     String sql = "SELECT * FROM websitebangiay.product WHERE productid = ?";
	     try (Connection conn = new DBContext().getConnection();
	          PreparedStatement ps = conn.prepareStatement(sql)) {

	         ps.setInt(1, productid);
	         ResultSet rs = ps.executeQuery();

	         if (rs.next()) {
	             return new Product(rs.getInt(1),
	                                rs.getInt(2),
	                                rs.getString(3),
	                                rs.getString(4),
	                                rs.getString(5),
	                                rs.getInt(6),
	                                rs.getBigDecimal(7),
	                                rs.getBigDecimal(8),
	                                rs.getString(9),
	                                rs.getString(10),
	                                rs.getString(11));
	         }
	     } catch (SQLException e) {
	         e.printStackTrace();
	     }
	     return null;
	 }
	 
	 // cập nhật sản phẩm
	 public void UpdateProduct(Product product) {
		    String sql = "UPDATE product SET categoryid = ?, productname = ?, title = ?, img = ?, sale = ?, price = ?, pricesale = ?, img2 = ?, img3 = ?, img4 = ? WHERE productid = ?";
		    try (
		    		Connection conn = getConnection(); 
		    		PreparedStatement ps = conn.prepareStatement(sql)) {
		        ps.setInt(1, product.getCategoryid());
		        ps.setString(2, product.getProductname());
		        ps.setString(3, product.getTitle());
		        ps.setString(4, product.getImg());
		        ps.setInt(5, product.getSale());
		        ps.setBigDecimal(6, product.getPrice());
		        ps.setBigDecimal(7, product.getPricesale());
		        ps.setString(8, product.getImg2());
		        ps.setString(9, product.getImg3());
		        ps.setString(10, product.getImg4());
		        ps.setInt(11, product.getProductid());

		        ps.executeUpdate();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}
	 
// quản lý slide
	//danh sách slide
		public List<Slide> getAllSlide(){
			List<Slide> listslide = new ArrayList<>();
			String sql = "SELECT * FROM websitebangiay.slide\r\n"
					+ "ORDER BY sid DESC";
			
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();

				while(rs.next()) {
					listslide.add(new Slide(rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4)));
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			return listslide;
		}
		
		// lấy thông tin slide theo id
		 public Slide getSlideById(int sid) {
		     String sql = "SELECT * FROM websitebangiay.slide WHERE sid = ?";
		     try (Connection conn = new DBContext().getConnection();
		          PreparedStatement ps = conn.prepareStatement(sql)) {

		         ps.setInt(1, sid);
		         ResultSet rs = ps.executeQuery();

		         if (rs.next()) {
		             return new Slide(rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getString(4));
		         }
		     } catch (SQLException e) {
		         e.printStackTrace();
		     }
		     return null;
		 }
		 
		// thêm slide
			public void AddSlide(Slide slide) {
			    String sql = "INSERT INTO `websitebangiay`.`slide` (`sname`, `stitle`, `simg`) VALUES (?, ?, ?)";
			    
			    try {
			        conn = new DBContext().getConnection(); 
			        ps = conn.prepareStatement(sql);    
			        
			        ps.setString(1, slide.getSname()); 
			        ps.setString(2, slide.getStitle()); 
			        ps.setString(3, slide.getSimg()); 
			        
			        ps.executeUpdate();
			    } catch (Exception e) {
			        e.printStackTrace();  
			    }
			}
			
		 // cập nhật slide
		 public void UpdateSlide(Slide slide) {
			    String sql = "UPDATE `websitebangiay`.`slide` SET `sname` = ?, `stitle` = ?, `simg` = ? WHERE `sid` = ?";
			    try (
			    		Connection conn = getConnection(); 
			    		PreparedStatement ps = conn.prepareStatement(sql)) {
			        ps.setString(1, slide.getSname());
			        ps.setString(2, slide.getStitle());
			        ps.setString(3, slide.getSimg());			      
			        ps.setInt(4, slide.getSid());

			        ps.executeUpdate();
			    } catch (SQLException e) {
			        e.printStackTrace();
			    }
			}
		 
		// Xóa bản trình chiếu
			public void deleteSlide(int sid) {
			    String sql = "DELETE FROM `websitebangiay`.`slide` WHERE `sid` = ?";

			    try (Connection conn = new DBContext().getConnection();
			         PreparedStatement ps = conn.prepareStatement(sql)) {

			        ps.setInt(1, sid);
			        ps.executeUpdate();
			    } catch (SQLException e) {
			        e.printStackTrace();
			    }
			}
// quản lý bài viết
			// danh sách bài viết
			public List<News> getAllNews(){
				List<News> listallnews = new ArrayList<>();
				String sql = "SELECT * FROM websitebangiay.news\r\n"
						+ "ORDER BY newsid DESC";
						
				try {
					conn = new DBContext().getConnection();
					ps = conn.prepareStatement(sql);
					rs = ps.executeQuery();

					while(rs.next()) {
						listallnews.add(new News(rs.getInt(1),
								rs.getString(2),
								rs.getDate(3),
								rs.getString(4),
								rs.getString(5),
								rs.getString(6)));
					}
				} catch (Exception e) {
					// TODO: handle exception
				}
				return listallnews;
			}
			
			// thêm bài viết
			public void AddNews(News news) {
			    String sql = "INSERT INTO websitebangiay.news (title, datetime, author, img, contents) VALUES (?, ?, ?, ?, ?)";
			    
			    try {
			        conn = new DBContext().getConnection(); 
			        ps = conn.prepareStatement(sql);    
			        
			        ps.setString(1, news.getTitle());
			        ps.setDate(2, news.getDatetime());  
			        ps.setString(3, news.getAuthor());
			        ps.setString(4, news.getImg());   
			        ps.setString(5, news.getContents());
			        
			        ps.executeUpdate();
			    } catch (Exception e) {
			        e.printStackTrace();  
			    }
			}
			
			// lấy bài viết theo id
			 public News getNewsById(int newsid) {
			     String sql = "SELECT * FROM websitebangiay.news\r\n"
			     		+ "where newsid = ?";
			     try (Connection conn = new DBContext().getConnection();
			          PreparedStatement ps = conn.prepareStatement(sql)) {

			         ps.setInt(1, newsid);
			         ResultSet rs = ps.executeQuery();

			         if (rs.next()) {
			             return new News(rs.getInt(1),
									rs.getString(2),
									rs.getDate(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6));
			         }
			     } catch (SQLException e) {
			         e.printStackTrace();
			     }
			     return null;
			 }
			 
			 // cập nhật bài viết
			 public void UpdateNews(News news) {
				    String sql = "UPDATE `websitebangiay`.`news` SET `title` = ?, `author` = ?, `img` = ?, `contents` = ? WHERE `newsid` = ?";
				    try (
				    		Connection conn = getConnection(); 
				    		PreparedStatement ps = conn.prepareStatement(sql)) {
				    	
				    	 ps.setString(1, news.getTitle());
				         ps.setString(2, news.getAuthor());  
				         ps.setString(3, news.getImg());  
				         ps.setString(4, news.getContents());
				         ps.setInt(5, news.getNewsid());

				        ps.executeUpdate();
				    } catch (SQLException e) {
				        e.printStackTrace();
				    }
				}
//quản lý category
			// danh sách category
				public List<Category> getAllCategory(){
					List<Category> listallcategory = new ArrayList<>();
					String sql = "";
							
					try {
						conn = new DBContext().getConnection();
						ps = conn.prepareStatement(sql);
						rs = ps.executeQuery();

						while(rs.next()) {
							listallcategory.add(new News(rs.getInt(1),
									rs.getString(2),
									rs.getDate(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6)));
						}
					} catch (Exception e) {
						// TODO: handle exception
					}
					return listallcategory;
				}
				
// quản lý tài khoản
	 // danh sách tài khoản
		public List<Account> getAllAccount(){
			List<Account> AlistAccount = new ArrayList<>();
			String sql = "SELECT * FROM websitebangiay.account;";
					
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();

				while(rs.next()) {
					AlistAccount.add(new Account(rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getInt(4),
							rs.getInt(5)));
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			return AlistAccount;
		}
		
		// Lấy thông tin tài khoản theo ID
		 public Account getAccountById(int id) {
		     String sql = "SELECT * FROM websitebangiay.account\r\n"
		     		+ "WHERE id = ?";
		     try (Connection conn = new DBContext().getConnection();
		          PreparedStatement ps = conn.prepareStatement(sql)) {

		         ps.setInt(1, id);
		         ResultSet rs = ps.executeQuery();

		         if (rs.next()) {
		             return new Account(rs.getInt(1),
		            		 rs.getString(2),
		            		 rs.getString(3),
		            		 rs.getInt(4),
		            		 rs.getInt(5));
		         }
		     } catch (SQLException e) {
		         e.printStackTrace();
		     }
		     return null;
		 }

	//kiểm tra dữ liệu
	public static void main(String[] args) {
		AdminDAO dao = new AdminDAO();
		List<News> listallnews = dao.getAllNews();
		
		for (News n : listallnews) {
			System.out.println(n);
		}
	}
}

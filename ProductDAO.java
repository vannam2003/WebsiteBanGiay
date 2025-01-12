package dal;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import modal.Account;
import modal.Cartitem;
import modal.Categories;
import modal.Gioithieu;
import modal.News;
import modal.Order;
import modal.Orderdetail;
import modal.Product;
import modal.Slide;

public class ProductDAO extends DBContext {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	// sản phẩm
	public List<Product> getAllProduct(){
		List<Product> listproduct = new ArrayList<>();
		String sql = "SELECT * \r\n"
				+ "FROM product \r\n"
				+ "ORDER BY productid DESC \r\n"
				+ "LIMIT 8";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while(rs.next()) {
				listproduct.add(new Product(rs.getInt(1),
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
		return listproduct;
	}

	//Khuyến mãi lớn
	public List<Product> getGiamgialon(){
		List<Product> listgiamgialon = new ArrayList<>();
		String sql = "SELECT * FROM websitebangiay.product "
	               + "WHERE sale = 50 "
	               + "ORDER BY productid DESC;";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while(rs.next()) {
				listgiamgialon.add(new Product(rs.getInt(1),
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
		return listgiamgialon;
	}
	
	//Sản phẩm nổi bật - sản phẩm mới
	public List<Product> getSanphammoi(){
		List<Product> listsanphammoi = new ArrayList<>();
		String sql = "SELECT * \r\n"
				+ "FROM product \r\n"
				+ "ORDER BY productid DESC \r\n"
				+ "LIMIT 6";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while(rs.next()) {
				listsanphammoi.add(new Product(rs.getInt(1),
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
		return listsanphammoi;
	}
	
	//Sản phẩm nổi bật - đang khuyến mãi
		public List<Product> getDanggiamgia(){
			List<Product> listdanggiamgia = new ArrayList<>();
			String sql = "SELECT * FROM websitebangiay.product \r\n"
					+ "WHERE sale != 0\r\n"
					+ "ORDER BY productid DESC\r\n"
					+ "LIMIT 6";
			
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();

				while(rs.next()) {
					listdanggiamgia.add(new Product(rs.getInt(1),
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
			return listdanggiamgia;
		}
		
		
		// tin tức:
		public List<News> getAllNews(){
			List<News> listnews = new ArrayList<>();
			String sql = "SELECT * FROM websitebangiay.news "
			           + "ORDER BY newsid DESC "
			           + "LIMIT 5;";

			
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();

				while(rs.next()) {
					listnews.add(new News(rs.getInt(1),
							rs.getString(2),
							rs.getDate(3),
							rs.getString(4),
							rs.getString(5), 
							rs.getString(6)));
							
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			return listnews;
		}
		
		// xử lý liên hệ
		public void addContact(String name, String email, String title, String message) {
	        String sql = "INSERT INTO Contact (name, email, title, message) VALUES (?, ?, ?, ?)";
	        try {
	        	conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql); 
		            ps.setString(1, name); 
		            ps.setString(2, email); 
		            ps.setString(3, title); 
		            ps.setString(4, message); 
		            ps.executeUpdate();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		// xử lý đăng nhập
		public Account login(String user, String pass) {
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
		
		// xử lý đăng ký
		public Account checkAccount(String user) {
			String sql ="SELECT * \r\n"
					+ "FROM websitebangiay.account \r\n"
					+ "WHERE user = ?";
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, user);
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
		
		public void dangky(String user, String pass) {
			String sql = "INSERT INTO websitebangiay.account (user, pass, isSell, isAdmin)\r\n"
					+ "VALUES (?, ?, 0, 0);\r\n";
			
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, user);
				ps.setString(2, pass);
				ps.executeUpdate();
				
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		// trang sản phẩm
		public List<Product> getTrangSanPham(){
			List<Product> listallproduct = new ArrayList<>();
			String sql = "SELECT * \r\n"
					+ "FROM product \r\n"
					+ "ORDER BY productid DESC \r\n";
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();

				while(rs.next()) {
					listallproduct.add(new Product(rs.getInt(1),
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
			return listallproduct;
		}
		
		//category - trang san phẩm
		public List<Categories> getAllCategory(){
			List<Categories> listcategory = new ArrayList<>();
			String sql = "SELECT * FROM websitebangiay.categories";
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();

				while(rs.next()) {
					listcategory.add(new Categories(rs.getInt(1),
							rs.getString(2)));
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			return listcategory;
		}
		
		//Sản phẩm mới nhất:
		public List<Product> getSanphammoinhat(){
			List<Product> listsanphammoinhat = new ArrayList<>();
			String sql = "SELECT * \r\n"
					+ "FROM product \r\n"
					+ "ORDER BY productid DESC \r\n"
					+ "LIMIT 4";
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();

				while(rs.next()) {
					listsanphammoinhat.add(new Product(rs.getInt(1),
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
			return listsanphammoinhat;
		}
		
		// lọc sản phẩm - trang Sản phẩm 
		public List<Product> getProductByCID(String cid){
			List<Product> listlocsanpham = new ArrayList<>();
			String sql = "SELECT * FROM websitebangiay.product\r\n"
					+ "where categoryid = ? ";
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, cid);
				rs = ps.executeQuery();

				while(rs.next()) {
					listlocsanpham.add(new Product(rs.getInt(1),
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
			return listlocsanpham;
		}
		
		// lọc sản phẩm - trang sản phẩm giảm giá
				public List<Product> getProductggByCID(String cid){
					List<Product> listlocsanphamgg = new ArrayList<>();
					String sql = "SELECT * FROM websitebangiay.product\r\n"
							+ "where sale != 0 && categoryid = ?";
					try {
						conn = new DBContext().getConnection();
						ps = conn.prepareStatement(sql);
						ps.setString(1, cid);
						rs = ps.executeQuery();

						while(rs.next()) {
							listlocsanphamgg.add(new Product(rs.getInt(1),
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
					return listlocsanphamgg;
				}
		
		// lọc sản phẩm theo giá - trang sản phẩm
		public List<Product> getProductByPrice(BigDecimal minPrice, BigDecimal maxPrice) {
		    List<Product> listproductbyprice = new ArrayList<>();
		    String sql = "SELECT * FROM websitebangiay.product\r\n"
		    		+ "WHERE pricesale BETWEEN ? AND ?";

		    try {
		        conn = new DBContext().getConnection();
		        ps = conn.prepareStatement(sql);
		        ps.setBigDecimal(1, minPrice);
		        ps.setBigDecimal(2, maxPrice);
		        rs = ps.executeQuery();

		        while(rs.next()) {
		        	listproductbyprice.add(new Product(rs.getInt(1),
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
		        e.printStackTrace();
		    }
		    return listproductbyprice;
		}
		
		// lọc sản phẩm theo giá - trang sản phẩm giảm giá
		public List<Product> getProductggByPrice(BigDecimal minPrice, BigDecimal maxPrice) {
		    List<Product> listproductggbyprice = new ArrayList<>();
		    String sql = "SELECT * FROM websitebangiay.product\r\n"
		    		+ "WHERE sale!=0 && pricesale BETWEEN ? AND ?";

		    try {
		        conn = new DBContext().getConnection();
		        ps = conn.prepareStatement(sql);
		        ps.setBigDecimal(1, minPrice);
		        ps.setBigDecimal(2, maxPrice);
		        rs = ps.executeQuery();

		        while(rs.next()) {
		        	listproductggbyprice.add(new Product(rs.getInt(1),
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
		        e.printStackTrace();
		    }
		    return listproductggbyprice;
		}
		
		//Detail - chi tiết sản phẩm
		public Product getProductByPID(String productid){
			String sql = "SELECT * FROM websitebangiay.product\r\n"
					+ "where productid = ? ";
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, productid);
				rs = ps.executeQuery();

				while(rs.next()) {
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
			} catch (Exception e) {
				// TODO: handle exception
			}
			return null;
		}
		
		//Sản phẩm gợi ý
		public List<Product> getSanphamgoiy(String categoryid){
			List<Product> listsanphamgoiy = new ArrayList<>();
			String sql = "SELECT * FROM websitebangiay.product\r\n"
					+ "where categoryid = ?";
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, categoryid);
				rs = ps.executeQuery();

				while(rs.next()) {
					listsanphamgoiy.add(new Product(rs.getInt(1),
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
			return listsanphamgoiy;
		}
		
		// Trang tin tức
		public List<News> getTrangTinTuc(){
			List<News> listalltintuc = new ArrayList<>();
			String sql = "SELECT * FROM websitebangiay.news\r\n"
					+ "order by newsid desc\r\n"
					+ "limit 4";
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();

				while(rs.next()) {
					listalltintuc.add(new News(rs.getInt(1),
							rs.getString(2), 
							rs.getDate(3), 
							rs.getString(4), 
							rs.getString(5), 
							rs.getString(6)));
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			return listalltintuc;
		}
		
		// xử lý giỏ hàng
		public int createOrGetCart(int userid) {
			String checkCartSql = "SELECT cartid FROM Cart WHERE userid = ?";
			String createCartSQL = "INSERT INTO Cart (userid, date) VALUES (?, ?)";
			try {
				conn = new DBContext().getConnection();
				
				ps = conn.prepareStatement(checkCartSql);
				ps.setInt(1, userid);
				rs = ps.executeQuery();
				if (rs.next()) {
					return rs.getInt("cartid");
				}
			    
				ps = conn.prepareStatement(createCartSQL, PreparedStatement.RETURN_GENERATED_KEYS);
				ps.setInt(1, userid);
				ps.setDate(2, new java.sql.Date(System.currentTimeMillis()));
				ps.executeUpdate();

				rs = ps.getGeneratedKeys();
				if (rs.next()) {
					return rs.getInt(1);
				}
			        
			} catch (Exception e) {
				// TODO: handle exception
			}
			return -1;
		}
		
		public void addToCartItem(int cartid, int pid, int quantity) {
		    String checkItemSQL = "SELECT * FROM Cartitem WHERE cartid = ? AND productid = ?";
		    String updateQuantitySQL = "UPDATE Cartitem SET quantity = quantity + ? WHERE cartid = ? AND productid = ?";
		    String insertItemSQL = "INSERT INTO Cartitem (cartid, productid, quantity) VALUES (?, ?, ?)";

		    Connection conn = null;
		    PreparedStatement ps = null;
		    ResultSet rs = null;

		    try {
		        conn = new DBContext().getConnection();
		        conn.setAutoCommit(false);  // Start transaction

		        // Kiểm tra xem mặt hàng đã có trong giỏ chưa
		        ps = conn.prepareStatement(checkItemSQL);
		        ps.setInt(1, cartid);
		        ps.setInt(2, pid);
		        rs = ps.executeQuery();

		        if (rs.next()) {
		            // Nếu mặt hàng đã có, cập nhật số lượng
		            ps = conn.prepareStatement(updateQuantitySQL);
		            ps.setInt(1, quantity);  // Số lượng muốn thêm vào
		            ps.setInt(2, cartid);
		            ps.setInt(3, pid);
		            ps.executeUpdate();
		        } else {
		            // Nếu mặt hàng chưa có, thêm mặt hàng mới vào giỏ
		            ps = conn.prepareStatement(insertItemSQL);
		            ps.setInt(1, cartid);
		            ps.setInt(2, pid);
		            ps.setInt(3, quantity);
		            ps.executeUpdate();
		        }

		        conn.commit();  // Commit the transaction

		    } catch (SQLException e) {
		        if (conn != null) {
		            try {
		                conn.rollback();  // Rollback in case of error
		            } catch (SQLException se) {
		                se.printStackTrace();
		            }
		        }
		        e.printStackTrace();
		    }
		}

		// lấy giỏ hàng
		public List<Cartitem> getCartItems(int cartid) {
		    List<Cartitem> listcartItems = new ArrayList<>();
		    String sql = "SELECT c.cartitemid, c.cartid, c.productid, c.quantity, p.productname, p.pricesale, p.img "
		                 + "FROM cartitem c "
		                 + "JOIN product p ON c.productid = p.productid "
		                 + "WHERE c.cartid = ?";
		    try {
		        conn = new DBContext().getConnection();
		        ps = conn.prepareStatement(sql);
		        ps.setInt(1, cartid);
		        rs = ps.executeQuery();

		        while (rs.next()) {
		            Cartitem item = new Cartitem(
		                rs.getInt("cartitemid"),
		                rs.getInt("cartid"),
		                rs.getInt("productid"),  
		                rs.getInt("quantity"));

		            item.setProductname(rs.getString("productname"));
		            item.setPricesale(rs.getBigDecimal("pricesale"));
		            item.setImg(rs.getString("img"));

		            listcartItems.add(item);
		        }
		    } catch (SQLException e) {
		        e.printStackTrace(); 
		    }
		    return listcartItems;
		}
		
		// xóa giỏ hàng
		public boolean deleteCartItem(int cartitemid) {
		    String sql = "DELETE FROM cartitem WHERE cartitemid = ?";
		    try (Connection conn = new DBContext().getConnection();
		         PreparedStatement ps = conn.prepareStatement(sql)) {

		        ps.setInt(1, cartitemid);
		        int result = ps.executeUpdate();

		        return result > 0;
		    } catch (SQLException e) {
		        e.printStackTrace();
		        return false;
		    }
		}
	
		// cập nhất số lượng
		public boolean updateCartItem(Cartitem cartItem) {
		    String sql = "UPDATE cartitem SET quantity = ? WHERE cartitemid = ?";
		    try (Connection conn = new DBContext().getConnection();
		         PreparedStatement ps = conn.prepareStatement(sql)) {

		        ps.setInt(1, cartItem.getQuantity());
		        ps.setInt(2, cartItem.getCartitemid()); 

		        int result = ps.executeUpdate();
		        return result > 0;
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		    return false;
		}
		
		public Cartitem getCartItemByIdUD(int cartitemid) {
	        Cartitem item = null;
	        String sql = "SELECT * FROM cartitem WHERE cartitemid = ?";
	        
	        try (Connection conn = new DBContext().getConnection();
	             PreparedStatement ps = conn.prepareStatement(sql)) {
	             
	            ps.setInt(1, cartitemid);
	            ResultSet rs = ps.executeQuery();
	            
	            if (rs.next()) {
	                item = new Cartitem(
	                        rs.getInt("cartitemid"),
	                        rs.getInt("cartid"),
	                        rs.getInt("productid"),
	                        rs.getInt("quantity")
	                );
	                item.setProductname(rs.getString("productname"));
	                item.setPricesale(rs.getBigDecimal("pricesale"));
	                item.setImg(rs.getString("img"));
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return item;
	    }
		
		//trang giới thiệu
		public List<Gioithieu> getTrangGioithieu(){
			List<Gioithieu> listgioithieu = new ArrayList<>();
			String sql = "SELECT * FROM websitebangiay.gioithieu;";
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();

				while(rs.next()) {
					listgioithieu.add(new Gioithieu(rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4)));
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			return listgioithieu;
		}
		
		//Slide
				public List<Slide> getAllSlide(){
					List<Slide> listslide = new ArrayList<>();
					String sql = "SELECT * FROM websitebangiay.slide\r\n"
							+ "ORDER BY sid DESC \r\n"
							+ "LIMIT 3;\r\n"
							+ "";
					
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
				
				// Lấy tin tức theo id
				public News getNewsByID(String newsid){
					String sql = "SELECT * FROM websitebangiay.news\r\n"
							+ "where newsid = ? ";
					try {
						conn = new DBContext().getConnection();
						ps = conn.prepareStatement(sql);
						ps.setString(1, newsid);
						rs = ps.executeQuery();

						while(rs.next()) {
						return new News(rs.getInt(1),
								rs.getString(2),
								rs.getDate(3),
								rs.getString(4),
								rs.getString(5), 
								rs.getString(6));
						}
					} catch (Exception e) {
						// TODO: handle exception
					}
					return null;
				}
				
	//Trang giảm giá lớn
				public List<Product> getAllProductSale(){
					List<Product> listproductsale = new ArrayList<>();
					String sql = "SELECT * FROM websitebangiay.product WHERE sale != 0;";
					try {
						conn = new DBContext().getConnection();
						ps = conn.prepareStatement(sql);
						rs = ps.executeQuery();

						while(rs.next()) {
							listproductsale.add(new Product(rs.getInt(1),
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
					return listproductsale;
				}

	// xử lý đặt hàng
				//thêm vào bảng order
				public int addOrder(Order order) {
			        // Code để thêm đơn hàng vào bảng Order và trả về OrderID
			        String sql = "INSERT INTO websitebangiay.order (uid, uname, uphone, uaddress, date, sumprice, status, paymethod) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
			        
			        try (Connection conn = getConnection(); 
			             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
			            stmt.setInt(1, order.getUid());
			            stmt.setString(2, order.getUname());
			            stmt.setString(3, order.getUphone());
			            stmt.setString(4, order.getUaddress());
			            stmt.setDate(5, order.getDate());
			            stmt.setBigDecimal(6, order.getSumprice());
			            stmt.setString(7, order.getStatus());
			            stmt.setString(8, order.getPaymethod());

			            int rowsAffected = stmt.executeUpdate();
			            if (rowsAffected > 0) {
			                try (ResultSet rs = stmt.getGeneratedKeys()) {
			                    if (rs.next()) {
			                        return rs.getInt(1); // Trả về OrderID mới tạo
			                    }
			                }
			            }
			        } catch (SQLException e) {
			            e.printStackTrace();
			        }
			        return -1; // Trả về -1 nếu có lỗi
			    }

				
				//thêm vào bảng ordertail
				public void addOrderDetail(Orderdetail orderDetail) {
			        // Code để thêm chi tiết đơn hàng vào bảng OrderDetail
			        String sql = "INSERT INTO websitebangiay.orderdetail (oid, pid, quantity, cartprice) VALUES (?, ?, ?, ?)";

			        try (Connection conn = getConnection(); 
			             PreparedStatement stmt = conn.prepareStatement(sql)) {
			            stmt.setInt(1, orderDetail.getOid());
			            stmt.setInt(2, orderDetail.getPid());
			            stmt.setInt(3, orderDetail.getQuantity());
			            stmt.setBigDecimal(4, orderDetail.getCartprice());

			            stmt.executeUpdate();
			        } catch (SQLException e) {
			            e.printStackTrace();
			        }
			    }
				
				// xóa sản phẩm khỏi giỏ hàng
				public void clearCart(int userId) {
				    String sql = "DELETE FROM websitebangiay.cartitem WHERE cartid = (SELECT cartid FROM Cart WHERE userid = ?)";
				    
				    try (Connection conn = DBContext.getConnection();
				         PreparedStatement ps = conn.prepareStatement(sql)) {
				        ps.setInt(1, userId);
				        
				         ps.executeUpdate();       
				    } catch (SQLException e) {
				        e.printStackTrace();
				    }
				}

	// trang lịch sử đơn hàng
				// sản phẩm
				public List<Order> getOrder(int userid){
					List<Order> listorder = new ArrayList<>();
					String sql = "SELECT * FROM websitebangiay.order where uid=?\r\n"
							+ "ORDER BY oid DESC";
					try {
						conn = new DBContext().getConnection();
						ps = conn.prepareStatement(sql);
						ps.setInt(1, userid);
						rs = ps.executeQuery();

						while(rs.next()) {
							listorder.add(new Order(rs.getInt(1),
									rs.getInt(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getDate(6),
									rs.getBigDecimal(7),
									rs.getString(8),
									rs.getString(9)));
						}
					} catch (Exception e) {
						// TODO: handle exception
					}
					return listorder;
				}
	//tess dứ liệu
	public static void main(String[] args) {
		ProductDAO dao = new ProductDAO();
		List<Order> listorder = dao.getOrder(1);
		
		for (Order n : listorder) {
			System.out.println(n);
		}
	}
}

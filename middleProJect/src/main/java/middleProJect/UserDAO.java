package middleProJect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class UserDAO {
	Connection con = null; 
	PreparedStatement stmt = null; 
	ResultSet rs = null;
	//db ���� �Լ�
	public static Connection dbcon() {

		try {
			   String url = "jdbc:mysql://localhost:3306/user_infor";
			   String user = "root";
			   String pw = "111111";
			   Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(url, user, pw);
		}catch(Exception e) {

			e.printStackTrace();

		}

		return null;}
		//���� ���� db ���� �Լ�
	
	
	
	
			// ���̵� �ߺ� �˻縦 ���� �Լ� 
			public int joinCheck(String userID) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
			    String query = "select * from main WHERE userID = ?";
			    stmt = con.prepareStatement(query);
				stmt.setString(1, userID);
				rs = stmt.executeQuery();
					// �ߺ��� ���̵� ������ 1�� ��ȯ
					if (rs.next()) {
						return 1;
					} else { // ���̵� ������ 0 ��ȯ
						return 0;
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
				return -1;
			}
			// ���̵� �ߺ� �˻縦 ���� �Լ��� 
	
	
	
			
			
			
			
			// ȸ������� ���� �Լ� 
			public void joininsert(String userID,String userPassword,String age,String email,String name) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
				String query = "INSERT INTO main (userID,userPassword,age,Email,name) VALUES (?,?,?,?,?)";
				stmt = con.prepareStatement(query);
				stmt.setString(1,userID);
				stmt.setString(2,userPassword);
				stmt.setString(3,age);
				stmt.setString(4,email);
				stmt.setString(5,name);
				stmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
			}
			// ȸ������� ���� �Լ� ��
	
	
	
	
			// ȸ������ �� �̸��� �����´� �Լ�
			public String myinforname(String myuserID) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
			    String query = "select * from 529userinfor WHERE userID = ?";
			    stmt = con.prepareStatement(query);
				stmt.setString(1, myuserID);
				rs = stmt.executeQuery();
				while(rs.next()){
				String username = rs.getString(6);
				return username;}
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
				return "����";
			}
			// ȸ������ �� �̸��� �����´� �Լ� �� 
			
			
			// -ȸ������.jsp-ȸ������ �� �̸����� �����´� �Լ�
			public String myinforemail(String myuserID) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
			    String query = "select * from 529userinfor WHERE userID = ?";
			    stmt = con.prepareStatement(query);
				stmt.setString(1, myuserID);
				rs = stmt.executeQuery();
				while(rs.next()){
				String useremail = rs.getString(5);
				return useremail;}
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
				return "����";
			}
			// -ȸ������.jsp-ȸ������ �� �̸����� �����´� �Լ� �� 
			
			
			
			// -ȸ������.jsp-ȸ������ �� ���̸� �����´� �Լ�
			public String myinforage(String myuserID) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
			    String query = "select * from 529userinfor WHERE userID = ?";
			    stmt = con.prepareStatement(query);
				stmt.setString(1, myuserID);
				rs = stmt.executeQuery();
				while(rs.next()){
				String userage = rs.getString(4);
				return userage;}
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
				return "����";
			}
			// -ȸ������.jsp-ȸ������ �� ���̸� �����´� �Լ� �� 

			
			
			public String myinforimg(String myuserID) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
			    String query = "select * from 529userinfor WHERE userID = ?";
			    stmt = con.prepareStatement(query);
				stmt.setString(1, myuserID);
				rs = stmt.executeQuery();
				while(rs.next()){
				String userimg = rs.getString(7);
				return userimg;}
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
				return "����";
			}
			// -ȸ������.jsp-ȸ������ �� ���̸� �����´� �Լ� �� 
			
			
			
			//ȸ������.jsp-���� img text �ٲٴ� �Լ�
			public void Updateimg(String myuserID,String img) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
			    String query = "UPDATE 529userinfor SET IMG = ? WHERE userID = ?";
			    stmt = con.prepareStatement(query);
				stmt.setString(1, img);
				stmt.setString(2, myuserID);
				stmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
				
			}
			// -ȸ������.jsp-���� img text �ٲٴ� �Լ� 
			
			
			
			
			public void Updateinformation(String userID,String name,String Email,String age) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
			    String query = "UPDATE 529userinfor SET name =? , Email = ? , age = ? WHERE userID = ?";
			    stmt = con.prepareStatement(query);
				stmt.setString(1, name);
				stmt.setString(2, Email);
				stmt.setString(3, age);
				stmt.setString(4, userID);
				stmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
				
			}
			// -ȸ������.jsp-���� img text �ٲٴ� �Լ� 

			
			
			
			
				//����â ��� ��� �Լ�
				public void maincontents(String userID,String contents) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
				String query = "INSERT INTO 529table (userID,contents,autotime) VALUES (?,?,now())";
				stmt = con.prepareStatement(query);
				stmt.setString(1,userID);
				stmt.setString(2,contents);
				stmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
			}
				//����â ��� ��� �Լ� ��
				
				
				
			

				
				
				//529notice �� �߰� �Լ�
				public void noticeupdate(String userID,String description,String poto,String title) {
					try {
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "INSERT INTO 529notice (userID,description,counter,poto,title) VALUES (?,?,1,?,?)";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, userID);
					stmt.setString(2, description);
					stmt.setString(3, poto);
					stmt.setString(4, title);
					stmt.executeUpdate();
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					
				}
				//529notice �� �߰� �Լ�
				
				
				
				// -�����Խ���.jsp-�Խñ� �� ���� Ȯ�� �Լ�
				public int noticecount() {
					try {
					int noticenumber = 0;
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select count(*) from 529notice;";
				    stmt = con.prepareStatement(query);
					rs = stmt.executeQuery();
					while(rs.next()){
					noticenumber = rs.getInt(1);
					}
					return noticenumber;} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return 1;
				}
				// -�����Խ���.jsp-�Խñ� �� ���� Ȯ�� �Լ� ��
				
				
				
				//529Notice-id�� �ʱ�ȭ �Լ�
				public void Noticeorigin() {
				try {
            		Connection ccon = null; 
            		PreparedStatement pstmt = null; 
            		ResultSet rrs = null;
            		String urll = "jdbc:mysql://localhost:3306/user_infor";
            		String uuser = "root";
            		String ppw = "111111";
            		Class.forName("com.mysql.jdbc.Driver");
            		ccon = DriverManager.getConnection(urll, uuser, ppw);
            		
            		String sqll ="ALTER TABLE 529notice AUTO_INCREMENT=1";
            		pstmt = ccon.prepareStatement(sqll);
            		pstmt.executeUpdate();
            		String sqlll ="SET @COUNT = 0";
            		pstmt = ccon.prepareStatement(sqlll);
            		pstmt.executeUpdate();                		
            		String sqllll ="UPDATE 529notice SET id = @COUNT:=@COUNT+1";
            		pstmt = ccon.prepareStatement(sqllll);
            		pstmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
			}
				//529Notice-id�� �ʱ�ȭ �Լ�
				
			
				
				public int noticesearchcount(String search) {
					try {
						int searchtext =0;
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select count(*) from 529notice where description like ?;";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, search);
					rs = stmt.executeQuery();
					while(rs.next()){
					searchtext = rs.getInt(1);
					return searchtext;}
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return 1;
				}
				// -ȸ������.jsp-ȸ������ �� ���̸� �����´� �Լ� �� 

				
				
				// -�����Խ���_��������.jsp-ȸ������ �� ���̵��� �����´� �Լ�
				public String Noticedetail(String titlenumber) {
					try {
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select 529notice.id,529notice.userID,529userinfor.age,529userinfor.Email,529userinfor.IMG,529userinfor.name from 529notice INNER JOIN 529userinfor ON 529notice.userID = 529userinfor.userID where 529notice.id = ?";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, titlenumber);
					rs = stmt.executeQuery();
					while(rs.next()){
					String username= rs.getString(2);
					return username;}
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return "����";
				}
				// -�����Խ���_��������.jsp-ȸ������ �� ���̵��� �����´� �Լ� ��
				
				
				// -�����Խ���_��������.jsp-ȸ������ �� �̸��� �����´� �Լ�
				public String Noticedetailname(String titlenumber) {
					try {
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select 529notice.id,529notice.userID,529userinfor.age,529userinfor.Email,529userinfor.IMG,529userinfor.name from 529notice INNER JOIN 529userinfor ON 529notice.userID = 529userinfor.userID where 529notice.id = ?";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, titlenumber);
					rs = stmt.executeQuery();
					while(rs.next()){
					String username= rs.getString(6);
					return username;}
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return "����";
				}
				// -�����Խ���_��������.jsp-ȸ������ �� �̸��� �����´� �Լ� ��
				
				// -�����Խ���_��������.jsp-ȸ������ �� ������ �����´� �Լ�
				public String Noticedetailage(String titlenumber) {
					try {
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select 529notice.id,529notice.userID,529userinfor.age,529userinfor.Email,529userinfor.IMG,529userinfor.name from 529notice INNER JOIN 529userinfor ON 529notice.userID = 529userinfor.userID where 529notice.id = ?";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, titlenumber);
					rs = stmt.executeQuery();
					while(rs.next()){
					String userage= rs.getString(3);
					return userage;}
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return "����";
				}
				// -�����Խ���_��������.jsp-ȸ������ �� ������ �����´� �Լ� ��
				
				
				// -�����Խ���_��������.jsp-ȸ������ �� �̸����� �����´� �Լ�
				public String Noticedetailemail(String titlenumber) {
					try {
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select 529notice.id,529notice.userID,529userinfor.age,529userinfor.Email,529userinfor.IMG,529userinfor.name from 529notice INNER JOIN 529userinfor ON 529notice.userID = 529userinfor.userID where 529notice.id = ?";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, titlenumber);
					rs = stmt.executeQuery();
					while(rs.next()){
					String useremail= rs.getString(4);
					return useremail;}
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return "����";
				}
				// -�����Խ���_��������.jsp-ȸ������ �� �̸����� �����´� �Լ� ��
				
				
				// -�����Խ���_��������.jsp-ȸ������ �� ������ �����´� �Լ�
				public String Noticedetailimg(String titlenumber) {
					try {
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select 529notice.id,529notice.userID,529userinfor.age,529userinfor.Email,529userinfor.IMG,529userinfor.name from 529notice INNER JOIN 529userinfor ON 529notice.userID = 529userinfor.userID where 529notice.id = ?";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, titlenumber);
					rs = stmt.executeQuery();
					while(rs.next()){
					String userimg= rs.getString(5);
					return userimg;}
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return "����";
				}
				// -�����Խ���_��������.jsp-ȸ������ �� ������ �����´� �Լ� ��
				
				
				// -�����Խ���_��������.jsp-ȸ������ �� ������ �����´� �Լ�
				public String Noticetitle(String titlenumber) {
					try {
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select 529notice.id,529notice.userID,529userinfor.age,529userinfor.Email,529userinfor.IMG,529notice.title from 529notice INNER JOIN 529userinfor ON 529notice.userID = 529userinfor.userID where 529notice.id = ?";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, titlenumber);
					rs = stmt.executeQuery();
					while(rs.next()){
					String usertitle= rs.getString(6);
					return usertitle;}
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return "����";
				}
				// -�����Խ���_��������.jsp-ȸ������ �� ������ �����´� �Լ� ��
				
				// -�����Խ���_��������.jsp-ȸ������ �� �ð��� �����´� �Լ�
				public String Noticetime(String titlenumber) {
					try {
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select 529notice.id,529notice.userID,529userinfor.age,529userinfor.Email,529userinfor.IMG,529notice.title,529notice.time,529notice.counter from 529notice INNER JOIN 529userinfor ON 529notice.userID = 529userinfor.userID where 529notice.id = ?";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, titlenumber);
					rs = stmt.executeQuery();
					while(rs.next()){
					String usertime= rs.getString(7);
					return usertime;}
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return "����";
				}
				// -�����Խ���_��������.jsp-ȸ������ �� �ð��� �����´� �Լ� ��
				
				
				// -�����Խ���_��������.jsp-ȸ������ �� �ð��� �����´� �Լ�
				public String Noticecounter(String titlenumber) {
					try {
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select 529notice.id,529notice.userID,529userinfor.age,529userinfor.Email,529userinfor.IMG,529notice.title,529notice.time,529notice.counter from 529notice INNER JOIN 529userinfor ON 529notice.userID = 529userinfor.userID where 529notice.id = ?";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, titlenumber);
					rs = stmt.executeQuery();
					while(rs.next()){
					String usercounter= rs.getString(8);
					return usercounter;}
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return "����";
				}
				// -�����Խ���_��������.jsp-ȸ������ �� �ð��� �����´� �Լ� ��
				
				
				
				// -�����Խ���_��������.jsp-ȸ������ �� ������ �����´� �Լ�
				public String Noticedetaildescription(String titlenumber) {
					try {
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select 529notice.id,529notice.userID,529userinfor.age,529userinfor.Email,529userinfor.IMG,529userinfor.name,529notice.description from 529notice INNER JOIN 529userinfor ON 529notice.userID = 529userinfor.userID where 529notice.id = ?";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, titlenumber);
					rs = stmt.executeQuery();
					while(rs.next()){
					String userdescription= rs.getString(7);
					return userdescription;}
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return "����";
				}
				// -�����Խ���_��������.jsp-ȸ������ �� ������ �����´� �Լ� ��
				
				
				// -�����Խ���_��������.jsp-ȸ������ �� ���������� �����´� �Լ�
				public String Noticedetailpoto(String titlenumber) {
					try {
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select 529notice.poto from 529notice INNER JOIN 529userinfor ON 529notice.userID = 529userinfor.userID where 529notice.id = ?";
				    stmt = con.prepareStatement(query);
					stmt.setString(1, titlenumber);
					rs = stmt.executeQuery();
					while(rs.next()){
					String userpoto= rs.getString(1);
					return userpoto;}
					} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return "����";
				}
				// -�����Խ���_��������.jsp-ȸ������ �� ���������� �����´� �Լ� ��
				
				
				
				
				//�����Խ��� ��ȸ�� ���� �Լ�
				public void noticecounter(String titlenumber) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
				String query = "UPDATE 529notice SET counter = IFNULL(counter, 0) + 1 WHERE id= ?";
				stmt = con.prepareStatement(query);
				stmt.setString(1,titlenumber);
				stmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
			}
				//�����Խ��� ��ȸ�� ���� �Լ�
				
				
				
				
				//�����Խ���_��������_Ȯ��.jsp insert �Լ�
				public void NoticeDetail(String detailcontents,String page,String username) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
				String query = "INSERT INTO 529noticedetail (detailcontents,page,username) VALUES (?,?,?)";
				stmt = con.prepareStatement(query);
				stmt.setString(1,detailcontents);
				stmt.setString(2,page);
				stmt.setString(3,username);
				stmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
			}
				//�����Խ���_��������_Ȯ��.jsp insert �Լ� ��
				
				
				
				
				//�����Խ���_�۾��� �߰� ���� �Լ� 
				public void Freeinsert(String userid,String title,String contents,String IMG) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
				String query = "insert into 529freeboard (name,title,contents,counter,IMG) values (?,?,?,1,?)";
				stmt = con.prepareStatement(query);
				stmt.setString(1,userid);
				stmt.setString(2,title);
				stmt.setString(3,contents);
				stmt.setString(4,IMG);
				stmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
			}
				//�����Խ���_�۾��� �߰� ���� �Լ� ��
				
				
				
				
				// -�����Խ���.jsp-�Խñ� �� ���� Ȯ�� �Լ�
				public int Freeboardcount() {
					try {
					int noticenumber = 0;
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select count(*) from 529freeboard;";
				    stmt = con.prepareStatement(query);
					rs = stmt.executeQuery();
					while(rs.next()){
					noticenumber = rs.getInt(1);
					}
					return noticenumber;} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return 1;
				}
				// -�����Խ���.jsp-�Խñ� �� ���� Ȯ�� �Լ� ��
				
				
				// -�����Խ���.jsp-�Խñ� �� ���� Ȯ�� �Լ�
				public int Freeboardcountsearch(String search) {
					try {
					int noticenumber = 0;
					String url = "jdbc:mysql://localhost:3306/user_infor";
					String user = "root";
					String pw = "111111";
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, pw);
				    String query = "select count(*) from 529freeboard where title like ? ";
				    stmt = con.prepareStatement(query);
				    stmt.setString(1,'%'+search+'%');
					rs = stmt.executeQuery();
					while(rs.next()){
					noticenumber = rs.getInt(1);
					}
					return noticenumber;} catch (Exception e) {
						e.printStackTrace();
					}
					// ���� �߻� �� -1 ��ȯ
					return 1;
				}
				// -�����Խ���.jsp-�Խñ� �� ���� Ȯ�� �Լ� ��
				
				
				
				
}
	
	
	
	
	
	
	
	
	


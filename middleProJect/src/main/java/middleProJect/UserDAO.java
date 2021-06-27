package middleProJect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class UserDAO {
	Connection con = null; 
	PreparedStatement stmt = null; 
	ResultSet rs = null;
	//db 연결 함수
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
		//여기 까지 db 연결 함수
	
	
	
	
			// 아이디 중복 검사를 위한 함수 
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
					// 중복된 아이디가 있으면 1로 반환
					if (rs.next()) {
						return 1;
					} else { // 아이디 없으면 0 반환
						return 0;
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				// 오류 발생 시 -1 반환
				return -1;
			}
			// 아이디 중복 검사를 위한 함수끝 
	
	
	
			
			
			
			
			// 회원등록을 위한 함수 
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
				// 오류 발생 시 -1 반환
			}
			// 회원등록을 위한 함수 끝
	
	
	
	
			// 회원정보 중 이름을 가져온는 함수
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
				// 오류 발생 시 -1 반환
				return "오류";
			}
			// 회원정보 중 이름을 가져온는 함수 끝 
			
			
			// -회원정보.jsp-회원정보 중 이메일을 가져온는 함수
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
				// 오류 발생 시 -1 반환
				return "오류";
			}
			// -회원정보.jsp-회원정보 중 이메일을 가져온는 함수 끝 
			
			
			
			// -회원정보.jsp-회원정보 중 나이를 가져온는 함수
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
				// 오류 발생 시 -1 반환
				return "오류";
			}
			// -회원정보.jsp-회원정보 중 나이를 가져온는 함수 끝 

			
			
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
				// 오류 발생 시 -1 반환
				return "오류";
			}
			// -회원정보.jsp-회원정보 중 나이를 가져온는 함수 끝 
			
			
			
			//회원정보.jsp-유저 img text 바꾸는 함수
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
				// 오류 발생 시 -1 반환
				
			}
			// -회원정보.jsp-유저 img text 바꾸는 함수 
			
			
			
			
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
				// 오류 발생 시 -1 반환
				
			}
			// -회원정보.jsp-유저 img text 바꾸는 함수 

			
			
			
			
				//메인창 댓글 등록 함수
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
				// 오류 발생 시 -1 반환
			}
				//메인창 댓글 등록 함수 끝
				
				
				
			

				
				
				//529notice 글 추가 함수
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
					// 오류 발생 시 -1 반환
					
				}
				//529notice 글 추가 함수
				
				
				
				// -공지게시판.jsp-게시글 총 갯수 확인 함수
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
					// 오류 발생 시 -1 반환
					return 1;
				}
				// -공지게시판.jsp-게시글 총 갯수 확인 함수 끝
				
				
				
				//529Notice-id값 초기화 함수
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
				// 오류 발생 시 -1 반환
			}
				//529Notice-id값 초기화 함수
				
			
				
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
					// 오류 발생 시 -1 반환
					return 1;
				}
				// -회원정보.jsp-회원정보 중 나이를 가져온는 함수 끝 

				
				
				// -공지게시판_상세페이지.jsp-회원정보 중 아이디을 가져온는 함수
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
					// 오류 발생 시 -1 반환
					return "오류";
				}
				// -공지게시판_상세페이지.jsp-회원정보 중 아이디을 가져온는 함수 끝
				
				
				// -공지게시판_상세페이지.jsp-회원정보 중 이름을 가져온는 함수
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
					// 오류 발생 시 -1 반환
					return "오류";
				}
				// -공지게시판_상세페이지.jsp-회원정보 중 이름을 가져온는 함수 끝
				
				// -공지게시판_상세페이지.jsp-회원정보 중 나이을 가져온는 함수
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
					// 오류 발생 시 -1 반환
					return "오류";
				}
				// -공지게시판_상세페이지.jsp-회원정보 중 나이을 가져온는 함수 끝
				
				
				// -공지게시판_상세페이지.jsp-회원정보 중 이메일을 가져온는 함수
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
					// 오류 발생 시 -1 반환
					return "오류";
				}
				// -공지게시판_상세페이지.jsp-회원정보 중 이메일을 가져온는 함수 끝
				
				
				// -공지게시판_상세페이지.jsp-회원정보 중 사진을 가져온는 함수
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
					// 오류 발생 시 -1 반환
					return "오류";
				}
				// -공지게시판_상세페이지.jsp-회원정보 중 사진을 가져온는 함수 끝
				
				
				// -공지게시판_상세페이지.jsp-회원정보 중 제목을 가져온는 함수
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
					// 오류 발생 시 -1 반환
					return "오류";
				}
				// -공지게시판_상세페이지.jsp-회원정보 중 제목을 가져온는 함수 끝
				
				// -공지게시판_상세페이지.jsp-회원정보 중 시간을 가져온는 함수
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
					// 오류 발생 시 -1 반환
					return "오류";
				}
				// -공지게시판_상세페이지.jsp-회원정보 중 시간을 가져온는 함수 끝
				
				
				// -공지게시판_상세페이지.jsp-회원정보 중 시간을 가져온는 함수
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
					// 오류 발생 시 -1 반환
					return "오류";
				}
				// -공지게시판_상세페이지.jsp-회원정보 중 시간을 가져온는 함수 끝
				
				
				
				// -공지게시판_상세페이지.jsp-회원정보 중 나이을 가져온는 함수
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
					// 오류 발생 시 -1 반환
					return "오류";
				}
				// -공지게시판_상세페이지.jsp-회원정보 중 나이을 가져온는 함수 끝
				
				
				// -공지게시판_상세페이지.jsp-회원정보 중 사진정보를 가져온는 함수
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
					// 오류 발생 시 -1 반환
					return "오류";
				}
				// -공지게시판_상세페이지.jsp-회원정보 중 사진정보를 가져온는 함수 끝
				
				
				
				
				//공지게시판 조회수 증가 함수
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
				// 오류 발생 시 -1 반환
			}
				//공지게시판 조회수 증가 함수
				
				
				
				
				//공지게시판_상세페이지_확인.jsp insert 함수
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
				// 오류 발생 시 -1 반환
			}
				//공지게시판_상세페이지_확인.jsp insert 함수 끝
				
				
				
				
				//자유게시판_글쓰기 추가 증가 함수 
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
				// 오류 발생 시 -1 반환
			}
				//자유게시판_글쓰기 추가 증가 함수 끝
				
				
				
				
				// -공지게시판.jsp-게시글 총 갯수 확인 함수
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
					// 오류 발생 시 -1 반환
					return 1;
				}
				// -공지게시판.jsp-게시글 총 갯수 확인 함수 끝
				
				
				// -공지게시판.jsp-게시글 총 갯수 확인 함수
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
					// 오류 발생 시 -1 반환
					return 1;
				}
				// -공지게시판.jsp-게시글 총 갯수 확인 함수 끝
				
				
				
				
}
	
	
	
	
	
	
	
	
	


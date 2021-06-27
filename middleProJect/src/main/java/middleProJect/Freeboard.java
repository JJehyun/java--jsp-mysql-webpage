package middleProJect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Freeboard {
	Connection con = null; 
	PreparedStatement stmt = null; 
	ResultSet rs = null;
	//db ���� �Լ�
	public void Freeboard() {}
	// -ȸ������.jsp-ȸ������ �� �̸����� �����´� �Լ�
	public String Freeuser(String titlenumber) {
		try {
		String url = "jdbc:mysql://localhost:3306/user_infor";
		String user = "root";
		String pw = "111111";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pw);
	    String query = "select * from 529freeboard WHERE id = ?";
	    stmt = con.prepareStatement(query);
		stmt.setString(1, titlenumber);
		rs = stmt.executeQuery();
		while(rs.next()){
		String useremail = rs.getString(2);
		return useremail;}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ���� �߻� �� -1 ��ȯ
		return "����";
	}
	// -ȸ������.jsp-ȸ������ �� �̸����� �����´� �Լ� �� 
	
	
	
	// -ȸ������.jsp-ȸ������ �� �̸��� �����´� �Լ�
	public String Freeusername(String titlenumber) {
		try {
		String url = "jdbc:mysql://localhost:3306/user_infor";
		String user = "root";
		String pw = "111111";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pw);
	    String query = "select * from 529freeboard INNER JOIN 529userinfor ON 529freeboard.name = 529userinfor.userID where 529freeboard.id = ?";
	    stmt = con.prepareStatement(query);
		stmt.setString(1, titlenumber);
		rs = stmt.executeQuery();
		while(rs.next()){
		String useremail = rs.getString(13);
		return useremail;}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ���� �߻� �� -1 ��ȯ
		return "����";
	}
	// -ȸ������.jsp-ȸ������ �� �̸��� �����´� �Լ� �� 
	
	
	// -ȸ������.jsp-ȸ������ �� ������ �����´� �Լ�
	public String Freeage(String titlenumber) {
		try {
		String url = "jdbc:mysql://localhost:3306/user_infor";
		String user = "root";
		String pw = "111111";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pw);
	    String query = "select * from 529freeboard INNER JOIN 529userinfor ON 529freeboard.name = 529userinfor.userID where 529freeboard.id = ?";
	    stmt = con.prepareStatement(query);
		stmt.setString(1, titlenumber);
		rs = stmt.executeQuery();
		while(rs.next()){
		String useremail = rs.getString(11);
		return useremail;}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ���� �߻� �� -1 ��ȯ
		return "����";
	}
	// -ȸ������.jsp-ȸ������ �� ������ �����´� �Լ� �� 
	
	
	// -ȸ������.jsp-ȸ������ �� ������ �����´� �Լ�
	public String Freeimg(String titlenumber) {
		try {
		String url = "jdbc:mysql://localhost:3306/user_infor";
		String user = "root";
		String pw = "111111";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pw);
	    String query = "select * from 529freeboard INNER JOIN 529userinfor ON 529freeboard.name = 529userinfor.userID where 529freeboard.id = ?";
	    stmt = con.prepareStatement(query);
		stmt.setString(1, titlenumber);
		rs = stmt.executeQuery();
		while(rs.next()){
		String useremail = rs.getString(14);
		return useremail;}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ���� �߻� �� -1 ��ȯ
		return "����";
	}
	// -ȸ������.jsp-ȸ������ �� ������ �����´� �Լ� �� 
	
	
	// -ȸ������.jsp-ȸ������ �� �̸����� �����´� �Լ�
	public String Freeemail(String titlenumber) {
		try {
		String url = "jdbc:mysql://localhost:3306/user_infor";
		String user = "root";
		String pw = "111111";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pw);
	    String query = "select * from 529freeboard INNER JOIN 529userinfor ON 529freeboard.name = 529userinfor.userID where 529freeboard.id = ?";
	    stmt = con.prepareStatement(query);
		stmt.setString(1, titlenumber);
		rs = stmt.executeQuery();
		while(rs.next()){
		String useremail = rs.getString(12);
		return useremail;}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ���� �߻� �� -1 ��ȯ
		return "����";
	}
	// -ȸ������.jsp-ȸ������ �� �̸����� �����´� �Լ� �� 
	
	
	
	
	// -ȸ������.jsp-ȸ������ �� ������ �����´� �Լ�
	public String freetitle(String titlenumber) {
		try {
		String url = "jdbc:mysql://localhost:3306/user_infor";
		String user = "root";
		String pw = "111111";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pw);
	    String query = "select * from 529freeboard where id = ?";
	    stmt = con.prepareStatement(query);
		stmt.setString(1, titlenumber);
		rs = stmt.executeQuery();
		while(rs.next()){
		String useremail = rs.getString(3);
		return useremail;}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ���� �߻� �� -1 ��ȯ
		return "����";
	}
	// -ȸ������.jsp-ȸ������ �� ������ �����´� �Լ� �� 
	
	
	
	// -ȸ������.jsp-ȸ������ �� �ð��� �����´� �Լ�
	public String freetime(String titlenumber) {
		try {
		String url = "jdbc:mysql://localhost:3306/user_infor";
		String user = "root";
		String pw = "111111";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pw);
	    String query = "select * from 529freeboard where id = ?";
	    stmt = con.prepareStatement(query);
		stmt.setString(1, titlenumber);
		rs = stmt.executeQuery();
		while(rs.next()){
		String useremail = rs.getString(6);
		return useremail;}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ���� �߻� �� -1 ��ȯ
		return "����";
	}
	// -ȸ������.jsp-ȸ������ �� �ð��� �����´� �Լ� �� 
	
	// -ȸ������.jsp-ȸ������ �� ��ȸ���� �����´� �Լ�
	public String freecounter(String titlenumber) {
		try {
		String url = "jdbc:mysql://localhost:3306/user_infor";
		String user = "root";
		String pw = "111111";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pw);
	    String query = "select * from 529freeboard where id = ?";
	    stmt = con.prepareStatement(query);
		stmt.setString(1, titlenumber);
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
	// -ȸ������.jsp-ȸ������ �� ��ȸ���� �����´� �Լ� �� 
	
	
	
	// -ȸ������.jsp-ȸ������ �� ������ �����´� �Լ�
	public String freecontents(String titlenumber) {
		try {
		String url = "jdbc:mysql://localhost:3306/user_infor";
		String user = "root";
		String pw = "111111";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pw);
	    String query = "select * from 529freeboard where id = ?";
	    stmt = con.prepareStatement(query);
		stmt.setString(1, titlenumber);
		rs = stmt.executeQuery();
		while(rs.next()){
		String useremail = rs.getString(4);
		return useremail;}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ���� �߻� �� -1 ��ȯ
		return "����";
	}
	// -ȸ������.jsp-ȸ������ �� ������ �����´� �Լ�
	
	
	
	
	
	//�����Խ��� ��ȸ�� ���� �Լ�
	public void Freecounter(String titlenumber) {
	try {
	String url = "jdbc:mysql://localhost:3306/user_infor";
	String user = "root";
	String pw = "111111";
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(url, user, pw);
	String query = "UPDATE 529freeboard SET counter = IFNULL(counter, 0) + 1 WHERE id= ?";
	stmt = con.prepareStatement(query);
	stmt.setString(1,titlenumber);
	stmt.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	// ���� �߻� �� -1 ��ȯ
}
	//�����Խ��� ��ȸ�� ���� �Լ�
	
	
	
	// ������ �����´� �Լ�
	public String freeboardimg(String titlenumber) {
		try {
		String url = "jdbc:mysql://localhost:3306/user_infor";
		String user = "root";
		String pw = "111111";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pw);
	    String query = "select * from 529freeboard where id = ?";
	    stmt = con.prepareStatement(query);
		stmt.setString(1, titlenumber);
		rs = stmt.executeQuery();
		while(rs.next()){
		String useremail = rs.getString(7);
		return useremail;}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ���� �߻� �� -1 ��ȯ
		return "����";
	}
	
	// ������ �����´� �Լ�
	
	
	
	//529freeddetail �� �߰� �Լ�
	public void Freedetailinsert(String nameID,String contents,String connect) {
		try {
		String url = "jdbc:mysql://localhost:3306/user_infor";
		String user = "root";
		String pw = "111111";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pw);
	    String query = "INSERT INTO 529freeboarddetail(user,contents,connect) VALUES (?,?,?)";
	    stmt = con.prepareStatement(query);
		stmt.setString(1, nameID);
		stmt.setString(2, contents);
		stmt.setString(3, connect);
		stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ���� �߻� �� -1 ��ȯ
		
	}
	//529freeddetail �� �߰� �Լ� ��
	
	
	
	
	
				//�����Խ��� ��ȸ�� ���� �Լ�
				public void Freedetaildelete(String titlenumber) {
				try {
				String url = "jdbc:mysql://localhost:3306/user_infor";
				String user = "root";
				String pw = "111111";
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pw);
				String query = "DELETE FROM 529freeboarddetail where id =?";
				stmt = con.prepareStatement(query);
				stmt.setString(1,titlenumber);
				stmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
				// ���� �߻� �� -1 ��ȯ
			}
				//�����Խ��� ��ȸ�� ���� �Լ�
	
}

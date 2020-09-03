package exercise3_2018_2019_8160112;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * UserDAO provides all the necessary methods related to user's.
 * Use JDBC API in order to connect the the database and store/retrieve users etc.
 *
 * @author --your fullname here--
 *
 */
public class UserDAOYouSporos {

	/**
	 * This method returns a List with all Users
	 *
	 * @return List<User>
	 */
	public List<User> getUsers() throws Exception
	{

				Connection con = null;
				DB db = new DB();

				PreparedStatement stmt1 = null;
				String sql1 = "SELECT * FROM users_2018_ex3_8160112;";
				List<User> users = new ArrayList<User>();
				ResultSet rs = null;


				try
				{
					con = db.getConnection();
					stmt1 = con.prepareStatement(sql1);
					rs = stmt1.executeQuery();

					while (rs.next())
					{
						users.add(new User(rs.getString("name"),rs.getString("surname"),rs.getString("email"),rs.getString("username"),rs.getString("password")));
					}

					rs.close();
					stmt1.close();
					db.close();

				}
				catch(Exception e)
				{
					System.out.println(e.getMessage());
				}
				finally
				{
					if (db!=null)
					{
						db.close();
					}
				}

			return users;

	} //End of getUsers

	/**
	 * Search user by username
	 *
	 * @param username, String
	 * @return User, the User object
	 * @throws Exception, if user not found
	 */
	public User findUser(String username) throws Exception
	{

			Connection con = null;
			DBYourSporos db = new DBYourSporos();

			PreparedStatement stmt2 = null;
			String sql2 = "SELECT * FROM users_2018_ex3_8160112 where username=?;";
			ResultSet rs = null;

			try
			{
				con = db.getConnection();
				stmt2 = con.prepareStatement(sql2);
				stmt2.setString(1,username);
				rs = stmt2.executeQuery();
				int k=1;
				User user1;

				while (rs.next())
				{
					if (rs.getString("username").equals(username))
					{
						user1=new User(rs.getString("name"),rs.getString("surname"),rs.getString("email"),rs.getString("username"),rs.getString("password"));
						return user1;
					}
				}

				rs.close();
				stmt2.close();
				db.close();

			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
			finally
			{
				if (db!=null)
				{
					db.close();
				}
			}
		return null;

	} //End of findUser

	/**
	 * Checks if the credentials are valid.
	 *
	 * @param username, String
	 * @param password, String
	 * @throws Exception, if the credentials are not valid
	 */
	public void authenticate(String username, String password) throws Exception
	{

					Connection con = null;
					DBYourSporos db = new DBYourSporos();

					PreparedStatement stmt3 = null;
					String sql3 = "SELECT * FROM users_2018_ex3_8160112 where username=? AND password=?;";
					ResultSet rs = null;

					try
					{
						con = db.getConnection();
						stmt3 = con.prepareStatement(sql3);
						stmt3.setString(1,username);
						stmt3.setString(2,password);
						rs = stmt3.executeQuery();
						int k=1;

						while (rs.next())
						{
							if (rs.getString("username").equals(username) && rs.getString("password").equals(password))
							{
								return;
							}
						}

						rs.close();
						stmt3.close();
						db.close();

						throw new Exception("Wrong username or password");

					}
					catch(Exception e)
					{
						System.out.println(e.getMessage());
					}
					finally
					{
						if (db!=null)
						{
							db.close();
						}
					}
	} //End of authenticate

	/**
	 * Register/create a User to the database.
	 *
	 * @param user, User
	 * @throws Exception, if encounter any error.
	 */
	public void registerUser(User user) throws Exception
	{

				Connection con = null;
				DBYourSporos db = new DBYourSporos();

				String sql4= "INSERT INTO users_2018_ex3_8160112 (name,surname,email,username,password) "  + " VALUES (?, ?, ?, ?, ?);";
				PreparedStatement stmt4 = null;

				try
				{
					con = db.getConnection();
					stmt4 = con.prepareStatement(sql4);
					stmt4.setString(1, user.getName());
					stmt4.setString(2, user.getSurname());
					stmt4.setString(3, user.getEmail());
					stmt4.setString(4, user.getUsername());
					stmt4.setString(5, user.getPassword());

					stmt4.executeUpdate();

					stmt4.close();
					db.close();

				}
				catch(Exception e)
				{
					System.out.println(e.getMessage());
				}
				finally
				{
					if (db!=null)
					{
						db.close();
					}
				}
	} //End of registerUser

} //End of class
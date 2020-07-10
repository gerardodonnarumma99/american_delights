package model;

import java.sql.SQLException;
import java.util.Collection;

public interface UserDAO {

	public void doSave(UserBean user) throws SQLException;
	
	public boolean isUsername(String username) throws SQLException;

	public UserBean doRetrieveByKey(String username, String password) throws SQLException;
	
	public Collection<UserBean> doRetrieveAll() throws SQLException;
}

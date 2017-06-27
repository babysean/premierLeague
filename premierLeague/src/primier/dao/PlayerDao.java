package primier.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import primier.util.SqlSessionFactoryManager;

public class PlayerDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public PlayerDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}

}
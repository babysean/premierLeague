package premier.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import premier.bean.PlayerBean;
import premier.util.SqlSessionFactoryManager;
public class PlayerDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public PlayerDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public SqlSessionFactory getFactory() {
		return sqlSessionFactory;
	}

	public List<PlayerBean> selectAllPlayer(){
		return sqlSessionFactory.openSession().selectList("selectAllPlayer");
	}
	
	public PlayerBean selectOnePlayer(String playerNo){
		return sqlSessionFactory.openSession().selectOne("selectOnePlayer", playerNo);
	}
}
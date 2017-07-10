package premier.dao;

import java.io.Closeable;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import premier.bean.PlayerBean;
import premier.util.SqlSessionFactoryManager;

public class PlayerDao {
	private SqlSessionFactory sqlSessionFactory;

	public PlayerDao() {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}

	public SqlSessionFactory getFactory() {
		return sqlSessionFactory;
	}

	// close
	private void closeSqlSession(Closeable c) {
		try {
			if (c != null)
				c.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<PlayerBean> selectAllPlayer() {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectAllPlayer");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}

	public PlayerBean selectOnePlayer(String playerNo) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession(); 
			return sqlSession.selectOne("selectOnePlayer", playerNo);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
}
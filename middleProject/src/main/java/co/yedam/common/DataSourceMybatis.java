package co.yedam.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DataSourceMybatis {
	
	private static SqlSessionFactory sqlSessionFactory;
	
<<<<<<< HEAD
	private DataSourceMybatis() {
	}

	public static SqlSessionFactory getInstance() {
		String resource = "config/mybatis-config.xml";
<<<<<<< HEAD
		InputStream inputStream = null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		
=======
		InputStream inputStream=null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
>>>>>>> refs/heads/1
		return sqlSessionFactory;
	}
}
=======
	private  DataSourceMybatis() {}
	
	public static SqlSessionFactory getInstance() {
		String resource = "config/mybatis-config.xml";
		InputStream inputStream = null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		
		return sqlSessionFactory;
	}
	
}
>>>>>>> refs/heads/4

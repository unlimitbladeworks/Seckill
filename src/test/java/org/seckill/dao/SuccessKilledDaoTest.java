package org.seckill.dao;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.entity.SuccessKilled;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class SuccessKilledDaoTest {

	//实现Dao层的依赖注入
	@Resource
	private SuccessKilledDao successKilledDao;
	
	@Test
	public void testIntsertSuccessKilled() {
		/**
		 * 第一次：insertCount=1
		 * 第二次：insertCount=0
		 */
		long id =1000l;
		long phone = 131213147080l;
		int insertCount = successKilledDao.intsertSuccessKilled(id,phone);
		System.out.println("insertCount=" + insertCount);
	}

	@Test
	public void testQueryByIdWithSeckill() {
		
		long id =1000l;
		long phone = 131213147080l;
		SuccessKilled successKilled = successKilledDao.queryByIdWithSeckill(id, phone);
		System.out.println(successKilled);
		System.out.println(successKilled.getSeckill());
	
	}

}

package com.java.aboutjeju.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.java.aboutjeju.dto.AboutjejuDto;

@Component
public class AboutjejuDaoImp implements AboutjejuDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int insert(AboutjejuDto aboutjejuDto) {
		
		return sqlSessionTemplate.insert("insert");
	}

	

}

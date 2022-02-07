package com.java.aboutjeju.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.java.aboutjeju.dto.AboutjejuDto;
import com.java.aop.LogAspect;

@Component
public class AboutjejuDaoImp implements AboutjejuDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int LMinsert(AboutjejuDto aboutjejuDto) {
		
		return sqlSessionTemplate.insert("LMinsert",aboutjejuDto);
	}

	@Override
	public List<AboutjejuDto> IRead(String introduction) {
		
		//원하는 카테고리의 목록보기 가능
		LogAspect.logger.info(LogAspect.LogMsg+introduction);
		return sqlSessionTemplate.selectList("IRead",introduction);	
		
	}
	@Override
	public List<AboutjejuDto>Lread(String location) {
	
		//원하는 카테고리의 목록보기 가능
		return sqlSessionTemplate.selectOne("LRead",location);
	}
	@Override
	public List<AboutjejuDto> Sread(String speciality) {
		
		return sqlSessionTemplate.selectOne("SRead",speciality);	//원하는 카테고리의 목록보기 가능
	}

	
	@Override
	public List<AboutjejuDto>Aread(String activites) {
		
		//원하는 카테고리의 목록보기 가능
		return sqlSessionTemplate.selectOne("ARead",activites);	
	}

	

}

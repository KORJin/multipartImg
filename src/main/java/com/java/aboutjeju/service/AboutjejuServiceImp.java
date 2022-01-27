package com.java.aboutjeju.service;

import java.io.File;
import java.io.UncheckedIOException;
import java.util.HashMap;
import java.util.Map;

import javax.naming.directory.SchemaViolationException;
import javax.servlet.http.HttpServletRequest;
import javax.sql.rowset.JoinRowSet;

import org.aspectj.internal.lang.annotation.ajcDeclareAnnotation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.java.aboutjeju.dao.AboutjejuDao;
import com.java.aboutjeju.dto.AboutjejuDto;
import com.java.aop.LogAspect;
import com.java.img.dto.ImgDto;

@Component
public class AboutjejuServiceImp implements AboutjejuService {
	@Autowired
	private AboutjejuDao aboutjejuDao;

	@Override
	public void writeOk(ModelAndView mav) {
		String category="LM";
		Map<String, Object> map=mav.getModel();
		AboutjejuDto aboutjejuDto = (AboutjejuDto) map.get("aboutjejuDto");
		//img 단ㅋ
		ImgDto imgDto =(ImgDto) map.get("ImgDto");
		MultipartHttpServletRequest request = (MultipartHttpServletRequest) map.get("request");
		MultipartFile upFile =request.getFile("file");
		
		aboutjejuDto.getLMlatitude(); //Y
		aboutjejuDto.getLMlongitude(); //X
		
		LogAspect.logger.info(LogAspect.LogMsg+aboutjejuDto.toString());
		
		if(upFile.getSize() !=0) {
			String Iname=upFile.getOriginalFilename()+aboutjejuDto.getLMnumber();
			long Isize=upFile.getSize();
			LogAspect.logger.info(LogAspect.LogMsg+Iname+","+Isize);
			// 경로 확인해야함
			File path = new File("/img");
			path.mkdir();
			
			if(path.exists()&&path.isDirectory()) {
				File file = new File(path,Iname);
				try {
					upFile.transferTo(file);
					
					imgDto.setIpath(file.getAbsolutePath());
					imgDto.setIname(Iname);
					imgDto.setIsize(Isize);
					imgDto.setIcategory(aboutjejuDto.getLMcategory());
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		int check=aboutjejuDao.insert(aboutjejuDto);
		LogAspect.logger.info(LogAspect.LogMsg+check);
		LogAspect.logger.info(LogAspect.LogMsg+aboutjejuDto.toString());
		mav.addObject("check",check);
		mav.setViewName("aboutjeju/writeOk");
	}
	
}
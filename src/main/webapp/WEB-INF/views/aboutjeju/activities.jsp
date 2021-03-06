<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdoutJEJU</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${root}/resources/css/aboutjeju/activities.css">
</head>
<body>
    <div>
        <div id="title"><a>AboutJEJU</a></div>
        <div id="menuF">
            <div id="category">
                <div id="detail" style="border-left: 0px;"></div>
                <div id="detail"><a href="${root}/aboutjeju/introduction.do">Introduction</a></div>
                <div id="detail"><a  href="${root}/aboutjeju/location.do">Location</a></div>
                <div id="detail"><a  href="${root}/aboutjeju/speciality.do">Speciality</a></div>
                <div id="detail" style="border-right: 0px;"><a href="${root}/aboutjeju/activities.do">Activities</a></div>
                <div id="detail" style="height: 600px; border-left: 0px; border-bottom: 0px;"></div>              
            </div>
            <div id="content">
                <div style="border : 2px black solid; width: 1175px; height: 640px; margin-top: 40px;margin-left: 40px;">
	                <!-- 왼쪽 사진들 -->
					<div id="hiking">
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[0].iname}"/>
							
							<a id="sectext" style="width:149px;height:30px;">${Ilist[0].lMtitle}</a>
						</div>
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[1].iname}"/>
							
							<a id="thimgtext" style="width:149px;height:30px;">${Ilist[1].lMtitle}</a>					
						</div>
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[2].iname}"/>
							
							<a id="fortext" style="width:149px;height:30px;">${Ilist[2].lMtitle}</a>
						</div>
					</div>
						<!-- 가운데 큰 글씨 -->
					<div id="activity">
						<div id="act1">
							<div id="color1">
								<a>${Ilist[4].lMcontent}</a>
							</div>
							<div>
								<a>${Ilist[5].lMcontent}</a>
							</div>
						</div>
						
						<div id="act2">
							<label>Activities</label>
						</div>
						
						<div id="act3">
							<div id="color2">
								<img width="200px" height="150px" alt="" src="${root}/img/${Ilist[4].iname}"/>
							</div>
							<div>
								<img width="200px" height="150px" alt="" src="${root}/img/${Ilist[5].iname}"/>
							</div>
						</div>
					</div>
						
					<div id="leisure">
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[6].iname}"/>
							<a id="fatext" style="width:149px;height:30px;">${Ilist[6].lMtitle}</a>
						</div>
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[7].iname}"/>
							<a id="sixtext" style="width:149px;height:30px;">${Ilist[7].lMtitle}</a>
						</div>
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[3].iname}"/>
							<a id="sentext" style="width:149px;height:30px;">${Ilist[3].lMtitle}</a>
						</div>
					</div>
	                         
	            </div>
            </div>
        </div>
    </div>
</body>
</html>
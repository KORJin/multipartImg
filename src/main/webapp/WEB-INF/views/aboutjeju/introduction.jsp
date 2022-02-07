<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdoutJEJU</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${root}/resources/css/aboutjeju/introduction.css">
<script type="text/javascript">
	/* jquery(document).ready(function(){
		var iname = jQuery('#mainimg').attr("src")
	}); */
</script>
</head>
<body>
 <form class="form-style" action="${root}/aboutjeju/wirteOK" method="get" enctype="multipart/form-data">
	  <div>
        <div id="title"><a>About JEJU</a></div>
        <div id="menuF">
            <div id="category">
                <div id="detail" style="border-left: 0px;"></div>
                <div id="detail" style="border-right: 0px;"><a href="${root}/aboutjeju/introduction.do">Introduction</a></div>
                <div id="detail"><a href="${root}/aboutjeju/location.do">Location</a></div>
                <div id="detail"><a href="${root}/aboutjeju/speciality.do">Speciality</a></div>
                <div id="detail"><a href="${root}/aboutjeju/activities.do">Activities</a></div>
                <div id="detail" style="height: 600px; border-left: 0px; border-bottom: 0px;"></div>              
            </div>
            <div id="content">
                <div style="border : 2px black solid; width: 1175px; height: 640px; margin-top: 40px;margin-left: 40px; overflow: hidden;">
					<!-- 왼쪽 큰 사진 -->
					<div style="border : 1px black solid; width: 590px; height: 590px; margin-top: 20px;margin-left: 20px; float: left;">
						<img id="mainimg" alt="" src="${root}/img/${Ilist[0].iname" onclick="btnClick(${Ilist}, 0)"/>
					</div>
					<!-- 오른쪽 3개 사진 -->
					<div id="imgsize" style="margin-right: 30px;"> 
						<img id="secimg" alt="" src="${root}/img/${Ilist[1].iname}" onclick="btnClick(${Ilist}, 1)"/>
						<a id="sectext" style="width:149px;height:30px;">${Ilist[1].lMtitle}</a>
				</div>
					<div id="imgsize" >
						<img id="thimg" alt="" src="${root}/img/${Ilist[2].iname}" onclick="btnClick(${Ilist}, 2)"/> 
						<a id="thimgtext" style="width:149px;height:30px;">${Ilist[2].lMtitle}</a> 
					</div>
					<div id="imgsize" > 
						<img id="forimg" alt="" src="${root}/img/${Ilist[3].iname}" onclick="btnClick(${Ilist}, 3)"/>
						<a id="fortext" style="width:149px;height:30px;"> ${Ilist[3].lMtitle} </a>
					</div>
					<!-- 긴 텍스트 -->
					<div id="texts">
						<a id="longtext" style="width:200px;height:200px;">${list[0].lMcontent }</a> 
					</div>
                </div>
            </div>
        </div>
    </div>
   </form>
   <!-- 자바스크립트 만들기 -->
   <div style="azimuth: inherit;"></div>
</body>
</html>
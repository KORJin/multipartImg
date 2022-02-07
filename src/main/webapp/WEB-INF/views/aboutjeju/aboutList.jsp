<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 리스트</title>
</head>
<body>
	<div>
		<div id="title"> 
        	<h4>Aboutjeju${Ilist[0].LMcategory}</h4>
    	</div>
		<div><img alt="sazin" src="${root}/img/${Ilist[0].Iname}"/></div>
		<div>
			<div id="LMtitle">${Ilist[0].LMtitle}</div> 
			<div id="LMcontent">${Ilist[0].LMcontent}</div>
		</div>
		<div>
			<div id="kakaomap">
				
				<script type="text/javascript">
	                	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	                	mapOption = { 
	                	    center: new kakao.maps.LatLng(33.365637, 126.526605), // 지도의 중심좌표
	                	    level: 9 // 지도의 확대 레벨
	                	};
	                	//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	                	var map = new kakao.maps.Map(mapContainer, mapOption); 
                	</script>
                	<c:if test="${Count != 0}">
                	<c:forEach var="restaurnat" items="${RestaurnatList}">
                		<script>
                			//alert(${Count});
                			var lat = parseFloat(${aboutjejuDto.LMlatitude}); //바꾸기
                			var lon = parseFloat(${aboutjejuDto.LMlongitude});
                			//alert("위도" + lat + "경도" + lon);
                			var ${aboutjejuDto.LMtitle} = new kakao.maps.Marker({
                		    map: map, 
                		    position: new kakao.maps.LatLng(lat, lon)
                			});
                			
                			// 커스텀 오버레이에 표시할 컨텐츠 입니다
                			// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
                			// 별도의 이벤트 메소드를 제공하지 않습니다 
                			var content = '<div class="wrap">' + 
                			            '    <div class="info">' + 
                			            '        <div class="title">' + 
                			            '           ${restaurnat.RTname}' + 
                			            '            <div class="close" onclick="closeOverlay(overlay${restaurnat.RTnumber})" title="닫기"></div>' + 
                			            '        </div>' + 
                			            '        <div class="body">' + 
                			            '            <div class="img">' +
                			            '                <img src="${root}/resources/img/고양이.jfif" width="73" height="70">' +
                			            '           </div>' + 
                			            '            <div class="desc">' + 
                			            '                <div class="ellipsis">${restaurnat.RTintroduce}</div>' + 
                			            '                <div class="jibun ellipsis">${restaurnat.RTaddress}</div>' + 
                			            '                <div><a href="#" target="_blank" class="link">가게페이지</a></div>' + 
                			            '            </div>' + 
                			            '        </div>' + 
                			            '    </div>' +    
                			            '</div>';
                			// 마커 위에 커스텀오버레이를 표시합니다
                			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
                			var overlay${aboutjeju.LMnumber} = new kakao.maps.CustomOverlay({
                			    content: content,
                			    map: map,
                			    position: ${aboutjeju.LMnumber}.getPosition()       
                			});
                			
                			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
                			kakao.maps.event.addListener($aboutjeju.LMnumber}, 'click', function() {
                				overlay${restaurnat.RTnumber}.setMap(map);
                			});
                			closeOverlay(overlay${aboutjeju.LMnumber);
	                	</script>
                	</c:forEach>
                	</c:if>
			</div>
		</div>
	</div>
</body>
</html>
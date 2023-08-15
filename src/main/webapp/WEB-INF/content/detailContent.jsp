<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>
$.ajax({
	type:'get',
	url:'https://apis.data.go.kr/B551011/KorService1/detailIntro1?MobileOS=ETC&MobileApp=AppTest&_type=json&contentId='+${contentid}+'&contentTypeId='+${contenttypeid}+'&serviceKey=ASFMkt7oBR3EQtEzt2OHaPCqKJcrsqtwQVcbkNzSEB5d4xFv10CRJdwfBQUCRIj54jwEwBm3si2evB%2FlGXj4vQ%3D%3D',
	dataType: "json",
	success:function(result){
		console.log(result);
		
		//관광지 : 12
		if(${contenttypeid}==12){
			$("#contentinfo").append("주소:"+"${addr}"+"<br>"+"이름:"+"${title}"+"<br>");
			if(result.response.body.items.item[0].expguide!=""){
				$("#contentinfo").append("소개:"+result.response.body.items.item[0].expguide+"<br>");
			}
			if(result.response.body.items.item[0].infocenter!=""){
				$("#contentinfo").append("전화번호:"+result.response.body.items.item[0].infocenter+"<br>");	
			}
			if(result.response.body.items.item[0].opendate!=""){
				$("#contentinfo").append("개장일:"+result.response.body.items.item[0].opendate+"<br>");	
			}
			if(result.response.body.items.item[0].restdate!=""){
				$("#contentinfo").append("쉬는일:"+result.response.body.items.item[0].restdate+"<br>");	
			}
			if(result.response.body.items.item[0].useseason!=""){
				$("#contentinfo").append("개장시즌:"+result.response.body.items.item[0].useseason+"<br>");	
			}
			if(result.response.body.items.item[0].usetime!=""){
				$("#contentinfo").append("사용시간:"+result.response.body.items.item[0].usetime+"<br>");	
			}
		}
		//문화시설 : 14
		else if(${contenttypeid}==14){
			$("#contentinfo").append("주소:"+"${addr}"+"<br>"+"이름:"+"${title}"+"<br>");
			if(result.response.body.items.item[0].accomcountculture!=""){
				$("#contentinfo").append("수용인원:"+result.response.body.items.item[0].accomcountculture+"<br>");		
			}
			if(result.response.body.items.item[0].infocenterculture!=""){
				$("#contentinfo").append("전화번호:"+result.response.body.items.item[0].infocenterculture+"<br>");		
			}
			if(result.response.body.items.item[0].parkingculture!=""){
				$("#contentinfo").append("주차여부:"+result.response.body.items.item[0].parkingculture+"<br>");		
			}
			if(result.response.body.items.item[0].parkingfee!=""){
				$("#contentinfo").append("주차요금:"+result.response.body.items.item[0].parkingfee+"<br>");		
			}
			if(result.response.body.items.item[0].restdateculture!=""){
				$("#contentinfo").append("쉬는날:"+result.response.body.items.item[0].restdateculture+"<br>");		
			}
			if(result.response.body.items.item[0].scale!=""){
				$("#contentinfo").append("규모:"+result.response.body.items.item[0].scale+"<br>");		
			}
			if(result.response.body.items.item[0].spendtime!=""){
				$("#contentinfo").append("사용시간:"+result.response.body.items.item[0].spendtime+"<br>");		
			}	
			if(result.response.body.items.item[0].usefee!=""){
				$("#contentinfo").append("이용요금:"+result.response.body.items.item[0].usefee+"<br>");		
			}
			if(result.response.body.items.item[0].usetimeculture!=""){
				$("#contentinfo").append("공연시간:"+result.response.body.items.item[0].usetimeculture+"<br>");		
			}
			
		}
		//축제공연행서 : 15
		else if(${contenttypeid}==15){
			$("#contentinfo").append("주소:"+"${addr}"+"<br>"+"이름:"+"${title}"+"<br>");
			if(result.response.body.items.item[0].eventplace!=""){
				$("#contentinfo").append("축제장소:"+result.response.body.items.item[0].eventplace+"<br>");		
			}
			if(result.response.body.items.item[0].eventstartdate!=""){
				$("#contentinfo").append("축제시작일:"+result.response.body.items.item[0].eventstartdate+"<br>");		
			}
			if(result.response.body.items.item[0].eventenddate!=""){
				$("#contentinfo").append("축제마지막일:"+result.response.body.items.item[0].eventenddate+"<br>");		
			}
			if(result.response.body.items.item[0].playtime!=""){
				$("#contentinfo").append("축제기간:"+result.response.body.items.item[0].playtime+"<br>");		
			}
			if(result.response.body.items.item[0].placeinfo!=""){
				$("#contentinfo").append("축제장소정보:"+result.response.body.items.item[0].placeinfo+"<br>");		
			}
			if(result.response.body.items.item[0].eventhomepage!=""){
				$("#contentinfo").append("축제홈페이지:"+result.response.body.items.item[0].eventhomepage+"<br>");		
			}
			if(result.response.body.items.item[0].program!=""){
				$("#contentinfo").append("축제정보:"+result.response.body.items.item[0].program+"<br>");		
			}
			if(result.response.body.items.item[0].eventhomepage!=""){
				$("#contentinfo").append("축제홈페이지:"+result.response.body.items.item[0].eventhomepage+"<br>");		
			}
			if(result.response.body.items.item[0].usetimefestival!=""){
				$("#contentinfo").append("축제비용/시간:"+result.response.body.items.item[0].usetimefestival+"<br>");		
			}
			
		}
		//여행코스 : 25
		else if(${contenttypeid}==25){
			$("#contentinfo").append("주소:"+"${addr}"+"<br>"+"이름:"+"${title}"+"<br>");
			if(result.response.body.items.item[0].infocentertourcourse!=""){
				$("#contentinfo").append("여행코스:"+result.response.body.items.item[0].infocentertourcourse+"<br>");		
			}
			if(result.response.body.items.item[0].distance!=""){
				$("#contentinfo").append("거리:"+result.response.body.items.item[0].distance+"<br>");		
			}
			if(result.response.body.items.item[0].taketime!=""){
				$("#contentinfo").append("예상소요시간:"+result.response.body.items.item[0].taketime+"<br>");		
			}
			if(result.response.body.items.item[0].schedule!=""){
				$("#contentinfo").append("예상스케줄:"+result.response.body.items.item[0].schedule+"<br>");		
			}
		}
		//레포츠 : 28
		else if(${contenttypeid}==28){
			$("#contentinfo").append("주소:"+"${addr}"+"<br>"+"이름:"+"${title}"+"<br>");
			if(result.response.body.items.item[0].infocenterleports!=""){	
				$("#contentinfo").append("전화번호:"+result.response.body.items.item[0].infocenterleports+"<br>");
			}
			if(result.response.body.items.item[0].openperiod!=""){	
				$("#contentinfo").append("기간:"+result.response.body.items.item[0].openperiod+"<br>");
			}
			if(result.response.body.items.item[0].parkingleports!=""){	
				$("#contentinfo").append("주차여부:"+result.response.body.items.item[0].parkingleports+"<br>");
			}
			if(result.response.body.items.item[0].parkingfeeleports!=""){	
				$("#contentinfo").append("주차요금:"+result.response.body.items.item[0].parkingfeeleports+"<br>");
			}
			if(result.response.body.items.item[0].reservation!=""){	
				$("#contentinfo").append("예약:"+result.response.body.items.item[0].reservation+"<br>");
			}
			if(result.response.body.items.item[0].restdateleports!=""){	
				$("#contentinfo").append("쉬는날:"+result.response.body.items.item[0].restdateleports+"<br>");
			}
			if(result.response.body.items.item[0].restdateleports!=""){	
				$("#contentinfo").append("쉬는날:"+result.response.body.items.item[0].restdateleports+"<br>");
			}
			if(result.response.body.items.item[0].scaleleports!=""){	
				$("#contentinfo").append("규모:"+result.response.body.items.item[0].scaleleports+"<br>");
			}
			if(result.response.body.items.item[0].usefeeleports!=""){	
				$("#contentinfo").append("요금:"+result.response.body.items.item[0].usefeeleports+"<br>");
			}
			if(result.response.body.items.item[0].usetimeleports!=""){	
				$("#contentinfo").append("소요시간:"+result.response.body.items.item[0].usetimeleports+"<br>");
			}
		}
		//숙박 : 32
		else if(${contenttypeid}==32){
			$("#contentinfo").append("주소:"+"${addr}"+"<br>"+"이름:"+"${title}"+"<br>");
			if(result.response.body.items.item[0].accomcountlodging!=""){
				$("#contentinfo").append("숙박시설:"+result.response.body.items.item[0].accomcountlodging+"<br>");
			}
			if(result.response.body.items.item[0].roomcount!=""){
				$("#contentinfo").append("방 수:"+result.response.body.items.item[0].roomcount+"<br>");
			}
			if(result.response.body.items.item[0].roomtype!=""){
				$("#contentinfo").append("타입:"+result.response.body.items.item[0].roomtype+"<br>");
			}
			if(result.response.body.items.item[0].infocenterlodging!=""){
				$("#contentinfo").append("전화번호:"+result.response.body.items.item[0].infocenterlodging+"<br>");
			}
			if(result.response.body.items.item[0].checkintime!=""){
				$("#contentinfo").append("체크인시간:"+result.response.body.items.item[0].checkintime+"<br>");
			}
			if(result.response.body.items.item[0].checkouttime!=""){
				$("#contentinfo").append("체크아웃시간:"+result.response.body.items.item[0].checkouttime+"<br>");
			}
			if(result.response.body.items.item[0].parkinglodging!=""){
				$("#contentinfo").append("주차공간:"+result.response.body.items.item[0].parkinglodging+"<br>");
			}
			if(result.response.body.items.item[0].reservationlodging!=""){
				$("#contentinfo").append("예약:"+result.response.body.items.item[0].reservationlodging+"<br>");
			}
			if(result.response.body.items.item[0].reservationurl!=""){
				$("#contentinfo").append("예약홈페이지:"+result.response.body.items.item[0].reservationurl+"<br>");
			}
		}
		//쇼핑 : 38
		else if(${contenttypeid}==38){
			$("#contentinfo").append("주소:"+"${addr}"+"<br>"+"이름:"+"${title}"+"<br>");
			if(result.response.body.items.item[0].saleitem!=""){	
				$("#contentinfo").append("판매물품:"+result.response.body.items.item[0].saleitem+"<br>");
			}
			if(result.response.body.items.item[0].fairday!=""){
				$("#contentinfo").append("영업시간:"+result.response.body.items.item[0].fairday+"<br>");
			}
			if(result.response.body.items.item[0].opentime!=""){
				$("#contentinfo").append("이용시간:"+result.response.body.items.item[0].opentime+"<br>");
			}
			if(result.response.body.items.item[0].restdateshopping!=""){
				$("#contentinfo").append("휴점일:"+result.response.body.items.item[0].restdateshopping+"<br>");
			}
			if(result.response.body.items.item[0].infocentershopping!=""){
				$("#contentinfo").append("전화번호:"+result.response.body.items.item[0].infocentershopping+"<br>");
			}
			if(result.response.body.items.item[0].parkingshopping!=""){
				$("#contentinfo").append("주차여부:"+result.response.body.items.item[0].parkingshopping+"<br>");
			}
		}
		//음식점 : 39
		else if(${contenttypeid}==39){
			$("#contentinfo").append("주소:"+"${addr}"+"<br>"+"이름:"+"${title}"+"<br>");
			if(result.response.body.items.item[0].firstmenu!=""){	
				$("#contentinfo").append("추천메뉴:"+result.response.body.items.item[0].firstmenu+"<br>");
			}
			if(result.response.body.items.item[0].treatmenu!=""){	
				$("#contentinfo").append("전체메뉴:"+result.response.body.items.item[0].treatmenu+"<br>");
			}
			if(result.response.body.items.item[0].infocenterfood!=""){	
				$("#contentinfo").append("전화번호:"+result.response.body.items.item[0].infocenterfood+"<br>");
			}
			if(result.response.body.items.item[0].opentimefood!=""){	
				$("#contentinfo").append("운영시간:"+result.response.body.items.item[0].opentimefood+"<br>");
			}
			if(result.response.body.items.item[0].packing!=""){	
				$("#contentinfo").append("주차여부:"+result.response.body.items.item[0].packing+"<br>");
			}
			if(result.response.body.items.item[0].restdatefood!=""){	
				$("#contentinfo").append("쉬는날:"+result.response.body.items.item[0].restdatefood+"<br>");
			}
			if(result.response.body.items.item[0].seat!=""){	
				$("#contentinfo").append("좌석:"+result.response.body.items.item[0].seat+"<br>");
			}
			if(result.response.body.items.item[0].packing!=""){	
				$("#contentinfo").append("주차여부:"+result.response.body.items.item[0].packing+"<br>");
			}
			
		}
		//데이터 에러
		else{
			$("#contentinfo").append("죄송합니다. 에러가 발생하였습니다. 새로고침이나 뒤로가기를 눌러주세요.");
		}
	}
});
</script>

	

<form method="post" action="contact.php" id="contactform">
	<div class="form">
	    <div class="six columns noleftmargin">
			<h1>상세정보</h1>
				<br>
				<input type="text" name="name" class="smoothborder" value="${title}" style="width:400px"/>
		</div>
	<br>
		<jsp:include page="/WEB-INF/content/contentMap.jsp"/>
	<br>
	<img src="${firstimage}">		
	<br><br>		
		<div id="contentinfo" style="border-style:solid;width:900px;height:300px;font-weight:bold;font-size:15px">
		
		</div>			
	</div>
</form>	
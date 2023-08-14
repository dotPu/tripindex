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
			
		}
		//문화시설 : 14
		else if(${contenttypeid}==14){
			
		}
		//축제공연행서 : 15
		else if(${contenttypeid}==15){
			
		}
		//여행코스 : 25
		else if(${contenttypeid}==25){
			
		}
		//레포츠 : 28
		else if(${contenttypeid}==28){
			
		}
		//숙박 : 32
		else if(${contenttypeid}==32){
			
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
			
		}
		//데이터 에러
		else{
			
		}
	}
});
</script>

<form method="post" action="contact.php" id="contactform">
	<div class="form">
	    <div class="six columns noleftmargin">
			<h1>상세정보</h1>
				<input type="text" name="name" class="smoothborder" value="${title}" style="width:400px"/>
		</div>
	<br>
	<img src="${firstimage}">		
	<br><br>		
		<div id="contentinfo" style="border:1px solid red;width:900px;height:500px">
		
		</div>			
	</div>
</form>	
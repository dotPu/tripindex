<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script>
var locationtext;
const randomnum1 = Math.floor(Math.random()*(11-1)+1);
var totalCount;

if(randomnum1 == 1){
	locationtext = 1;
}
else if(randomnum1 == 2){
	locationtext = 2;
}
else if(randomnum1 == 3){
	locationtext = 31;
}
else if(randomnum1 == 4){
	locationtext = 32;
}
else if(randomnum1 == 5){
	locationtext = 33;
}
else if(randomnum1 == 6){
	locationtext = 34;
}
else if(randomnum1 == 7){
	locationtext = 35;
}
else if(randomnum1 == 8){
	locationtext = 36;
}
else if(randomnum1 == 9){
	locationtext = 37;
}
else if(randomnum1 == 10){
	locationtext = 38;
}
else {
	locationtext = 39;
}

$.ajax({
	type:'get',
	url:'https://apis.data.go.kr/B551011/KorService1/areaBasedList1?numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json&areaCode='+locationtext+'&serviceKey=ASFMkt7oBR3EQtEzt2OHaPCqKJcrsqtwQVcbkNzSEB5d4xFv10CRJdwfBQUCRIj54jwEwBm3si2evB%2FlGXj4vQ%3D%3D',
	dataType: "json",
	success:function(result){
		console.log(result.response.body.items.item);
		//console.log(result.response.body.totalCount);
		//console.log(typeof(result.response.body.totalCount));
		
		totalCount = Math.floor(Math.random()*(((result.response.body.totalCount/10)-10)-1)+1);	
		console.log(totalCount);
		
		$.ajax({
			type:'get',
			url:'https://apis.data.go.kr/B551011/KorService1/areaBasedList1?numOfRows=10&pageNo='+totalCount+'&MobileOS=ETC&MobileApp=AppTest&_type=json&areaCode='+locationtext+'&serviceKey=ASFMkt7oBR3EQtEzt2OHaPCqKJcrsqtwQVcbkNzSEB5d4xFv10CRJdwfBQUCRIj54jwEwBm3si2evB%2FlGXj4vQ%3D%3D',
			dataType: "json",
			success:function(result){
				for(var i=0; i<3; i++){
					$.("#cardtitle"+(i+1)).text(result.response.body.items.item[i].title)
					$.("#cardcontent"+(i+1)).text(result.response.body.items.item[i].addr1)
					
				}
			}
		});
		
		
	}
});
</script> 


<div class="row">
	<div class="twelve columns">
		<div class="centersectiontitle">
			<h4>이런곳은 어떠세요?</h4>
		</div>
	</div>
	<div class="four columns">
		<h5 id="cardtitle1"></h5>
		<p id="cardcontent1">
		
		</p>
		<p>
			<a href="#" class="readmore">바로가기</a>
		</p>
	</div>
	<div class="four columns">
		<h5 id="cardtitle2"></h5>
		<p id="cardcontent2">
			 
		</p>
		<p>
			<a href="#" class="readmore">바로가기</a>
		</p>
	</div>
	<div class="four columns">
		<h5 id="cardtitle3"></h5>
		<p id="cardcontent3">
		
		</p>
		<p>
			<a href="#" class="readmore">바로가기</a>
		</p>
	</div>
</div>
<div class="hr">
</div>
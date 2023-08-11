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
				for(var i=0; i<10; i++){
					if(result.response.body.items.item[i].firstimage==""){
						$("#slideimg"+(i+1)).attr("src","/img/notimg.png");
					}
					else{
						$("#slideimg"+(i+1)).attr("src",result.response.body.items.item[i].firstimage);
					}
				}
			}
		});
		
		
	}
});
</script>    
    
    
<div id="ei-slider" class="ei-slider">
	<ul class="ei-slider-large">
		<li>
		<img src="/img/notimg.png" alt="image01" class="responsiveslide" id="slideimg1">
		<div class="ei-title">
			<h2>Dare to</h2>
			<h3>꿈</h3>
		</div>
		</li>
		<li>
		<img src="/img/notimg.png" alt="image02" class="responsiveslide" id="slideimg2">
		<div class="ei-title">
			<h2>Dare to</h2>
			<h3>희망</h3>
		</div>
		</li>
		<li>
		<img src="/img/notimg.png" alt="image03" class="responsiveslide" id="slideimg3">
		<div class="ei-title">
			<h2>Dare to</h2>
			<h3>웃음</h3>
		</div>
		</li>
		<li>
		<img src="/img/notimg.png" alt="image04" class="responsiveslide" id="slideimg4">
		<div class="ei-title">
			<h2>Dare to</h2>
			<h3>청춘</h3>
		</div>
		</li>
		<li>
		<img src="/img/notimg.png" alt="image05" class="responsiveslide" id="slideimg5">
		<div class="ei-title">
			<h2>Dare to</h2>
			<h3>설레임</h3>
		</div>
		</li>
		<li>
		<img src="/img/notimg.png" alt="image06" class="responsiveslide" id="slideimg6">
		<div class="ei-title">
			<h2>Dare to</h2>
			<h3>새로움</h3>
		</div>
		</li>
		<li>
		<img src="/img/notimg.png" alt="image07" class="responsiveslide"  id="slideimg7">
		<div class="ei-title">
			<h2>Dare to</h2>
			<h3>가족</h3>
		</div>
		</li>
		<li>
		<img src="/img/notimg.png" alt="image08" class="responsiveslide"  id="slideimg8">
		<div class="ei-title">
			<h2>Dare to </h2>
			<h3>사랑</h3>
		</div>
		</li>
		<li>
		<img src="/img/notimg.png" alt="image09" class="responsiveslide" id="slideimg9">
		<div class="ei-title">
			<h2>Dare to</h2>
			<h3>선물</h3>
		</div>
		</li>
		<li>
		<img src="/img/notimg.png" alt="image10" class="responsiveslide" id="slideimg10">
		<div class="ei-title">
			<h2>Dare to</h2>
			<h3>삶</h3>
		</div>
		</li>
	</ul>
	<!-- slider-thumbs -->
	<ul class="ei-slider-thumbs">
		<li class="ei-slider-element">Current</li>
		<li><a href="#">Slide 1</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb01"/></li>
		<li><a href="#">Slide 2</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb02"/></li>
		<li><a href="#">Slide 3</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb03"/></li>
		<li><a href="#">Slide 4</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb04"/></li>
		<li><a href="#">Slide 5</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb05"/></li>
		<li><a href="#">Slide 6</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb06"/></li>
		<li><a href="#">Slide 7</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb07"/></li>
		<li><a href="#">Slide 8</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb08"/></li>
		<li><a href="#">Slide 9</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb09"/></li>
		<li><a href="#">Slide 10</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb10"/></li>
	</ul>
</div>
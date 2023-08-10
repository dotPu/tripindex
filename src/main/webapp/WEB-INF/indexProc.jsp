<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>
	
	var locationtext;
	const randomnum1 = Math.floor(Math.random()*(10-1)+1);

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
	else {
		locationtext = 38;
	}
	
	$.ajax({
		type:'get',
		url:'https://apis.data.go.kr/B551011/KorService1/areaBasedList1?numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json&areaCode='+locationtext+'&serviceKey=ASFMkt7oBR3EQtEzt2OHaPCqKJcrsqtwQVcbkNzSEB5d4xFv10CRJdwfBQUCRIj54jwEwBm3si2evB%2FlGXj4vQ%3D%3D',
		dataType: "json",
		success:function(result){
			
			$.ajax({
				type:'post',
				url:'/indexProc',
				contentType: 'application/json',
	    		dataType: 'json',
	    		data: JSON.stringify(result.response.body.items.item),
	    		success:function(){
	    			
	    		}
			});
			
		}
	});
</script>
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
		$("#textareainfo").text(result.response.body.items.item)
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
	<textarea name="comment" class="smoothborder ctextarea" rows="14" placeholder="상세정보" id="textareainfo"></textarea>
					
	</div>
</form>	
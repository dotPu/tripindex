<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script>
var totalCount;

$.ajax({
	type:'get',
	url:'https://apis.data.go.kr/B551011/KorService1/areaBasedList1?numOfRows=9&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json&contentTypeId='+${contentTypeId}+'&serviceKey=ASFMkt7oBR3EQtEzt2OHaPCqKJcrsqtwQVcbkNzSEB5d4xFv10CRJdwfBQUCRIj54jwEwBm3si2evB%2FlGXj4vQ%3D%3D',
	dataType: "json",
	success:function(result){
		console.log(result)
		totalCount = Math.ceil(result.response.body.totalCount/9)
		location.href="/kindSearch?contentTypeId="+${contentTypeId}+"&currentPage="+${currentPage}+"&totalCount="+totalCount;
	}
});
</script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script>
var totalCount;
var keyword = '${keyword}';
$.ajax({
	type:'get',
	url:'https://apis.data.go.kr/B551011/KorService1/searchKeyword1?MobileOS=etc&MobileApp=app&_type=json&keyword='+keyword+'&serviceKey=ASFMkt7oBR3EQtEzt2OHaPCqKJcrsqtwQVcbkNzSEB5d4xFv10CRJdwfBQUCRIj54jwEwBm3si2evB%2FlGXj4vQ%3D%3D',
	dataType: "json",
	success:function(result){
		console.log(result)
		totalCount = Math.ceil(result.response.body.totalCount/9)
		location.href="/keywordSearch?keyword="+keyword+"&currentPage="+${currentPage}+"&totalCount="+totalCount;
	}
});
</script>

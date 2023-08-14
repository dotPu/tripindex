<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script>
$.ajax({
	type:'get',
	url:'https://apis.data.go.kr/B551011/KorService1/areaBasedList1?numOfRows=9&pageNo='+${currentPage}+'&MobileOS=ETC&MobileApp=AppTest&_type=json&areaCode='+${areaCode}+'&serviceKey=ASFMkt7oBR3EQtEzt2OHaPCqKJcrsqtwQVcbkNzSEB5d4xFv10CRJdwfBQUCRIj54jwEwBm3si2evB%2FlGXj4vQ%3D%3D',
	dataType: "json",
	success:function(result){
		console.log(result);		
		for(var i=0; i<9; i++){
			$("#title"+(i+1)).text(result.response.body.items.item[i].title)
			$("#content"+(i+1)).text(result.response.body.items.item[i].addr1)
			$("#detailinfo"+(i+1)).attr("href", "/detailContent?contentid="+result.response.body.items.item[i].contentid+"&contenttypeid="+result.response.body.items.item[i].contenttypeid+"&firstimage="+result.response.body.items.item[i].firstimage+"&addr="+result.response.body.items.item[i].addr1+" "+result.response.body.items.item[i].addr2+"&title="+result.response.body.items.item[i].title);
		}
	}
});
</script>

<div class="row">
	<div class="twelve columns noleftmargin">
        <!-- MAIN CONTENT -->	
		<div class="eight columns noleftmargin">
			<div class="four columns">
				<div class="boxblog">
					<h5 id="title1"></h5>
					<p class="small date" id="content1">
					
					</p>
					<p>
						<a href="#" class="small continue" id="detailinfo1">상세정보 보러가기</a>
					</p>
				</div>
			</div>
			<div class="four columns">
				<div class="boxblog">
					<h5 id="title2"></h5>
					<p class="small date" id="content2">
					
					</p>
					<p>
						<a href="#" class="small continue" id="detailinfo2">상세정보 보러가기</a>
					</p>
				</div>
			</div>
			<div class="four columns">
				<div class="boxblog">
					<h5 id="title3"></h5>
					<p class="small date"  id="content3">
					
					</p>
					<p>
						<a href="#" class="small continue" id="detailinfo3">상세정보 보러가기</a>
					</p>
				</div>
			</div>
			<div class="four columns">
				<div class="boxblog">
					<h5 id="title4"></h5>
					<p class="small date"  id="content4">
					
					</p>
					<p>
						<a href="#" class="small continue" id="detailinfo4">상세정보 보러가기</a>
					</p>
				</div>
			</div>
			<div class="four columns">
				<div class="boxblog">
					<h5 id="title5"></h5>
					<p class="small date" id="content5">
					
					</p>
					<p>
						<a href="#" class="small continue" id="detailinfo5">상세정보 보러가기</a>
					</p>
				</div>
			</div>
			<div class="four columns">
				<div class="boxblog">
					<h5 id="title6"></h5>
					<p class="small date" id="content6">
					
					</p>
					<p>
						<a href="#" class="small continue" id="detailinfo6">상세정보 보러가기</a>
					</p>
				</div>
			</div>
			<div class="four columns">
				<div class="boxblog">
					<h5 id="title7"></h5>
					<p class="small date" id="content7">
					
					</p>
					<p>
						<a href="#" class="small continue" id="detailinfo7">상세정보 보러가기</a>
					</p>
				</div>
			</div>
			<div class="four columns">
				<div class="boxblog">
					<h5 id="title8"></h5>
					<p class="small date" id="content8">
					
					</p>
					<p>
						<a href="#" class="small continue" id="detailinfo8">상세정보 보러가기</a>
					</p>
				</div>
			</div>
			<div class="four columns">
				<div class="boxblog">
					<h5 id="title9"></h5>
					<p class="small date" id="content9">
					
					</p>
					<p>
						<a href="#" class="small continue" id="detailinfo9">상세정보 보러가기</a>
					</p>
				</div>
			</div>
			<ul class="pagination">
				<li class="arrow unavailable"><a href='areaSearchTotalCount?areaCode=${areaCode}&currentPage=${prev-9}'>&laquo;</a></li>
				<c:forEach var="pno" begin="${startPage}" end="${lastPage}" step="1">
				<li><a href='areaSearchTotalCount?areaCode=${areaCode}&currentPage=${pno}'>${pno}</a></li>
				</c:forEach>
				<li class="arrow"><a href='areaSearchTotalCount?areaCode=${areaCode}&currentPage=${next}'>&raquo;</a></li>
			</ul>
		</div>
		<!-- SIDEBAR -->
		<div class="four columns">
			
			<br class="clear"/>
			<h6 class="sidebartitle">여행 지역 검색</h6>
			<a href="#" class="tags">서울</a>
			<a href="#" class="tags">인천</a>
			<a href="#" class="tags">경기</a>
			<a href="#" class="tags">강원</a>
			<a href="#" class="tags">충청북도</a>
			<a href="#" class="tags">충청남도</a>
			<a href="#" class="tags">경상북도</a>
			<a href="#" class="tags">경상남도</a>
			<a href="#" class="tags">전라북도</a>
			<a href="#" class="tags">전라남도</a>
			<a href="#" class="tags">제주도</a>
			<br class="clear"/>
			<br/><br/>
			
			
		</div>
	</div>
</div>
<div class="hr">
</div>


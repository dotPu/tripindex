<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
	<c:when test="${result eq 1 }">
			<script>
				alert('로그인에 성공하였습니다..');
				location.href="/index";
			</script>
	</c:when>
	<c:otherwise>
		<script>
			alert('로그인에 실패하였습니다..');
			location.href="/account/login";
		</script>
	</c:otherwise>
</c:choose>
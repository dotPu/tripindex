<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link href="/calendar.css" rel="stylesheet">
    <script src="/calendar.js"></script>
<head>
    <title>달력</title>
</head>

<body>
    <div style="border:solid gray 1px">
    	<p style="text-align:center;">Today : 노란색 | Past : 다홍색 | Future : 회색</p>
    	<hr>
        <table class="Calendar">
            <thead>
                <tr>
                    <td onClick="prevCalendar();" style="cursor:pointer;">&#60;</td>
                    <td colspan="5">
                        <span id="calYear"></span>년
                        <span id="calMonth"></span>월
                    </td>
                    <td onClick="nextCalendar();" style="cursor:pointer;">&#62;</td>
                </tr>
                <tr>
                    <td>일</td>
                    <td>월</td>
                    <td>화</td>
                    <td>수</td>
                    <td>목</td>
                    <td>금</td>
                    <td>토</td>
                </tr>
            </thead>

            <tbody>
            </tbody>
        </table>
        <hr>
        <p id="selectday"></p>
    </div>

</body>

</html>
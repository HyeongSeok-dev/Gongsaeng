<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>수업 일정 달력</title>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css' rel='stylesheet' />
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js'></script>
    <script>
        $(document).ready(function() {
            $('#calendar').fullCalendar({
                events: [
                    // 서버에서 받아온 이벤트 데이터를 여기에 추가합니다.
                    // 예시:
                    // { title: '이벤트1', start: '2024-01-01', end: '2024-01-02' },
                    // 받아온 데이터는 JSON 형식이어야 합니다.
                ],
                // 추가적인 FullCalendar 옵션을 여기에 설정할 수 있습니다.
            });
        });
    </script>
</head>
<body>
    <div id='calendar'></div>
</body>
</html>

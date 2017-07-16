<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>안심예매</title>

<%@ include file="/_common/defaultSettings.jsp"%>

<script type="text/javascript">
$(function() {
	
	// ui apply
	$(".popup").dialog();
	$("button").button();
	$(".ui-dialog-titlebar").css("display", "none");
	
	// captcha apply
	$("#captcha img").attr("src", "${contextPath}/captcha?"+Math.random());
	
	
});
</script>
</head>
<body>
	<div class="popup">
		<form id="frm" method="post">
	        <div id="captcha"><img/></div>
	        <br/>
	        <input type="text" name="captchaInput"/>
	        <br/><br/>
	        <button id="btnCheck">확인</button>
	        <button id="btnRefresh">새로고침</button>
	    </form>
    </div>
</body>
</html>
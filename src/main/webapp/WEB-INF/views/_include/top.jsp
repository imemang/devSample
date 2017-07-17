<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>RunAs</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ include file="/_common/defaultSettings.jsp"%>

<script type="text/javascript">
<!--
$(function() {
	var menu1 = "${menu1}";
	
	$("ul li a").removeClass("on");
	$("ul li."+menu1).find("a").addClass("on");
	
});
-->
</script>
</head>
<body>
	<!-- wrap -->
	<div id="wrap">
	
		<!-- top -->
		<div id="header">
			<h1>Hello :)</h1>
			
			<ul class="topMenu">
				<li class="sample">
					<a href="${contextPath}/sample/slideshow.do">
						<span>SAMPLE</span>
						<span class="arr"></span>
						</a>
				</li>
				<li class="project">
					<a href="${contextPath}/project/ticketting/ticketting.do">
						<span>PROJECT</span>
						<span class="arr"></span>
					</a>
				</li>
				<li class="portfolio">
					<a href="">
						<span>PORTFOLIO</span>
						<span class="arr"></span>
					</a>
				</li>
			</ul>
		</div>
		<!-- //top -->
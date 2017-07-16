<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../_include/top.jsp"/>

<%@ include file="/_common/defaultSettings.jsp"%>

<script type="text/javascript">
$(function() {
	
	//jQuery UI 버튼 적용
	$("#btnPopup").button();
	
	$("#btnPopup").on("click", function(){
		var popupUrl = "${contextPath}/project/ticketting/captcha.do";
		openPopUp(popupUrl);
	});
	
	function openPopUp(popUrl){
		var opt = "width=900, height=672, resizable=no, scrollbars=no, status=no;";
		window.open(popUrl, "안심예매", opt);
	}
});
</script>		

<form id="frm">
		<!-- container -->
		<div id="container">
		
			<jsp:include page="../_include/lnb.jsp">
				<jsp:param name="menu1" value="${menu1}"/>
				<jsp:param name="menu2" value="${menu2}"/>
			</jsp:include>
			
			<!-- sub content -->
			<div class="scontent">
				<!-- scon -->
				<div class="scon">
					<button id="btnPopup">예매하기</button>
				</div>
				<!-- //scon -->
			</div>
			<!-- //sub content -->
		</div>
		<!-- // container -->
</form>
		
<jsp:include page="../_include/footer.jsp" flush="false"/>
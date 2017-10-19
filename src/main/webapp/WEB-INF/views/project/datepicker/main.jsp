<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../../_include/top.jsp"/>

<%@ include file="/_common/defaultSettings.jsp"%>

<script type="text/javascript">
$(function() {

});
</script>		

<form id="frm">
		<!-- container -->
		<div id="container">
		
			<jsp:include page="../../_include/lnb.jsp">
				<jsp:param name="menu1" value="${menu1}"/>
				<jsp:param name="menu2" value="${menu2}"/>
			</jsp:include>
			
			<!-- sub content -->
			<div class="scontent">
				<!-- scon -->
				<div class="scon">
                    datepicker main
				</div>
				<!-- //scon -->
			</div>
			<!-- //sub content -->
		</div>
		<!-- // container -->
</form>
		
<jsp:include page="../../_include/footer.jsp" flush="false"/>
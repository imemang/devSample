<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../../_include/top.jsp"/>

<%@ include file="/_common/defaultSettings.jsp"%>

<script type="text/javascript">
$(function() {
	
	$( ".date" ).datepicker();
	
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
				    <p>
                        <input type="radio" value="monthly" name="period"/> 월간
                        <input type="radio" value="weekly" name="period"/> 주간
                        <input type="radio" value="daily" name="period"/> 일간
                    </p>
                    <p>start date : <input type="text" id="s_datepicker" class="date"></p>
                    <p> end  date : <input type="text" id="e_datepicker" class="date"></p>
                    
				</div>
				<!-- //scon -->
			</div>
			<!-- //sub content -->
		</div>
		<!-- // container -->
</form>
		
<jsp:include page="../../_include/footer.jsp" flush="false"/>
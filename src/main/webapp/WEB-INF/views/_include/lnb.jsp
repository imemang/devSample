<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/_common/path.jsp"%>

<script type="text/javascript">

</script>

<!-- lnb -->
<div id="lnb" class="lnb">
	<ul>
		<c:choose>	
			<c:when test="${menu1 =='sample'}">	
				<li>
					<a>
						<spen>슬라이드쇼</spen>
					</a>
				</li>
			
			</c:when>
			<c:when test="${menu1 =='project'}">	
				<li>
					<a href="${contextPath}/project/ticketting/main.do">
                        <span>티켓팅프로젝트</span>
                    </a>
				</li>
				<li>
                    <a href="${contextPath}/project/datepicker/main.do">
                        <span>DATEPICKER</span>
                    </a>
                </li>
			</c:when>
			<c:when test="${menu1 =='portfolio'}">	
			
			
			</c:when>
		</c:choose>
	</ul>
</div>
<!-- //lnb -->
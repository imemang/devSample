<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<%-- 컨텍스트 경로 --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%-- 스타일시트 경로 --%>
<c:set var="cssPath" value="${contextPath}/_css" />
<%-- 이미지 경로 --%>
<c:set var="imagesPath" value="${contextPath}/_images" />
<%-- 자바스크립트 경로 --%>
<c:set var="jsPath" value="${contextPath}/_js" />
<%-- 업로드 파일 경로 --%>
<c:set var="uploadPath" value="${contextPath}/_uploadFiles" />

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>안심예매</title>

<%@ include file="/_common/defaultSettings.jsp"%>
<link rel="stylesheet" type="text/css" href="${cssPath}/project/seat.css">

<script type="text/javascript">
$(function() {
	
	/* 
		시간측정 
		new Date().getTime();
		returns the number of milliseconds between midnight of January 1, 1970 and the specified date.
		1000 millisecond = 1 second;
	*/
	var startTime = null;
	var endTime = null;
	
	// 안심예매
	var isSafe = $("#chkSafe", opener.document).prop("checked");
	
	if(isSafe){
		// ui apply
		$(".dialog").dialog({
			width: 365,
	        height: 430,
	        dialogClass: 'bgWhite'
		}).removeClass("nodisp");
		
		$("span.btn").button().css("fontSize", "10pt");
		$(".ui-dialog-titlebar").css("display", "none");
		
		createCaptcha();
		
		$("#selDate").find("option:eq(1)").prop("selected","selected");
		changeSelDate($("#selDate"));
		
	}
	
	$("#btnRefresh").on("click", function(e){
		e.preventDefault();
		createCaptcha();
	});
	
	$("#btnCancel").on("click", function(){
		self.close();
	});
	
	$("[name='captchaInput']").on("keydown", function(e){
		
		if(e.keyCode == 13){
			$("#btnCheck").click();
			return false;
		}
	});
	
	$("#btnCheck").on("click", function(){
		alert(1);
		var url = "${contextPath}/project/ticketting/captcha.do";
		var captchaInputVal = $("[name='captchaInput']").val().toUpperCase();

		$.ajax({
		    url : url,
		    type: "POST",
		    data : {
		    	captchaInput : captchaInputVal
		    },
		    success: function(data, textStatus, jqXHR)
		    {
		        if(data == "true"){
		        	$(".dialog").remove();
		        }else{
		        	$("[name='captchaInput']").css("borderColor", "red").val("");
		        	$("#err").text("입력한 문자를 다시 확인해주세요");
		        	createCaptcha();
		        }
		    },
		    error: function (jqXHR, textStatus, errorThrown)
		    {
		 
		    }
		});
			
	});
	
	function createCaptcha(){
		// captcha apply
		$("#captcha").attr("src", "${contextPath}/captcha?"+Math.random());
	}
	
	
	// 시간 변경 시 좌석 새로고침
	$("#selDate").on("change", function(){
		
		changeSelDate($(this));
	});
	
	function changeSelDate($ele){
		clearSeat();
		
		if($ele.val() != ""){
			initSeat();
			startTime = new Date().getTime();
		}
	}
	
	// 선택 가능한 좌석 선택
	$(".theater").on("click", ".fillSeat", function(){
		$(this).removeClass("fillSeat").addClass("selectedSeat");
		var seatName = $(this).attr("name");
		var seatXY = seatName.split("$");
		var displayText = "1층 - " + seatXY[0] + "열 - " + seatXY[1];
		
		$(".info3").append("<p name=\"" + seatName + "\">" + displayText + "</p>");
		
	});
	
	// 선택된 좌석 선택
	$(".theater").on("click", ".selectedSeat", function(){
		$(this).removeClass("selectedSeat").addClass("fillSeat");
		var seatName = $(this).attr("name");
		
		$(".info3").find("p[name='" + seatName + "']").remove();
	});
	
	// 버튼 : 좌석선택완료
	$("#btnFinish").on("click", function(){
		endTime = new Date().getTime();
		
		if(startTime !== null){
			// "[startTime] : " + startTime + " \n[endTime] : " + endTime + "\n[diff] : " + ((endTime - startTime)/1000) + "sec"
			alert(((endTime - startTime)/1000) + "sec");
			
		}else{
			alert("좌석을 선택해주세요.");
			return false;
		}
	});
	
	// 버튼 : 좌석다시선택
	$("#btnReset").on("click", function(){
		clearSeat();
		initSeat();
		startTime = new Date().getTime();
	});
	
	// 좌석 초기화
	function clearSeat(){
		$(".theater").children(".fillSeat, .selectedSeat").remove();
		$(".info3").children("p").remove();
	}
	
	// 랜덤으로 좌석 출력
	function initSeat(){
		var seatArray = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
						 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
						 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
						 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
						 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
						 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
						 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
						 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
						 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
						 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]];
		var seatIndex = ['A', 'B', 'C', '1', '2', '3', '4', '5', '6', '7'];
		
		var xIndex = 0;
		var yIndex = 1;
		
		// 랜덤 좌석수 (0 ~ 10)
		var seatCnt = Math.floor(Math.random() * 11);
		
		for(var seat = 0 ; seat < seatCnt ; seat++){
			// 랜덤 x좌표  (0 ~ 14)
			var ranX = Math.floor(Math.random() * 15);
			// 랜덤 y좌표  (0 ~ 9)
			var ranY = Math.floor(Math.random() * 10);
			
			seatArray[ranY][ranX] = 1;
		}
		
		
		for(var j = 0 ; j <10 ; j++){
			for(var i = 0 ; i < 14 ; i++){
	
				var clsName = "fillSeat";
				var seatName = seatIndex[j] + "$" + (i+1) + "";
				
				if(i % 2 == 0){
					xIndex += 11;
				}else{
					xIndex += 10;
				}
				
				if(seatArray[j][i] == 1){
					$(".theater").append("<div class=\"" + clsName + "\" name=\"" + seatName + "\" style=\"left:" + xIndex + "px; top:" + yIndex+ "px;\"></div>");
				}
			}
			xIndex = 0;
			
			if(j % 2 == 0){
				yIndex += 10;
			}else{
				yIndex += 11;
			}
		}
	}
	
	
});
</script>
</head>
<body>
<div id="popup">
	<div id="seatTop">
		<select id="selDate">
			<option value="">시간선택</option>
			<option value="1">14:00</option>
			<option value="2">18:00</option>
		</select>
	</div>
	<div id="seatContents">
		<div class="theater">
		</div>
	</div>
	<div id="info">
		<div class="info1"></div>
		<div class="info2"></div>
		<div class="info3"></div>
		<div class="btnArea">
			<a id="btnFinish"></a>
			<a id="btnPrev"></a>
			<a id="btnReset"></a>
		</div>
	</div>
	
	<div class="dialog nodisp center">
		<form id="frmCaptcha" method="post">
			<img src="${imagesPath}/ticketting/safeBookInfo.PNG"/>
        	<div class="bgcaptcha">
	        	<img id="captcha"/>
		        <img id="btnRefresh" src="${imagesPath}/ticketting/btnRefresh.png" width="20px">
	        </div>
	        <br/>
	        <input type="text" name="captchaInput" style="text-transform: uppercase;"/>
	        <br/>
	        <span id="err" class="errTxt"></span>
	        <br/>
	        <span id="btnCancel" class="btn">취소</span>
	        <span id="btnCheck" class="btn">확인</span>
	    </form>
    </div>
</div>
</body>
</html>
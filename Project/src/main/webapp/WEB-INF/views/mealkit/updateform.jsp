<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/mealkit/updateform.jsp</title>
<link rel="stylesheet" 
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<style>
	#content{
		height: 500px;
	}
</style>
</head>
<body>
<div class="container">
	<h1>제품 상세 내용 수정하기</h1>
	<form action="update.do" method="post" id="updateForm">
		<input type="hidden" name="productId2" id="productId2" value="${param.productId }"  />
		<div class="mb-3">
			<label class="form-label" for="productId2">상품 코드</label>
			<input class="form-control" type="text" name="productId2" id="productId2" value="${param.productId }" disabled/>
		</div>
		<div class="mb-3">
			<label class="form-label" for="title">제목</label>
			<input class="form-control" type="text" name="title" id="title"/>
		</div>
		<div class="mb-3">
			<label class="form-label" for="content">내용</label>
			<textarea class="form-control"  name="content" id="content"></textarea>
		</div>
		<button class="btn btn-primary" type="submit">수정</button>
	</form>
</div>

<!-- SmartEditor 에서 필요한 javascript 로딩  -->
<script src="${pageContext.request.contextPath }/SmartEditor/js/HuskyEZCreator.js"></script>
<script>
	var oEditors = [];
	
	//추가 글꼴 목록
	//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content",
		sSkinURI: "${pageContext.request.contextPath}/SmartEditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function(){
				//alert("완료!");
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
	
	function pasteHTML() {
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
		oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
	}
	
	function showHTML() {
		var sHTML = oEditors.getById["content"].getIR();
		alert(sHTML);
	}

	
	function setDefaultFont() {
		var sDefaultFont = '궁서';
		var nFontSize = 24;
		oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
	}
	
	//폼에 submit 이벤트가 일어났을때 실행할 함수 등록
	document.querySelector("#updateForm")
		.addEventListener("submit", function(e){
			//에디터에 입력한 내용이 textarea 의 value 값이 될수 있도록 변환한다. 
			oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
			//textarea 이외에 입력한 내용을 여기서 검증하고 
			const title=document.querySelector("#title").value;
			
			//만일 폼 제출을 막고 싶으면  
			//e.preventDefault();
			//을 수행하게 해서 폼 제출을 막아준다.
			if(title.length < 2){
				alert("제목을 2글자 이상 입력하세요!");
				e.preventDefault();
			}
			
		});
</script>
</body>
</html>
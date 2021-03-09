<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../includes/header.jsp" %>

<!-- Header -->
  <header class="bg-primary py-4 mb-5">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-lg-12 align-self-end">
          <hr class="divider my-5">
          <h1 class="display-4 text-white mt-5 mb-2">별점보기</h1>
          <hr width="20%" align="left" class="light my-4" />
          <p class="lead mb-3 text-white-50">"라면 먹을래요?"</p>
        </div>
      </div>
    </div>
  </header>
  
<div class="container my-5">
<br>  <p class="text-center"><a href="http://today-ramyun.com/">today-ramyun.com</a> 관계자 전용 라면 등록폼입니다.</p>
<hr>

<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">등록</h4>
	
	<form role="form" action="/board/register" method="post" name="form">
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-image"></i> </span>
		 </div>
        <input name="image" class="form-control" placeholder="이미지(postimage url)" id="tbImage" type="text">
    </div> <!-- form-group// -->
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-tag"></i> </span>
		 </div>
        <input name="title" class="form-control" placeholder="제품명" id="tbTitle" type="text">
    </div> <!-- form-group// -->    
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-burn"></i> </span>
		</div>
		<select class="form-control" name="cup" id="tbCup">
			<option value="" selected> 조리 유무</option>
			<option value="🍜">🍜</option>
			<option value="🥡">🥡</option>
		</select>
	</div> <!-- form-group end.// -->
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-building"></i> </span>
		 </div>
        <input name="brand" class="form-control" placeholder="제조사" id="tbBrand" type="text">
    </div> <!-- form-group// -->  
	
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-weight"></i> </span>
		 </div>
        <input name="kcal" class="form-control" placeholder="칼로리" id="tbKcal" type="text">
    </div> <!-- form-group// -->  
	
	<div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-list"></i> </span>
		</div>
		<select class="form-control" name="sort" id="tbSort">
			<option value="" selected> 종류</option>
			<option value="일반">일반</option>
			<option value="짜장">짜장</option>
			<option value="짬뽕">짬뽕</option>
			<option value="우동">우동</option>
			<option value="쌀국수">쌀국수</option>
			<option value="칼국수/잔치국수">칼국수/잔치국수</option>
			<option value="비빔면/볶음면">비빔면/볶음면</option>
			<option value="냉면/소바">냉면/소바</option>
			<option value="파스타">파스타</option>
			<option value="찌개">찌개</option>
			<option value="기타">기타</option>
		</select>
	</div> <!-- form-group end.// -->
                                       
    <div class="form-group">
       	<button type="submit" id="tbSubmit" class="btn btn-primary btn-block">Submit</button>
       	<button type="reset" class="btn btn-primary btn-block">Reset</button>
    </div> <!-- form-group// -->
                                                                           
	</form>
	</article>
	</div> <!-- card.// -->

</div> 
<!--container end.//-->

<%@include file="../includes/footer.jsp" %>
<script type="text/javascript">
$(document).ready(function() {
	$('#tbSubmit').click(function(){
	
		if($("#tbImage").val() == ""){
		    alert("사진 링크 주소를 입력해 주십시오");
		    $("#tbImage").focus();
		return false;
	    }
		
		if($("#tbCup").val() == ""){  //  선택한 인덱스
		    alert("카테고리를 선택해 주십시오");
		return false;
		}

	  
		if($("#tbTitle").val() == ""){
		    alert("제품명을 입력해 주십시오");
		    $("#tbTitle").focus();
		return false;
		}
	  
		if($("#tbBrand").val() == ""){
		    alert("제조사를 입력해 주십시오");
		    $("#tbBrand").focus();
		return false;
		}
		
		if($("#tbKcal").val() == ""){
		  	alert("칼로리를 입력해 주십시오");
		    $("#tbKcal").focus();
		return false;
		}
		
		if($("#tbSort").val() == ""){  //  선택한 인덱스
		    alert("카테고리를 선택해 주십시오");
		return false;
		}

	});
});
</script>
</body>
</html>
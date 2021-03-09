<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<br>  <p class="text-center"><a href="http://today-ramyun.com/">today-ramyun.com</a> 관계자 전용 라면 수정폼입니다.</p>
<hr>

<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">수정</h4>
	
	<form role="form" name="form" action="/board/modify" method="post">
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-sort-numeric-down"></i> </span>
		 </div>
        <input name="bno" value='<c:out value="${board.bno}"/>' readonly="readonly" class="form-control"  type="text">
    </div> <!-- form-group// -->
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-image"></i> </span>
		 </div>
        <input name="image" value='<c:out value="${board.image}"/>' id="tbImage" class="form-control" placeholder="이미지(postimage url)" type="text">
    </div> <!-- form-group// -->
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-tag"></i> </span>
		 </div>
        <input name="title" value='<c:out value="${board.title}"/>' id="tbImage" class="form-control" placeholder="제품명" type="text">
    </div> <!-- form-group// -->    
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-burn"></i> </span>
		</div>
		<select class="form-control" id="tbCup" name="cup">
			<option selected=""> 조리 유무</option>
			<option value="🍜">🍜</option>
			<option value="🥡">🥡</option>
		</select>
	</div> <!-- form-group end.// -->
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-star"></i> </span>
		 </div>
        <input name="star" value='<c:out value="${board.star}"/>' readonly="readonly" class="form-control" placeholder="별점" type="text">
    </div> <!-- form-group// -->
    
    <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-thumbs-up"></i> </span>
		 </div>
        <input name="raring" value='<c:out value="${board.rating}"/>' readonly="readonly" class="form-control" placeholder="점수" type="text">
    </div> <!-- form-group// -->
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-building"></i> </span>
		 </div>
        <input name="brand" value='<c:out value="${board.brand}"/>' id="tbBrand" class="form-control" placeholder="제조사" type="text">
    </div> <!-- form-group// -->  
	
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-weight"></i> </span>
		 </div>
        <input name="kcal" value='<c:out value="${board.kcal}"/>' id="tbKcal" class="form-control" placeholder="칼로리" type="text">
    </div> <!-- form-group// -->  
	
	<div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-list"></i> </span>
		</div>
		<select class="form-control" id="ibSort" name="sort">
			<option selected=""> 종류</option>
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
       	<button type="submit" id="tbSubmit" data-oper='modify' class="btn btn-primary">Modify</button>
		<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
		<button type="submit" data-oper='list' class="btn btn-info">List</button>
    </div> <!-- form-group// -->
                                                                           
	</form>
	</article>
	</div> <!-- card.// -->

</div> 
<!--container end.//-->

<%@include file="../includes/footer.jsp" %>
<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form");
	
	$('button').on("click", function(e){
		e.preventDefault();
		
		var operation = $(this).data("oper");
		
		console.log(operation);
		
		if(operation === 'remove'){
			formObj.attr("action", "/board/remove");
		}else if(operation === 'list'){
			//move to list
			self.location="/board/list";
			return;
		}
		formObj.submit();
	});
});
</script>

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
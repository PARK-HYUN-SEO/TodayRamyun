<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../../includes/header.jsp"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>HELLO WORLD!!!</h1>
<h1>HELLO WORLD!!!</h1>
<h1>HELLO WORLD!!!</h1>
<h1>HELLO WORLD!!!</h1>
<h1>HELLO WORLD!!!</h1>
<h1>HELLO WORLD!!!</h1>
<h1>HELLO WORLD!!!</h1>
<h1>HELLO WORLD!!!</h1>
<h1>HELLO WORLD!!!</h1>
<textarea rows="5" cols="60" name="description" id="description"></textarea>	
<script src="${path}/ckeditor/ckeditor.js"></script>
<script>

CKEDITOR.replace("description",{
    filebrowserUploadUrl : "${path}/imageUpload.do"
}); 

</script>
	
	<%@ include file="../../includes/footer.jsp"%>
</body>
</html>
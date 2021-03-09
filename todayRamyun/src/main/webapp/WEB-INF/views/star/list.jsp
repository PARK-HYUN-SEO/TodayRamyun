<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#star_grade a {
	text-decoration: none;
}

input:disabled {
	background: white !important;
}
</style>
</head>
<body>
	<%@include file="../includes/header.jsp"%>
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

	<!-- Page Content -->
	<div class="container">

		<div class="row">
			<div class="col-md-8 mb-5">
				<h2>라면 순위를 한눈에 파악해 보세요</h2>
				<hr>
				<p>
					라면은 당기는데 종류가 많아서 결정하기 힘든 당신에게!<br /> 오늘이라면에서 순위를 정리해 놓았습니다.
				</p>
				<p>오늘이라면 결정하실 수 있을 거예요!</p>
				<a class="btn btn-primary btn-lg" href="#">Call to Action
					&raquo;</a>
			</div>
			<div class="col-md-4 mb-5">
				<h2>정렬</h2>
				<hr>
				<div class="row">
					<div class="col-lg-6 col-md-6 justify-content-center">
						<!-- 세로축1 -->
						<p>필터</p>
						<div class="dropdown">
							<button class="btn btn-primary dropdown-toggle" type="button"
								id="dropdown" data-toggle="dropdown">선택</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">별점</a> <a
									class="dropdown-item" href="#">제조사별</a> <a
									class="dropdown-item" href="#">종류별</a>
							</div>
						</div>
					</div>
					<!-- 세로축1 -->
					<div class="col-md-6 justify-content-center">
						<!-- 세로축2 -->
						<p>조리 방법</p>
						<div class="btn-group-vertical">
							<button type="button" class="btn btn-primary">봉지라면</button>
							<hr class="my-1">
							<button type="button" class="btn btn-primary">컵라면</button>
						</div>
					</div>
					<!-- 세로축2 -->
				</div>
			</div>
		</div>
		<!-- /.row -->

		<div class="row">
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="https://placehold.it/300x200" alt="">
					<div class="card-body">
						<h4 class="card-title">신라면 | 🥡 🍜</h4>
						<p class="catd-text">🍥🍥🍥🍥🍥 | 5.0</p>
						<p class="card-text">제조사: 농심</p>
						<p class="card-text">칼로리: 500kcal</p>
						<p class="card-text">종류: 일반</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary">별점 보기!</a>
					</div>
				</div>
			</div>

			<c:forEach items="${list}" var="star">
				<div class="col-md-4 mb-5">
					<div class="card h-100">
						<img class="card-img-top" src="<c:out value="${star.image}"/>"
							alt="" />
						<div class="card-body">
							<h4 class="card-title">
								<c:out value="${star.title}" />
								|
								<c:out value="${star.cup}" />
							</h4>
							<p class="card-text">
								<c:out value="${star.star}" />
								|
								<c:out value="${star.rating}" />
							</p>
							<p class="card-text">
								제조사:
								<c:out value="${star.brand}" />
							</p>
							<p class="card-text">
								칼로리:
								<c:out value="${star.kcal}" />
								kcal
							</p>
							<p class="card-text">
								종류:
								<c:out value="${star.sort}" />
							</p>
							<input hidden=>
						</div>
						<div class="card-footer">
							<button data-modalNum="${star.bno}" name='showModal'
								class="btn btn-primary">별점 보기!</button>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>

		<!-- /.row -->

		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">별점 보기</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="container">
							<div class="row">
								<div class="col-md-6 pr-4"
									style="border-right: 1px solid lightgray;">
									<div class="form-group" style="width: 180px; height: 180px;">
										<label>이미지</label> <img class="form-control"
											style="width: 150px; height: 150px;" name='image' src=''>
									</div>
									<!-- 댓글 등록용 -->
									<div class="form-group" style="display:none"> 
										<label>글번호</label> <input class="form-control" name='bno'
											value=''>
									</div>
									<div class="form-group">
										<label>제품명</label> <input class="form-control" name='title'
											value=''>
									</div>
									<div class="form-group">
										<label>조리유무</label> <input class="form-control" name='cup'
											value=''>
									</div>
									<div class="form-group">
										<label>별점</label> <input class="form-control" name='star'
											value=''>
									</div>
									<div class="form-group">
										<label>평점</label> <input class="form-control" name='rating'
											value=''>
									</div>
									<div class="form-group">
										<label>제조사</label> <input class="form-control" name='brand'
											value=''>
									</div>
									<div class="form-group">
										<label>칼로리</label> <input class="form-control" name='kcal'
											value=''>
									</div>
									<div class="form-group">
										<label>종류</label> <input class="form-control" name='sort'
											value=''>
									</div>
								</div>
								<!-- /.modal-info -->
								
								<div class="col-md-6" style="height: 800px; width: 250px;">
									<!-- /.reply -->
									<div class="panel panel-default">
										<div class="panel-heading pb-2"
											style="border-bottom: 1px solid lightgray;">
											<i class="fa fa-comments fa-fw"></i>Reply
										</div>
										<!-- /.panel-heading -->
										<div class="panel-body">
											<div class="" style="height: 400px; width: 210px; margin: 5px; overflow: auto;">
												<ul class="chat">
												</ul>
											</div>
											<!-- ./ end ul -->
										</div>
										<!-- /.panel .chat-panel -->
										<div class='panel-footer'></div>
										<!-- /.panel-heading -->
									</div>
									<!-- /.panel -->

									<!-- /.reply-form -->
									
									<form role="form" class="p-1 pt-3"
										style="border-top: 2px solid black; position: sticky;">
										<div class="form-group input-group">
											<div class="input-group-prepend">
												<span class="input-group-text" id="addon1">👤</span>
											</div>
											<input id="userName" type="text" name="replyer" class="form-control"
												placeholder="Username" aria-label="userName"
												aria-describedby="addon1" required>
										</div>
										<div class="form-group input-group py-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="addon2">🍥</span>
											</div>
											<input id="star" type="text" class="form-control"
												value="별점 주기" aria-label="star" aria-describedby="addon2"
												disabled required>
											<div class="input-group-append">
												<button id="rollback" class="btn btn-outline-secondary"
													type="button">⭯</button>
											</div>
										</div>
										<div class="text-center pt-3"
											style="border: 1px solid lightgray; border-radius: 10px;">
											<p id="star_grade" name="star_grade">
												<a href="#" id='star1' onclick="return false;">🤔</a>
												<a href="#" id='star2' onclick="return false;">🤔</a>
												<a href="#" id='star3' onclick="return false;">🤔</a>
												<a href="#" id='star4' onclick="return false;">🤔</a>
												<a href="#" id='star5' onclick="return false;">🤔</a>
											</p>
											<input type="hidden" id="starValue">
										</div>
										<br />

										<div class="form-group input-group">
											<div class="input-group-prepend">
												<span class="input-group-text" id="addon3">💬</span>
											</div>
											<textarea id="reply" name="reply" class="form-control"
												placeholder="Message" aria-label="message"
												aria-describedby="addon3" style="height: 50px !important;"
												required></textarea>
										</div>

										<div class="form-group">
											<button type="submit" id="replyRegisterBtn" class="btn btn-primary">Register</button>
											<button type="reset" class="btn btn-primary">Reset</button>
										</div>
										<!-- form-group// -->
									</form>
								
								</div>
								<!-- /.reply -->
							</div>
							<!-- /.flex-row -->
						</div>
						<!-- /.container -->
					</div>
					<!-- /.modal-body -->
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
						<button type="button" id="modify" class="btn btn-primary">Modify</button>
						<button type="button" class="btn btn-primary">Delete</button>
					</div>
					<!-- /.modal-footer -->
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->

		<!-- 게시물 등록 -->
		<div class="mb-3">
			<a href="http://localhost:8080/star/register"><button
					type="button" class="btn btn-primary">등록하기</button></a>
		</div>

		<!-- 페이지 처리 -->
		<div class='pull-right'>
			<ul class='pagination'>

				<c:if test="${pageMaker.prev}">
					<li class="page-link"><a href="${pageMaker.startPage -1}">Previous</a>
					<li>
				</c:if>

				<c:forEach var="num" begin="${pageMaker.startPage}"
					end="${pageMaker.endPage}">
					<li class="page-link ${pageMaker.cri.pageNum == num ? "active":""}"><a
						href="${num}">${num}</a></li>


				</c:forEach>

				<c:if test="${pageMaker.next}">
					<li class="page-link"><a href="${pageMaker.endPage + 1}">Next</a>
					</li>
				</c:if>
			</ul>
		</div>
		<!-- end pagination -->

		<form id='actionForm' action="/star/list" method='get'>
			<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
			<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		</form>

	</div>
	<!-- /.container -->
	<%@include file="../includes/footer.jsp"%>

	<script type="text/javascript" src="/resources/js/modal.js"></script>
	<script type="text/javascript" src="/resources/js/reply.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
					
					// 페이징
					var actionForm = $("#actionForm");

					$(".page-link a").on("click", function(e) {

						e.preventDefault();

						console.log('click');

						actionForm.find("input[name='pageNum']").val($(this).attr("href"));
						actionForm.submit();
					}); 
					// 페이징 終
					
					// 모달
					// 모달 정보단
					var modal = $(".modal");
					var modalImage = modal.find("img[name='image']");
					var modalInputBno = modal.find("input[name='bno']")
					var modalInputTitle = modal.find("input[name='title']");
					var modalInputCup = modal.find("input[name='cup']");
					var modalInputStar = modal.find("input[name='star']");
					var modalInputRating = modal.find("input[name='rating']");
					var modalInputBrand = modal.find("input[name='brand']");
					var modalInputKcal = modal.find("input[name='kcal']");
					var modalInputSort = modal.find("input[name='sort']");
					
					$("button[name='showModal']").click(function() {

								var temp = $(this).attr("data-modalNum");

								modalService.get(temp, function(data) {

									modalImage.val(data.image).attr("src",
											data.image);
									modalInputBno.val(data.bno).attr(
											"disabled", "disabled");
									modalInputTitle.val(data.title).attr(
											"disabled", "disabled");
									modalInputCup.val(data.cup).attr(
											"disabled", "disabled");
									modalInputStar.val(data.star).attr(
											"disabled", "disabled");
									modalInputRating.val(data.rating).attr(
											"disabled", "disabled");
									modalInputBrand.val(data.brand).attr(
											"disabled", "disabled");
									modalInputKcal.val(data.kcal + 'kcal')
											.attr("disabled", "disabled");
									modalInputSort.val(data.sort).attr(
											"disabled", "disabled");
									modal.data("bno", data.bno);

								}); // get

								$("#myModal").modal("show");

							}); // button click
					// 모달 정보단 終		    
					
					// 댓글 기능
					// 댓글 목록
					$("button[name='showModal']").click(function() {
						
						var temp = $(this).attr("data-modalNum");
						var replyUL = $(".chat");
						
						replyService.getList(temp, function(data) {
							
							modal.data("bno", data.bno);
							
							var str="";
							
							if(data == null || data.length == 0) {
								return;
							}																															
							
							for (var i = 0, len = data.length || 0; i < len; i++) {
								
								var naruto;
								
								if(data[i].userstar == '1') {
									naruto = '🍥';
								} else if(data[i].userstar == '2') {
									naruto = '🍥🍥';
								} else if(data[i].userstar == '3') {
									naruto = '🍥🍥🍥';
								} else if(data[i].userstar == '4') {
									naruto = '🍥🍥🍥🍥';
								} else if(data[i].userstar == '5') {
									naruto = '🍥🍥🍥🍥🍥';
								} else {
									naruto ='';
								}
																
								str +=" <div><div class='header'><strong class='primary-font'>["+data[i].rno+"]"
								+data[i].replyer+"</strong>"; 
								str +=" <small class='pull-right text-muted'>"+replyService.displayTime(data[i].replyDate)+"</small></div>";
								str +=" <div>"+data[i].reply+"</div>";								
								str +=" <div>"+naruto+"</div></div>";																
							}
							
							replyUL.html(str);
							
						});
					
					});
																	
					// 댓글 등록
					var bnoValue = modal.find("input[name='bno']"); // ok
					var modalTextReply = modal.find("textarea[name='reply']"); // 들어감
					var modalInputReplyer = modal.find("input[name='replyer']"); // 들어감 
					var starValue = $('#starValue');
					var replyRegisterBtn = $("#replyRegisterBtn");
					
					replyRegisterBtn.on("click", function(e) {
						
						var reply = {						
								bno : bnoValue.val(),
								reply : modalTextReply.val(),
								replyer : modalInputReplyer.val(),
								userstar : starValue 
						};
					
						replyService.add(reply, function(result) {
					
							alert(result);
						
						});
						
					});

					// 별점 주기				
					$('#star_grade a').click(function() {												
						$(this).parent().children("a")
								.removeClass("on").text("🤔");
						$(this).addClass("on").text("🍥").prevAll("a")
								.addClass("on").text("🍥");					
					});
					
					// 별점 값 저장
					var star1 = $('#star1');
					var star2 = $('#star2');
					var star3 = $('#star3');
					var star4 = $('#star4');
					var star5 = $('#star5');
					
					$(function(){
						star1.click(function(){
							starValue = '1';
						});
						star2.click(function(){
							starValue = '2';
						});
						star3.click(function(){
							starValue = '3';
						});
						star4.click(function(){
							starValue = '4';
						});
						star5.click(function(){
							starValue = '5';
						});					
					});
					
					// 별점 롤백
					$('#rollback').click(function() {
						$('#star_grade a').parent().children("a").text("🤔");
					});

					// 모달 닫히면 폼데이터 초기화
					$('#myModal').on('hide.bs.modal', function() {
						$('#userName').val('');
						$('#star_grade a').parent().children("a").text("🤔"); //성공
						$('#reply').val('');
					});

				});
	</script>

</body>
</html>
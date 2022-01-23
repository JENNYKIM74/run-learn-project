<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/style-jgh.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/067cf61548.js" ></script>
<!-- 카카오 로그인지원 자바스크립트 라이브러리를 포함시킨다. -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
<div class="container-fluid" id="navbar-container">
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container">
			<a class="navbar-brand" href="/"><img width="140" src="/resources/images/logo.png"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item category-menu"><a class="nav-link" href="">강의</a>
						<ul class="navbar-nav is-boxed depth1">
							<li class="nav-item"><a class="nav-link" href="">개발&middot;프로그래밍</a>
								<ul class="navbar-nav is-boxed depth2">
									<li class="nav-item"><a class="nav-link" href="#">웹개발</a>
										<ul class="navbar-nav is-boxed depth3">
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
										</ul></li>
									<li class="nav-item"><a class="nav-link" href="#">웹개발</a>
										<ul class="navbar-nav is-boxed depth3">
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
										</ul></li>
									<li class="nav-item"><a class="nav-link" href="#">웹개발</a>
										<ul class="navbar-nav is-boxed depth3">
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
										</ul></li>
									<li class="nav-item"><a class="nav-link" href="#">웹개발</a>
										<ul class="navbar-nav is-boxed depth3">
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
											<li class="nav-item"><a class="nav-link" href="#">HTML/CSS</a></li>
										</ul></li>
								</ul></li>
						</ul></li>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
				<ul class="navbar-nav" id="navbar-right">
					<!-- 미로그인/지식공유미참여자 -->
					<li class="nav-item"><a class="nav-link btn btn-sm" href="#">지식공유참여</a></li>
					<!--// 미로그인/지식공유미참여자 -->
					<!-- 로그인시 -->
					<!-- 로그인/지식공유참여자 -->
					<li class="nav-item"><a class="nav-link btn btn-success btn-sm btn-recent" href="#">최근강의</a></li>
					<!--// 로그인/지식공유참여자 -->
					<li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-shopping-cart"></i></a></li>
					<li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-bell"></i></a></li>
					<!--// 로그인시 -->
					<c:if test="${empty LOGIN_USER}">
						<li class="nav-item mx-1"><a class="nav-link btn btn-outline-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</a></li>
						<li class="nav-item"><a class="nav-link btn btn-primary btn-sm btn-join" href="registerUser">회원가입</a></li>
					</c:if>
					<c:if test="${not empty LOGIN_USER}">
						<li class="nav-item">
							<a class="nav-link profile-cover p-0" href="#"><img src="/resources/images/default_profile.png"></a>
						</li>
						<li class="nav-item mx-1">
							<a class="nav-link btn btn-outline-secondary btn-sm btn-login" href="logout">로그아웃</a>
						</li>
						<li class="nav-item">
							<a class="nav-link btn btn-primary btn-sm" href="#">학생</a>
						</li>
						<li class="nav-item">
							<a class="nav-link btn btn-success btn-sm" href="#">지식공유자</a>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>

	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div id="alert-error-login" class="alert alert-danger" style="display: none;"></div>
					<form id="form-login" method="post" action="/rest/login">
						<div class="mb-3">
							<input type="text" class="form-control" id="email_id" placeholder="이메일을 입력하세요">
						</div>
						<div class="mb-3">
							<input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요"></input>
						</div>
						<button type="button" class="btn btn-primary" id="btn-login">로그인</button>
					</form>
					<div class="d-flex justify-content-center">
						<a href="#" class="text-reset p-2" title="Tooltip">비밀번호 찾기</a> 
						<span class="p-2"> | </span> 
						<a href="registerUser" class="text-reset p-2" title="Tooltip">회원가입</a>
					</div>
				</div>
				<div class="modal-footer ">
	    		   <p>SNS 로그인</p>
		    		<div class="border p-3 mb-4 bg-light d-flex justify-content-between">
			    		<%-- 
			    			카카오 로그인 처리중 중 오류가 발생하면 아래 경고창에 표시된다.
			    			카카오 로그인 오류는 스크립트에서 아래 경고창에 표시합니다.
			    		 --%>
			    		<div class="alert alert-danger d-none" id="alert-kakao-login">오류 메세지</div>
						    		
		    			<a id="btn-kakao-login" href="">
		  					<img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="200" alt="카카오 로그인 버튼"/>
						</a>
		    		</div>
		    		<form id="form-kakao-login" method="post" action="kakao-login">
		    			<input type="hidden" name="email"/>
		    			<input type="hidden" name="name"/>
		    			<input type="hidden" name="img"/>
		    		</form>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
// 일반로그인
$(function(){
	$("#btn-login") .click(function() {
			$("#alert-error-login").hide();
			
			var email = $("#email_id").val()
			var password = $("#password").val()
			if (email == "" || password == "") {
				$("#alert-error-login").show().text('이메일과 비밀번호를 입력해주세요');
				return;
			}

			$.ajax({
				type : "POST",
				url : "/rest/login",
				dataType : "json",
				data : {
					email : email,
					password : password
				},
				success : function(response) {
					if (response.status == "OK") {
						// 로그인 성공시
						location.reload(true);
					} else {
						//로그인 실패시.
						$("#alert-error-login").show().text(response.error);
					}
				}
			})
		})
	})
// 카카오로그인
$(function(){
	$("btn-kakao-login").click(function(event){
		// a태그 기능 실행멈춤.
		event.preventDefault();
		// 카카오 로그인 실행시 오류메시지를 표시하는 경고창을 화면에 보이지 않게 한다.
		$("alert-kakao-login").addClass("d-none");
		// 사용자 키를 전달, 카카오 로그인 서비스 초기화.
		Kakao.init('4a1f45c20d88beb59ab3913180c0a056');
		// 카카오 로그인 서비스 실행하기 및 사용자 정보 가져오기.
		Kakao.Auth.login({
			success:function(auth){
				Kakao.API.request({
					url: '/v2/user/me',
					success: function(response){
						// 사용자 정보를 가져와서 폼에 추가.
						var account = response.kakao_account;
						
						$('#form-kakao-login input[name=email]').val(account.email);
						$('#form-kakao-login input[name=name]').val(account.profile.nickname);
						$('#form-kakao-login input[name=img]').val(account.profile.img);
						// 사용자 정보가 포함된 폼을 서버로 제출한다.
						document.querySelector('#form-kakao-login').submit();
					},
					fail: function(error){
						// 경고창에 에러메시지 표시
						$('alert-kakao-login').removeClass("d-none").text("카카오 로그인 처리 중 오류가 발생했습니다.")
					}
				}); // api request
			}, // success 결과.
			fail:function(error){
				// 경고창에 에러메시지 표시
				$('alert-kakao-login').removeClass("d-none").text("카카오 로그인 처리 중 오류가 발생했습니다.")
			}
		}); // 로그인 인증.
	}) // 클릭이벤트
})// 카카오로그인 끝.
</script>
</body>
</html>
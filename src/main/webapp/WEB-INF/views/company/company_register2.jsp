<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
<%--   <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/company_assets/img/favicon.png"> --%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>공생 | 클래스 등록 - 스케줄 및 부가정보</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
<!--     Fonts and icons     -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<!-- CSS Files -->
<link href="${pageContext.request.contextPath }/resources/company_assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/resources/company_assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="${pageContext.request.contextPath }/resources/company_assets/demo/demo.css" rel="stylesheet" />
<!-- DatePicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- FullCalendar 필요한 라이브러리 추가 -->
<link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css' rel='stylesheet' />
  <!-- 이미지 업로드 자바스크립트 -->
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- Global CSS -->
<link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" />


<style type="text/css">

    /* FullCalendar 바탕색 변경 */
    .fc {
        background-color: white;
        border: 1px solid #ddd; /* 옵션: 테두리 추가 */
    }


.card {
	border: none;
	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
    background-color: #F1F3F5!important;	
}

.card label {
    font-size: 21px!important;
}

.form-control {
    height: 50px;
    font-size: 16px; /* 원하는 폰트 크기로 설정 */
    /* 추가적인 스타일링 */
    background-color: #fff;
    border-radius: 0; /* 모서리를 각진 형태로 설정 */
}


.input-group {
  height: 50px!important; 
  border-radius: 5px!important;
}

.day-checkbox {
    display: none; /* 체크박스 숨김 */
 }
 
.btn-day-selected {
    color: white;
    background-color: #007bff; /* 선택된 버튼의 스타일 */
  }
 
 /* 체크박스(요일) */
 
  .checkbox-label {
    /* 버튼처럼 보이도록 스타일링 */
    display: inline-block;
    padding: .5em 1em;
    text-align: center;
    border: 1px solid #ddd;
    border-radius: .25rem;
    background-color: #f8f9fa;
    cursor: pointer;
    transition: background-color .3s, color .3s;
  }

  .checkbox-label:hover {
    background-color: #e2e6ea; /* 호버 시 배경색 변경 */
  }

   /* 체크박스 체크시 스타일 */
  .checkbox-label.checked {
    background-color: lightgray;
    color: #fff;
  }
 
  #mon_checkbox,#tue_checkbox,#wed_checkbox,#thr_checkbox,#fri_checkbox,#sat_checkbox,#sun_checkbox {
 	display: none;
 }
  
  /* 모달창 */
  .modal_check, .modal_date, .modal_time,.modal_select {
   	margin-top: 5px; 
  }
  
  .modal_day_instruction {
  	font-size: 0.8em;
  }
  
  .modal_title {
  	margin-bottom: 20px;
  	font-size: 18px;
  	color: #666A73!important;
  }
  
  label {
  	color: #666A73!important;
  }
  
  
  @font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
  
 .btn-secondary  {
    font-family: 'NanumSquareNeo-Variable', sans-serif;
    font-size: 18px;
}
 

.custom-font-size {
    font-size: 18px;
} 


.content {
	background-color: #fff!important;
} 

.wrapper, .main-panel {
	overflow-y: hidden!important; /* 가로 스크롤 숨김 */
/* 	overflow-y: auto!important; /* 세로 스크롤 자동 조정 */ */
}

button {
    font-family: 'NanumSquareNeo-Variable', sans-serif;
}  
  
/* 커리큘럼 등록 */  
 	/* 이미지 미리보기 css */
	#img_preview0, #img_preview1, #img_preview2, #img_preview3, #img_preview4, #img_preview5{
		display: none;
		position: relative;
		
		margin:5px;
		
		width: 150px;
		height: 150px; 
		
/* 		border: 2px solid black; */
	
	}
	/* 미리보기 삭제버튼 css */
	#sum_style{
		text-align:center;
		width:75px;
		height:20spx;
	    position:absolute; 
		font-size:12px;
		outline:none;
		border:none;
		border-radius:15px;
	    right:70px;
	    bottom:130px;
	    /* z-index:1; */
	    background-color:rgba(0,0,0,0.5);
	    color:white;
	}
	.chk_style{
		vertical-align: middle;
		text-align:center;
		
		width:28px;
		height:28px;
	    position:absolute; 
		/* font-size:20px; */
		outline:none;
		border:none;
		border-radius:18px;
	    right:9px;
	    bottom:115px;
	    /* z-index:1; */
	    background-color:rgba(0,0,0,0.5);
	    color:#ffcccc;
	}
	
		
	/* 미리보기 삭제 css */
	#del_img1, #del_img2, #del_img3, #del_img4, #del_img5,#del_sum{
		cursor: pointer;
		display: none;
	}
	
	#imgup{
		margin-top: 5px;
	}
	
	/* 이미지 미리보기 css */
	#imgup_1,#imgup_2, #imgup_3, #imgup_4, #imgup_5,#imgup_sum {
		cursor: pointer;
		display: none;
	}
	
	
	.input-tag:focus{
		outline: none;
		border: 1px solid black;
	}

	
	/* 테이블 간의 간격 */
/* 	td { */
.curriculum-detail {
		width: 1020px;
		padding: 0.8em 1.4em 0.5em 0.8em;
	}
	
	.td1{
		width: 20%;
		vertical-align: top;
		
	}
	
	.td2{
		width: 80%;
	}
	
	#img_zone{
		
		/* background-color: black; */
/* 		margin: auto;  */
		width: 100%; 
		min-height: 50px;
		margin-bottom: 50px;
	}
	#img_intro{
		
		font-size:16px;
		color : skyblue;
		/* background-color: #ccffcc; */
		margin: auto; 
		width: 65%; 
		min-height: 50px;
	}
	
	/* 대표 사진 등록 */
	.pic_instruction {
		font-size: 14px;
		color: #666A73;
	}
	
	.custom-font-size {
    font-size: 18px;
}
  
  
  
</style>
</head>
<body class="클래스 등록">
	<div class="wrapper ">
		<div class="sidebar" data-color="orange">
		 <!-- Include sidebar_wrapper.jsp -->
            <jsp:include page="./sidebar_wrapper.jsp"/>
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
		</div>
		<div class="main-panel" id="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler">
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="#pablo">클래스 등록 (스케줄 및 부가정보)</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<form>
							<div class="input-group no-border">
								<input type="text" value="" class="form-control"
									placeholder="Search...">
								<div class="input-group-append">
									<div class="input-group-text">
										<i class="now-ui-icons ui-1_zoom-bold"></i>
									</div>
								</div>
							</div>
						</form>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<i class="now-ui-icons media-2_sound-wave"></i>
									<p>
										<span class="d-lg-none d-md-block">Stats</span>
									</p>
							</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i
									class="now-ui-icons location_world"></i>
									<p>
										<span class="d-lg-none d-md-block">Some Actions</span>
									</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a> <a
										class="dropdown-item" href="#">Something else here</a>
								</div></li>
									<li class="nav-item">
								<a class="nav-link" href="#pablo">
									<i class="now-ui-icons users_single-02"></i>
									<p>
										<span class="d-lg-none d-md-block">Account</span>
									</p>
								</a>
							  </li>
							</ul>
						</div>
					</div>
				</nav>
			<!-- End Navbar -->
			<div class="panel-header panel-header-sm"></div>
			<div class="content">
				<div class="row">
					<div class="col-md-11">
						<div class="card">
							<div class="card-header">
								<h5 class="title">클래스 등록 (스케줄 및 부가정보)</h5>
							</div>
							<div class="card-body">
								<form>
									<div class="col-md-10 pl-1">
										<div class="form-group">
											<label for="modal_title">일정 설정</label>
											<!-- 새로운 div에 '일정 등록' 버튼 추가 -->
											<div class="row">
												<div class="col-md-12 text-right">
													<button type="button" class="btn btn-secondary"
														data-toggle="modal" data-target="#scheduleModal">일정
														등록</button>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<!-- 모달창 -->
													<div class="modal fade" id="scheduleModal" tabindex="-1"
														role="dialog" aria-labelledby="scheduleModalLabel"
														aria-hidden="true">
														<div class="modal-dialog" role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="scheduleModalLabel">일정
																		등록</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																	</button>
																</div>
																<div class="modal-body">
																	<form>
																		<div class="row">
																			<div class="col-md-12 pr-1 mb-3">
																				<div class="form-group">
																					<span class="modal_title">요일</span><br>
																					<!-- ====================================== -->
																					<div class="modal_check">
																						<input type="checkbox" id="mon_checkbox"
																							onclick="updateCheckboxValue(this);"> <label
																							for="mon_checkbox" class="checkbox-label">월</label>
																						<input type="hidden" name="class_day" value="1">

																						<input type="checkbox" id="tue_checkbox"
																							onclick="updateCheckboxValue(this);"> <label
																							for="tue_checkbox" class="checkbox-label">화</label>
																						<input type="hidden" name="class_day" value="２1">

																						<input type="checkbox" id="wed_checkbox"
																							onclick="updateCheckboxValue(this);"> <label
																							for="wed_checkbox" class="checkbox-label">수</label>
																						<input type="hidden" name="class_day" value="３1">

																						<input type="checkbox" id="thr_checkbox"
																							onclick="updateCheckboxValue(this);"> <label
																							for="thr_checkbox" class="checkbox-label">목</label>
																						<input type="hidden" name="class_day" value="4">

																						<input type="checkbox" id="fri_checkbox"
																							onclick="updateCheckboxValue(this);"> <label
																							for="fri_checkbox" class="checkbox-label">금</label>
																						<input type="hidden" name="class_day" value="5">

																						<input type="checkbox" id="sat_checkbox"
																							onclick="updateCheckboxValue(this);"> <label
																							for="sat_checkbox" class="checkbox-label">토</label>
																						<input type="hidden" name="class_day" value="6">

																						<input type="checkbox" id="sun_checkbox"
																							onclick="updateCheckboxValue(this);"> <label
																							for="sun_checkbox" class="checkbox-label">일</label>
																						<input type="hidden" name="class_day" value="0">
																						<br>
																					</div>
																					<p class="modal_day_instruction">하나 이상의 운영요일이
																						선택되어야 합니다.</p>
																				</div>
																			</div>
																		</div>
																		<div class="row">
																			<div class="col-md-8 pr-1 mb-3">
																				<span class="modal_title">날짜</span><br>
																				<div class="modal_date">
																				    <div class="form-group">
																				        <input type="date" id="startDate">&nbsp; ~ &nbsp;<input type="date" id="endDate"> <br>
																				    </div>
																				</div>
																			</div>
																		</div>
																		<div class="row">
																			<div class="col-md-8 pr-1 mb-3">
																				<div class="form-group">
																					<span class="modal_title">클래스 운영시간(한 타임당)</span><br>
																					<div class="modal_time">
																						<input type="time">&nbsp; ~ &nbsp;<input
																							type="time"> <br>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="row">
																			<div class="col-md-8 pr-1 mb-2">
																				<div class="form-group">
																					<span class="modal_title">클래스 최대 인원(한 타임당)</span>
																					<div class="modal_select">
																						<select class="form-control">
																							<option>1명</option>
																							<option>2명</option>
																							<option>3명</option>
																							<option>4명</option>
																							<option>5명</option>
																							<option>6명</option>
																							<option>7명</option>
																							<option>8명</option>
																							<option>9명</option>
																							<option>10명</option>
																						</select>
																					</div>
																				</div>
																			</div>
																		</div>
																</div>
																<!-- 모달 내부 -->
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary"
																		id="saveButton">저장</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>
													<!-- 달력을 표시할 div -->
													<div id="calendar"></div>
													<br> <br>
												</div>
											</div>
										</div>
									</div>
									<!-- ============================================================= -->
									<div class="col-md-12 pr-7">
										<div class="form-group">
											<label>커리큘럼 상세 사진등록</label> <span class="pro_info"
												id="img_number">(0/3)</span>
											<div class="pic_instruction">
												- 사진은 대표 이미지 포함 최대 3장까지 첨부할 수 있습니다.<br>
												&nbsp;&nbsp;(1:1 비율 권장 / 최소 800px 이상 / 한 장당 최대 10MB)<br>
												- 등록된 사진은 공생 SNS, 광고 등 외부 채널에 클래스 홍보 목적으로 사용될 수 있습니다.<br>
											</div>
											<!--                         <input type="text" class="form-control" placeholder="Company" value="Mike"> -->
											<!-- ========================================================================== -->
											<!-- 파일업로드 용 폼 -->
											<form enctype="multipart/form-data" id="imgform" method="post">
												<input type="file" id="sumimage" style="display: none;"
													accept=".jpg, .jpeg, .png"> <input type="file"
													id="imageFile1" style="display: none;"
													accept=".jpg, .jpeg, .png"> <input type="file"
													id="imageFile2" style="display: none;"
													accept=".jpg, .jpeg, .png">
											</form>
											<table style="margin-top: 30px;">
												<tr>
													<!-- 								<td class="td2" align="left"> -->
													<td class="td2 curriculum-detail" align="left">
														<!-- 이미지 등록 영역 -->
														<div id="img_zone">
															<div id="img_preview0">
																<input type="image" id="imgup_sum" onclick="send_0();"
																	src="" width="150px" height="150px"> <span
																	id="sum_style">대표 이미지</span>
																<!-- 삭제버튼 -->
																<span id="del_sum" class="chk_style"
																	onclick="del_sum();">x</span>
															</div>


															<div id="img_preview1">
																<input type="image" id="imgup_1" onclick="send_1();"
																	src="" width="150px" height="150px">
																<!-- 삭제버튼 -->
																<span id="del_img1" class="chk_style"
																	onclick="del_img1();">x</span>
															</div>

															<div id="img_preview2">
																<input type="image" id="imgup_2" onclick="send_2();"
																	src="" width="150px" height="150px"> <span
																	id="del_img2" class="chk_style" onclick="del_img2();">x</span>
															</div>
														</div>
													</td>
												</tr>
												<!-- 이미지영역끝 -->
												<tr>
													<td class="td1" align="left"><input type="button"
														id="imgup" onclick="img_preview();" value="대표 이미지 업로드"
														style="width: 150px; height: 50px; border-radius: 10px; border: 1px solid; background-image: url('${ pageContext.request.contextPath }/resources/img/image_upload.png'); background-size: cover;">
													</td>
												</tr>
											</table>
											<br> <br>
											<!-- ========================================================================== -->
											<div class="row">
												<div class="col-md-12 pl-1">
													<label>1단계) 상세 내용</label>
													<div class="input-group">
														<input type="text" class="form-control" placeholder="커리큘럼 1단계 상세내용을 입력해주세요">
													</div>
												</div>
												<div class="col-md-12 pl-1">
													<label>2단계) 상세 내용</label>
													<div class="input-group">
														<input type="text" class="form-control" placeholder="커리큘럼 2단계 상세내용을 입력해주세요">
													</div>
												</div>
												<div class="col-md-12 pl-1">
													<label>3단계) 상세 내용</label>
													<div class="input-group">
														<input type="text" class="form-control" placeholder="커리큘럼 3단계 상세내용을 입력해주세요">
													</div>
												</div>
												<br><br>
												<div class="col-md-4 pl-1">
													<label>판매가격</label>
													<div class="input-group">
														<input type="text" class="form-control"
															placeholder="ex) 100,000">
														<div class="input-group-append">
															<span class="input-group-text">원</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================= -->
									</div>
								</form>
							</div>
						</div>
					<div class="col-md-11 pl-1">	
					<div class="submit_btn d-flex justify-content-end">
						<button type="button" class="btn btn-danger btn-col-md-4 mr-2 custom-font-size">취소</button>
						<button type="button" class="btn btn-default btn-col-md-4 mr-2 custom-font-size" onclick="location.href='${pageContext.request.contextPath}/company/class/register1'">이전</button>
						<button type="button" class="btn btn-default btn-col-md-4  custom-font-size" onclick="location.href='${pageContext.request.contextPath}/company/class/register3'">다음</button>
					</div>
					</div>
					</div>
				</div>
			</div>
			<footer class="footer">
			</footer>
		</div>
	</div>
<!-- 하단에 위치시킨 단일 jQuery 라이브러리 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/locale/ko.js"></script>

<!--   Core JS Files   -->
<!-- Popper.js, then Bootstrap JS -->
<script src="${pageContext.request.contextPath }/resources/company_assets/js/core/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/company_assets/js/core/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!-- ... 나머지 스크립트 파일 ... -->
	<!-- Chart JS -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
	<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/demo/demo.js"></script>
	
<script>
    $(document).ready(function() {
        // 달력 초기화
        $('#calendar').fullCalendar({
            // 한글화 적용
            locale: 'ko',
        	
            // 헤더 설정
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            // 기본 날짜 설정 (옵션)
            defaultDate: moment().format('YYYY-MM-DD'),
            // 이벤트 로드
            events: function(start, end, timezone, callback) {
                $.ajax({
                    url: '/your-endpoint', // 실제 서버의 엔드포인트로 변경하세요.
                    method: 'GET',
                    dataType: 'json',
                    data: {
                        // 서버에 전달할 파라미터 (옵션)
                    },
                    success: function(response) {
                        var events = [];
                        $.each(response, function() { // $(response) 대신 $.each 사용
                            events.push({
                                title: this.title, // $(this) 대신 this 사용
                                start: this.start, // 날짜 형식이 맞는지 확인
                                end: this.end, // 날짜 형식이 맞는지 확인
                                // 추가 이벤트 속성
                            });
                        });
                        callback(events);
                    }
                });
            },
            // 날짜 및 시간 형식
            timeFormat: 'H(:mm)',
            // 클릭 이벤트 핸들러
            eventClick: function(calEvent, jsEvent, view) {
                alert('Event: ' + calEvent.title);
                // 추가 동작
            },
            // FullCalendar 기타 설정
        });
    
        // -----------------------------------------
        
       // 모달에서 '저장' 버튼을 눌렀을 때의 이벤트 핸들러
        $('#saveButton').click(function() {
            var title = '클래스'; // 이벤트 제목 설정 (필요에 따라 변경 가능)
            var start = $('#startDate').val(); // 시작 날짜
            var end = $('#endDate').val(); // 종료 날짜
            var allDay = false; // 하루 종일 여부

            // 이벤트 데이터 객체 생성
            var eventData = {
                title: title,
                start: start,
                end: end,
                allDay: allDay
            };

            // 캘린더에 이벤트 추가
            $('#calendar').fullCalendar('renderEvent', eventData, true);

            // 모달창 닫기
            $('#scheduleModal').modal('hide');
        });
        
        
        
        // -----------------------------------------
    });
    
    function updateCheckboxValue(checkbox) {
        var label = document.querySelector('label[for="' + checkbox.id + '"]');
        if (checkbox.checked) {
          label.classList.add('checked');
        } else {
          label.classList.remove('checked');
        }
      }

      $(document).ready(function() {
        // 체크박스 상태에 따라 레이블 스타일 초기 설정
        $('input[type="checkbox"]').each(function() {
          updateCheckboxValue(this);
        });
      });

      
      // -----------------------------------------
      // 커리큘럼
      
       //<!-- 이미지 추가버튼 스크립트 -->--------------------
	var preview_array  = [false, false, false];
	
	<!-- 이미지 등록시 미리보기 추가 작업 -->
	function img_preview() {

		for(var i=0; i<preview_array.length; i++){

// 			for(var i=0; i<preview_array.length; i++){
// 				if(i=[i]){
// 					if(preview_array[i]==false){
// 						send_[i]();
// 						return;
// 					}
// 				}
// 			}
			
			
			/* i가 0일때 */
			if(i==0){
				/* 0번사진 비어있으면 */
				if(preview_array[0]==false){
					/* 섬네일사진 */
					/* 0번사진 인풋태그 호출 */
					send_0();
					return;
				}
			}
			
			/* i가1일때 */
			if(i==1){
				/* 1번사진이 비어있으면 */
				if(preview_array[1]==false){
					/* 1번사진 인풋태그 호출 */
					send_1();
					return;
				}
			}
			
			/* i가 2일때 */
			if(i==2){
				/* 2번사진 비어있으면 */
				if(preview_array[2]==false){
					/* 2번사진 인풋태그 호출 */
					send_2();
					return;
				}
			}
			

		}/*  for end */
		
		alert("더이상 등록할 수 없습니다.");
		return;
		
	}/* 프리뷰 end */

//-----------------------------------------------------

//<!-- 이미지 장수 표현 함수 -->-----------------------
	function img_num() {
		var img_number = 0;
		
		for(var i=0; i<preview_array.length; i++ ){
			if(preview_array[i]==true){
				img_number++;
			}	
		}
		/* 이미지 장수 표시 */
		$("#img_number").html('('+ img_number + '/3)');
	}
	
	//-----------------------------------------------------------

	
	
	function send_0() {
		$("#sumimage").click();
	}
	
	$(function(){
		$("#sumimage").on('change',function(){
			if( $("#sumimage")[0].files[0]==undefined) {
				return;
			}
			imgcheck0(this);
			
		})
		
	});



//<!-- 이미지 미리보기 -->-----------------------------------

	function imgcheck0(input) {
		
		/* 이미지 확장자 파일체크 */
		var file_kind = input.value.lastIndexOf('.');
		var file_name = input.value.substring(file_kind+1,input.length);
		var file_type = file_name.toLowerCase();

		var check_array = new Array( 'jpg','png','jpeg' );

		$('#sumimage').val();
		
		if(check_array.indexOf(file_type)==-1){
			
			/* 사용자에게 알려주고 */
			alert('이미지 파일만 선택할 수 있습니다.');
			/* 실제 업로드 되는 input태그 vlaue값 지우기 */
			$('#sumimage').val('');
			
			return;
		
		} 

		
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
		        $('#imgup_sum').attr('src', e.target.result);
		        
		        $("#img_preview0").css("display","inline-block");
				$("#imgup_sum").show();
		        $("#del_sum").show();
		       
				preview_array[0] = true;
				
				/* 이미지넘버 변경 */
				img_num();
			
			
	        }
	        
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	
	
	/* 1번사진 */
	
	function send_1() {
		$("#imageFile1").click();
	}
	
	$(function(){
		$("#imageFile1").on('change',function(){
			/* 파일선택 취소했을때 */
			if( $("#imageFile1")[0].files[0]==undefined) {
				return;
			}
			imgcheck1(this);
		})
		
	});
	
	function imgcheck1(input) {
		
		/* 이미지 확장자 파일체크 */
		var file_kind = input.value.lastIndexOf('.');
		var file_name = input.value.substring(file_kind+1,input.length);
		var file_type = file_name.toLowerCase();

		var check_array = new Array( 'jpg','png','jpeg' );

		
		if(check_array.indexOf(file_type)==-1){
			
			alert('이미지 파일만 선택할 수 있습니다.');
			/* 실제 업로드 되는 input태그 vlaue값 지우기 */
			$('#imageFile1').val('');
			
			return;
		
		} 
		
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	        
	        	$('#imgup_1').attr('src', e.target.result);
	        	//배열에 트루값주기, 트루면 업로드 못함
	        
	        	$("#img_preview1").css("display","inline-block");
	        	$("#imgup_1").show();
	        	$("#del_img1").show();
	        	
	        	preview_array[1] = true;
				
	        	/* 이미지넘버 변경 */
	        	img_num();
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}

	/* 2번사진 */

	function send_2() {
		$("#imageFile2").click();
	}
	
	$(function(){
		$("#imageFile2").on('change',function(){
			/* 파일선택 취소했을때 */
			if( $("#imageFile2")[0].files[0]==undefined) {
				return;
			}
			imgcheck2(this);
		})
		
	});
	
	
	
	function imgcheck2(input) {
		
		/* 이미지 확장자 파일체크 */
		var file_kind = input.value.lastIndexOf('.');
		var file_name = input.value.substring(file_kind+1,input.length);
		var file_type = file_name.toLowerCase();

		var check_array = new Array( 'jpg','png','jpeg' );
		
		if(check_array.indexOf(file_type)==-1){
			alert('이미지 파일만 선택할 수 있습니다.');
			/* 실제 업로드 되는 input태그 vlaue값 지우기 */
			$('#imageFile2').val('');
			
			return;
		
		} 
		
		
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
				$('#imgup_2').attr('src', e.target.result);
				
				 $("#img_preview2").css("display","inline-block");
				$("#imgup_2").show();
				$("#del_img2").show();
				
				preview_array[2] = true;
	        	/* 이미지넘버 변경 */
				img_num();
	       
	        }
	        
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	//<!-- 이미지미리보기삭제 -->--------------------------------

	function del_sum() {
		/* alert('썸네일이미지 지움'); */
		/* 실제 DB에 들어가는 input value 지움 */
		$('#sumimage').val('');
		
      $("#img_preview0").css("display","none");
		$('#imgup_sum').hide();
		$("#del_sum").hide(); 
		
		/* 썸네일 비움 */
		preview_array[0] = false;
		
		/* 이미지 넘버변경 */
		img_num();
		
		return;
	}


	function del_img1() {
		/* alert('1번이미지 지움'); */
		
		$('#imageFile1').val('');
		
		$("#img_preview1").css("display","none");
		$('#imgup_1').hide();
		$("#del_img1").hide();
		
		/* 1번사진 비움 */
		preview_array[1] = false;
		
		/* 이미지 넘버변경 */
		img_num();
		
		return;
	}
	
	function del_img2() {
		/* alert('2번이미지 지움'); */
		
		$('#imageFile2').val('');
		
		$("#img_preview2").css("display","none");
		$('#imgup_2').hide();
		$("#del_img2").hide();
		
		/* 2번사진 비움 */
		preview_array[2] = false;
		
		/* 이미지 넘버변경 */
		img_num();
		
		return;
	}
  
  /* 일정 등록 */    
// 이 함수는 모달에서 '저장' 버튼을 클릭했을 때 실행됩니다.
// 모달에서 '저장' 버튼을 클릭했을 때 실행되는 함수
function addEventsToCalendar() {
    var startDate = $('#startDate').val(); // 시작 날짜
    var endDate = $('#endDate').val(); // 종료 날짜
    var selectedDays = []; // 선택된 요일들을 저장하는 배열

    // 요일 체크박스들을 순회하면서 선택된 요일을 배열에 추가
    $('input[type="checkbox"]').each(function() {
        if (this.checked) {
            selectedDays.push(this.id);
        }
    });

    var currentDate = moment(startDate);
    var lastDate = moment(endDate);

    // 시작 날짜부터 종료 날짜까지 순회
    while (currentDate <= lastDate) {
        var day = currentDate.format('ddd').toLowerCase(); // 현재 날짜의 요일 (예: 'mon', 'tue')

        // 만약 현재 날짜의 요일이 선택된 요일에 포함되면 이벤트를 추가
        if (selectedDays.includes(day)) {
            $('#calendar').fullCalendar('renderEvent', {
                title: '클래스', // 이벤트 제목
                start: currentDate.format('YYYY-MM-DD'), // 이벤트 시작 날짜
                allDay: true // 하루 종일 이벤트
            });
        }
        currentDate.add(1, 'days'); // 다음 날짜로 이동
    }
}

$('#saveButton').click(function(event) {
    event.preventDefault(); // 기본 동작 방지
    addEventsToCalendar(); // 달력에 이벤트 추가 함수 호출
    $('#scheduleModal').modal('hide'); // 모달 닫기
});
</script>
</body>

</html>
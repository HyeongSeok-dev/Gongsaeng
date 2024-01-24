<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">


<title>profile projects - Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">

.custom-center {
    margin-left: auto;
    margin-right: auto;
}

body {
	margin-top:20px;
	background:#f7f8fa
}

.avatar-xxl {
    height: 7rem;
    width: 7rem;
}

.card {
    margin-bottom: 20px;
    -webkit-box-shadow: 0 2px 3px #eaedf2;
    box-shadow: 0 2px 3px #eaedf2;
}

.pb-0 {
    padding-bottom: 0!important;
}

.font-size-16 {
    font-size: 16px!important;
}
.avatar-title {
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    background-color: #038edc;
    color: #fff;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    font-weight: 500;
    height: 100%;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    width: 100%;
}

.bg-soft-primary {
    background-color: rgba(3,142,220,.15)!important;
}
.rounded-circle {
    border-radius: 50%!important;
}

.nav-tabs-custom .nav-item .nav-link.active {
    color: #038edc;
}
.nav-tabs-custom .nav-item .nav-link {
    border: none;
}
.nav-tabs-custom .nav-item .nav-link.active {
    color: #038edc;
}

.avatar-group {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    padding-left: 12px;
}

.border-end {
    border-right: 1px solid #eff0f2 !important;
}

.d-inline-block {
    display: inline-block!important;
}

.badge-soft-danger {
    color: #f34e4e;
    background-color: rgba(243,78,78,.1);
}

.badge-soft-warning {
    color: #f7cc53;
    background-color: rgba(247,204,83,.1);
}

.badge-soft-success {
    color: #51d28c;
    background-color: rgba(81,210,140,.1);
}

.avatar-group .avatar-group-item {
    margin-left: -14px;
    border: 2px solid #fff;
    border-radius: 50%;
    -webkit-transition: all .2s;
    transition: all .2s;
}

.avatar-sm {
    height: 2rem;
    width: 2rem;
}

.nav-tabs-custom .nav-item {
    position: relative;
    color: #343a40;
}

.nav-tabs-custom .nav-item .nav-link.active:after {
    -webkit-transform: scale(1);
    transform: scale(1);
}

.nav-tabs-custom .nav-item .nav-link::after {
    content: "";
    background: #038edc;
    height: 2px;
    position: absolute;
    width: 100%;
    left: 0;
    bottom: -2px;
    -webkit-transition: all 250ms ease 0s;
    transition: all 250ms ease 0s;
    -webkit-transform: scale(0);
    transform: scale(0);
}

.badge-soft-secondary {
    color: #74788d;
    background-color: rgba(116,120,141,.1);
}

.badge-soft-secondary {
    color: #74788d;
}

.work-activity {
    position: relative;
    color: #74788d;
    padding-left: 5.5rem
}

.work-activity::before {
    content: "";
    position: absolute;
    height: 100%;
    top: 0;
    left: 66px;
    border-left: 1px solid rgba(3,142,220,.25)
}

.work-activity .work-item {
    position: relative;
    border-bottom: 2px dashed #eff0f2;
    margin-bottom: 14px
}

.work-activity .work-item:last-of-type {
    padding-bottom: 0;
    margin-bottom: 0;
    border: none
}

.work-activity .work-item::after,.work-activity .work-item::before {
    position: absolute;
    display: block
}

.work-activity .work-item::before {
    content: attr(data-date);
    left: -157px;
    top: -3px;
    text-align: right;
    font-weight: 500;
    color: #74788d;
    font-size: 12px;
    min-width: 120px
}

.work-activity .work-item::after {
    content: "";
    width: 10px;
    height: 10px;
    border-radius: 50%;
    left: -26px;
    top: 3px;
    background-color: #fff;
    border: 2px solid #038edc
}

#banFollow1, #banFollow2, #banFollow3 {
margin-top: 10px;
}

#banFollow2 {
margin-left: 10px;
}
    </style>
    <!-- 부트스트랩 CSS 링크 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
</head>
<body>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/7.2.96/css/materialdesignicons.min.css" integrity="sha512-LX0YV/MWBEn2dwXCYgQHrpa9HJkwB+S+bnBpifSOTO1No27TqNMKYoAn6ff2FBh03THAzAiiCwQ+aPX+/Qt/Ow==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<div class="container">
<div class="row">
<!-- <div class="col-xl-8"> -->
<div class="col-xl-8 custom-center">
<div class="card">
<div class="card-body pb-0">
<div class="row align-items-center">
<div class="col-md-3">
<div class="text-center border-end">
<img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="img-fluid avatar-xxl rounded-circle" alt>
<h4 class="text-primary font-size-20 mt-3 mb-2">Jansh Wells</h4>
<!-- <h5 class="text-muted font-size-13 mb-0">Web Designer</h5> -->
</div>
</div>
<div class="col-md-9">
<div class="ms-3">
<div>
<h4 class="card-title mb-2">사업체명</h4>
<p class="mb-0 text-muted">강사 간단한 소개 적어주세용</p>
</div>
<div class="row my-4">
<div class="col-md-12">
<div>
<p class="text-muted mb-2 fw-medium"><i class="mdi mdi-email-outline me-2"></i><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="0b416a6578637c6e6767784b7b796469626825686466">[강사 이메일]</a>
</p>
<p class="text-muted fw-medium mb-0"><i class="mdi mdi-phone-in-talk-outline me-2"></i>[강사 폰번호]
</p>
<div class="company_profile_high_btn">
<button type="button" class="btn btn-outline-warning" id="banFollow1">팔로우</button>
<button type="button" class="btn btn-light" id="banFollow3">문의하기(채팅)</button>
<a href=""><img src="${pageContext.request.contextPath }/resources/img/company_share.png" id="banFollow2"></a>
</div>
</div>
</div>
</div>
<!-- 탭 링크 -->
<ul class="nav nav-tabs nav-tabs-custom border-bottom-0 mt-3 nav-justified" role="tablist">
    <li class="nav-item" role="presentation">
        <a class="nav-link active" data-bs-toggle="tab" href="#profile-tab" role="tab" aria-selected="true">반장 프로필</a>
    </li>
    <li class="nav-item" role="presentation">
        <a class="nav-link" data-bs-toggle="tab" href="#class-tab" role="tab" aria-selected="false">클래스</a>
    </li>
    <li class="nav-item" role="presentation">
        <a class="nav-link" data-bs-toggle="tab" href="#reviews-tab" role="tab" aria-selected="false">수강후기</a>
    </li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="card">
<div class="tab-content p-4">
<!-- <div class="tab-content"> -->
    <div id="profile-tab" class="tab-pane fade show active" role="tabpanel">
        <h4>반장 프로필 내용</h4>
        <!-- 반장 프로필 관련 내용 -->
    </div>
    <div id="class-tab" class="tab-pane fade" role="tabpanel">
        <h4>클래스 내용</h4>
        <!-- 클래스 관련 내용 -->
    </div>
    <div id="reviews-tab" class="tab-pane fade" role="tabpanel">
        <h4>수강후기 내용</h4>
        <!-- 수강후기 관련 내용 -->
    </div>
<!-- </div> -->
</div>
</div>
</div>
</div>
</div>
<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>
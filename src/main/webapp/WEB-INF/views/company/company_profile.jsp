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
    	body{margin-top:20px;
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

#banFollow1, #banFollow2 {
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
<div class="col-xl-8">
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
<img src="${pageContext.request.contextPath }/resources/img/company_share.png" id="banFollow2">
</div>
</div>
</div>
</div>
<ul class="nav nav-tabs nav-tabs-custom border-bottom-0 mt-3 nav-justfied" role="tablist">
<li class="nav-item" role="presentation">
<a class="nav-link px-4 active" data-bs-toggle="tab" href="#projects-tab" role="tab" aria-selected="false" tabindex="-1">
<span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
<span class="d-none d-sm-block">반장 프로필</span>
</a>
</li>
<li class="nav-item" role="presentation">
<a class="nav-link px-4" href="https://bootdey.com/snippets/view/profile-task-with-team-cards" target="__blank">
<span class="d-block d-sm-none"><i class="mdi mdi-menu-open"></i></span>
<span class="d-none d-sm-block">클래스</span>
</a>
</li>
<li class="nav-item" role="presentation">
<a class="nav-link px-4 " href="https://bootdey.com/snippets/view/profile-with-team-section" target="__blank">
<span class="d-block d-sm-none"><i class="mdi mdi-account-group-outline"></i></span>
<span class="d-none d-sm-block">수강후기</span>
</a>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="card">
<div class="tab-content p-4">
<div class="tab-pane active show" id="projects-tab" role="tabpanel">
<div class="d-flex align-items-center">
<div class="flex-1">
<h4 class="card-title mb-4">Projects</h4>
</div>
</div>
<div class="row" id="all-projects">
<div class="col-md-6" id="project-items-1">
<div class="card">
<div class="card-body">
<div class="d-flex mb-3">
<div class="flex-grow-1 align-items-start">
<div>
<h6 class="mb-0 text-muted">
<i class="mdi mdi-circle-medium text-danger fs-3 align-middle"></i>
<span class="team-date">21 Jun, 2021</span>
</h6>
</div>
</div>
<div class="dropdown ms-2">
<a href="#" class="dropdown-toggle font-size-16 text-muted" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="mdi mdi-dots-horizontal"></i>
</a>
<div class="dropdown-menu dropdown-menu-end">
<a class="dropdown-item" href="javascript: void(0);" data-bs-toggle="modal" data-bs-target=".bs-example-new-project" onclick="editProjects('project-items-1')">Edit</a>
<a class="dropdown-item" href="javascript: void(0);">Share</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item delete-item" onclick="deleteProjects('project-items-1')" data-id="project-items-1" href="javascript: void(0);">Delete</a>
</div>
</div>
</div>
<div class="mb-4">
<h5 class="mb-1 font-size-17 team-title">Marketing</h5>
<p class="text-muted mb-0 team-description">Every Marketing Plan
Needs</p>
</div>
<div class="d-flex">
<div class="avatar-group float-start flex-grow-1 task-assigne">
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-inline-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-6" aria-label="Terrell Soto" data-bs-original-title="Terrell Soto">
<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt class="rounded-circle avatar-sm">
</a>
</div>
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-inline-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-1" aria-label="Ruhi Shah" data-bs-original-title="Ruhi Shah">
<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt class="rounded-circle avatar-sm">
</a>
</div>
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-15" data-bs-original-title="Denny Silva">
<div class="avatar-sm">
<div class="avatar-title rounded-circle bg-primary">
D
</div>
</div>
</a>
</div>
</div>
<div class="align-self-end">
<span class="badge badge-soft-danger p-2 team-status">Pending</span>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-6" id="project-items-2">
<div class="card">
<div class="card-body">
<div class="d-flex mb-3">
<div class="flex-grow-1 align-items-start">
<div>
<h6 class="mb-0 text-muted">
<i class="mdi mdi-circle-medium text-success fs-3 align-middle"></i>
<span class="team-date">13 Aug, 2021</span>
</h6>
</div>
</div>
<div class="dropdown ms-2">
<a href="#" class="dropdown-toggle font-size-16 text-muted" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="mdi mdi-dots-horizontal"></i>
</a>
<div class="dropdown-menu dropdown-menu-end">
<a class="dropdown-item" href="javascript: void(0);" data-bs-toggle="modal" data-bs-target=".bs-example-new-project" onclick="editProjects('project-items-2')">Edit</a>
<a class="dropdown-item" href="javascript: void(0);">Share</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item delete-item" href="javascript:void(0);" onclick="deleteProjects('project-items-2')" data-id="project-items-2">Delete</a>
</div>
</div>
</div>
<div class="mb-4">
<h5 class="mb-1 font-size-17 team-title">Website Design</h5>
<p class="text-muted mb-0 team-description">Creating the design
and layout of a
website.</p>
</div>
<div class="d-flex">
<div class="avatar-group float-start flex-grow-1 task-assigne">
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-inline-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-10" aria-label="Kelly Osborn" data-bs-original-title="Kelly Osborn">
<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt class="rounded-circle avatar-sm">
</a>
</div>
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-inline-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-2" aria-label="John Page" data-bs-original-title="John Page">
<img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt class="rounded-circle avatar-sm">
</a>
</div>
</div>
<div class="align-self-end">
<span class="badge badge-soft-success p-2 team-status">Completed</span>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-6" id="project-items-3">
<div class="card">
<div class="card-body">
<div class="d-flex mb-3">
<div class="flex-grow-1 align-items-start">
<div>
<h6 class="mb-0 text-muted">
<i class="mdi mdi-circle-medium text-warning fs-3 align-middle"></i>
<span class="team-date">08 Sep, 2021</span>
</h6>
</div>
</div>
<div class="dropdown ms-2">
<a href="#" class="dropdown-toggle font-size-16 text-muted" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="mdi mdi-dots-horizontal"></i>
</a>
<div class="dropdown-menu dropdown-menu-end">
<a class="dropdown-item" href="javascript: void(0);" data-bs-toggle="modal" data-bs-target=".bs-example-new-project" onclick="editProjects('project-items-3')">Edit</a>
<a class="dropdown-item" href="javascript: void(0);">Share</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item delete-item" href="javascript: void(0);" data-id="project-items-3" onclick="deleteProjects('project-items-3')">Delete</a>
</div>
</div>
</div>
<div class="mb-4">
<h5 class="mb-1 font-size-17 team-title">UI / UX Design</h5>
<p class="text-muted mb-0 team-description">Plan and onduct user
research and analysis</p>
</div>
<div class="d-flex">
<div class="avatar-group float-start flex-grow-1 task-assigne">
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-inline-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-3" aria-label="Judy Newland" data-bs-original-title="Judy Newland">
<img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt class="rounded-circle avatar-sm">
</a>
</div>
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-inline-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-5" aria-label="Jeffery Legette" data-bs-original-title="Jeffery Legette">
<img src="https://bootdey.com/img/Content/avatar/avatar5.png" alt class="rounded-circle avatar-sm">
</a>
</div>
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-inline-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-6" aria-label="Jose Rosborough" data-bs-original-title="Jose Rosborough">
<img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt class="rounded-circle avatar-sm">
</a>
</div>
</div>
<div class="align-self-end">
<span class="badge badge-soft-warning p-2 team-status">Progress</span>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-6" id="project-items-4">
<div class="card">
<div class="card-body">
<div class="d-flex mb-3">
<div class="flex-grow-1 align-items-start">
<div>
<h6 class="mb-0 text-muted">
<i class="mdi mdi-circle-medium text-danger fs-3 align-middle"></i>
<span class="team-date">20 Sep, 2021</span>
</h6>
</div>
</div>
<div class="dropdown ms-2">
<a href="#" class="dropdown-toggle font-size-16 text-muted" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="mdi mdi-dots-horizontal"></i>
</a>
<div class="dropdown-menu dropdown-menu-end">
<a class="dropdown-item" href="javascript: void(0);" data-bs-toggle="modal" data-bs-target=".bs-example-new-project" onclick="editProjects('project-items-4')">Edit</a>
<a class="dropdown-item" href="javascript: void(0);">Share</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item delete-item" href="javascript:void(0);" data-id="project-items-4" onclick="deleteProjects('project-items-4')">Delete</a>
</div>
</div>
</div>
<div class="mb-4">
<h5 class="mb-1 font-size-17 team-title">Testing</h5>
<p class="text-muted mb-0 team-description">The procurement
specifications should
describe</p>
</div>
<div class="d-flex">
<div class="avatar-group float-start flex-grow-1 task-assigne">
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-inline-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-10" aria-label="Jansh Wells" data-bs-original-title="Jansh Wells">
<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt class="rounded-circle avatar-sm">
</a>
</div>
</div>
<div class="align-self-end">
<span class="badge badge-soft-danger p-2 team-status">Pending</span>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-6" id="project-items-5">
<div class="card mb-lg-0">
<div class="card-body">
<div class="d-flex mb-3">
<div class="flex-grow-1 align-items-start">
<div>
<h6 class="mb-0 text-muted">
<i class="mdi mdi-circle-medium text-success fs-3 align-middle"></i>
<span class="team-date">12 April, 2021</span>
</h6>
</div>
</div>
<div class="dropdown ms-2">
<a href="#" class="dropdown-toggle font-size-16 text-muted" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="mdi mdi-dots-horizontal"></i>
</a>
<div class="dropdown-menu dropdown-menu-end">
<a class="dropdown-item" href="javascript: void(0);" data-bs-toggle="modal" data-bs-target=".bs-example-new-project" onclick="editProjects('project-items-5')">Edit</a>
<a class="dropdown-item" href="javascript: void(0);">Share</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item delete-item" onclick="deleteProjects('project-items-5')" data-id="project-items-5" href="javascript: void(0);">Delete</a>
</div>
</div>
</div>
<div class="mb-4">
<h5 class="mb-1 font-size-17 team-title">Typography</h5>
<p class="text-muted mb-0 team-description">Typography is the
style or appearance
of text.</p>
</div>
<div class="d-flex">
<div class="avatar-group float-start flex-grow-1 task-assigne">
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-inline-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-1" aria-label="Ruhi Luft" data-bs-original-title="Ruhi Luft">
<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt class="rounded-circle avatar-sm">
</a>
</div>
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-inline-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-5" aria-label="Elias Hardage" data-bs-original-title="Elias Hardage">
<img src="https://bootdey.com/img/Content/avatar/avatar5.png" alt class="rounded-circle avatar-sm">
</a>
</div>
<div class="avatar-group-item">
<a href="javascript: void(0);" class="d-inline-block" data-bs-toggle="tooltip" data-bs-placement="top" value="member-10" aria-label="Jansh Wells" data-bs-original-title="Jansh Wells">
<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt class="rounded-circle avatar-sm">
</a>
</div>
</div>
<div class="align-self-end">
<span class="badge badge-soft-success p-2 team-status">Completed</span>
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
<div class="col-xl-4">
<div class="card">
<div class="card-body">
<div class="pb-2">
<h4 class="card-title mb-3">About</h4>
<p>Hi I'm Jansh, has been the industry's standard dummy text To an English
person, it will seem like
simplified.</p>
<ul class="ps-3 mb-0">
<li>it will seem like simplified.</li>
<li>To achieve this, it would be necessary to have uniform pronunciation</li>
</ul>

</div>
<hr>
<div class="pt-2">
<h4 class="card-title mb-4">My Skill</h4>
<div class="d-flex gap-2 flex-wrap">
<span class="badge badge-soft-secondary p-2">HTML</span>
<span class="badge badge-soft-secondary p-2">Bootstrap</span>
<span class="badge badge-soft-secondary p-2">Scss</span>
<span class="badge badge-soft-secondary p-2">Javascript</span>
<span class="badge badge-soft-secondary p-2">React</span>
<span class="badge badge-soft-secondary p-2">Angular</span>
</div>
</div>
</div>
</div>
<div class="card">
<div class="card-body">
<div>
<h4 class="card-title mb-4">Personal Details</h4>
<div class="table-responsive">
<table class="table table-bordered mb-0">
<tbody>
<tr>
<th scope="row">Name</th>
<td>Jansh Wells</td>
</tr>
<tr>
<th scope="row">Location</th>
<td>California, United States</td>
</tr>
<tr>
<th scope="row">Language</th>
<td>English</td>
</tr>
<tr>
<th scope="row">Website</th>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="fc9d9e9fcdcebc8c8e939e959fd29f9391">[email&#160;protected]</a></td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
<div class="card">
<div class="card-body">
<div>
<h4 class="card-title mb-4">Work Experince</h4>
<ul class="list-unstyled work-activity mb-0">
<li class="work-item" data-date="2020-21">
<h6 class="lh-base mb-0">ABCD Company</h6>
<p class="font-size-13 mb-2">Web Designer</p>
<p>To achieve this, it would be necessary to have uniform grammar, and more
common words.</p>
</li>
<li class="work-item" data-date="2019-20">
<h6 class="lh-base mb-0">XYZ Company</h6>
<p class="font-size-13 mb-2">Graphic Designer</p>
<p class="mb-0">It will be as simple as occidental in fact, it will be
Occidental person, it will seem like simplified.</p>
</li>
</ul>
</div>
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
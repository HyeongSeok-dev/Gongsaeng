<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">


<title>공생 | 반장님 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body{
    margin-top:20px;
    background-color: #f2f3f8;
}
.card {
    margin-bottom: 1.5rem;
    box-shadow: 0 1px 15px 1px rgba(52,40,104,.08);
}

.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid #e5e9f2;
    border-radius: .2rem;
}

.preview img {
    width: 150px; /* 원하는 크기로 조정 */
    height: 150px; /* 원하는 크기로 조정 */
    object-fit: cover; /* 이미지 비율 유지 */
    border: 2px solid #ddd; /* 테두리 추가 (선택적) */
    margin-top: -41px;
}

/* 전체 본문을 중앙 정렬하기 위한 스타일 */
.centered-content {
    text-align: center; /* 텍스트 중앙 정렬 */
    margin: 0 auto; /* 좌우 마진 자동으로 설정하여 수평 중앙 정렬 */
/*     max-width: 800px; /* 최대 너비 설정 (필요에 따라 조정) */ */
}

.form-group label {
    margin-bottom: 0.5rem; /* 마진 조정 */
}

.preview {
    margin-bottom: 0.5rem; /* 마진 조정 */
}

.form-check {
	margin-bottom: 10px;
}

.form-check-label {
	display: flex;
	align-items: center;
}
.form-check-category {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}
</style>
</head>
<body>
<div class="centered-content">
<div class="container h-100">
<div class="row h-100">
<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
<div class="d-table-cell align-middle">
<div class="text-center mt-4">
<h1 class="h2">반장님 등록</h1>
<p class="lead">
<!-- Start creating the best possible user experience for you customers. -->
</p>
</div>
<div class="card">
<div class="card-body">
<div class="m-sm-4">
<form>
<div class="form-group">
<label><b>대표 사진 등록</b></label>
<div class="container mt-5 text-center"> <!-- text-center 클래스 추가 -->
    <div class="preview mb-3">
        <!-- 기본 이미지로 사람 기본 모양을 사용 -->
<!--         <img id="imagePreview" src="https://via.placeholder.com/100x100?text=Person" alt="Image preview" class="img-fluid rounded-circle"/> -->
        <img id="imagePreview" src="${pageContext.request.contextPath }/resources/img/banjang_profile5.png" alt="Image preview" class="img-fluid rounded-circle"/>
    </div>
    <input type="file" id="imageUpload" accept="image/*" />
</div>
<br>
<label><b>반장님 이름(사업체 명)</b></label>
<input class="form-control form-control-lg" type="text" name="name" placeholder="사업체 명을 입력해주세요">
</div>
<br>
<div class="form-group">
<label><b>공개 연락처(선택)</b></label>
<input class="form-control form-control-lg" type="text" name="company" placeholder="공개 연락처를 입력해주세요">
</div>
<br>
<div class="form-group">
<label><b>공개 이메일</b></label>
<input class="form-control form-control-lg" type="email" name="email" placeholder="공개 이메일을 입력해주세요">
</div>
<br>
<div class="form-group">
<label><b>반장님 소개</b></label>
<input class="form-control form-control-lg" type="email" name="email" placeholder="반장님 소개를 입력해주세요">
</div>
<br>
<div class="form-group">
<label><b>계좌 번호</b></label>
<input class="form-control form-control-lg" type="email" name="email" placeholder="계좌번호를 입력해주세요">
</div>
<br>
<label><b>어떤 클래스를 제공할 수 있나요?</b></label>
<div class="form-check-category">
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" value="">바닥 시공
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" value="">벽/천장 시공
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" value="">부분 인테리어
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" value="">야외 시공
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" value="">종합 인테리어
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" value="">기타 홈 인테리어
  </label>
</div>
</div>
<br><br>

<div class="text-center mt-3">
<a href="index.html" class="btn btn-lg btn-primary">반장 신청</a>

</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
document.getElementById('imageUpload').addEventListener('change', function(event) {
    if (event.target.files && event.target.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            var output = document.getElementById('imagePreview');
            output.src = e.target.result;
        };
        reader.readAsDataURL(event.target.files[0]);
    }
});
</script>
</body>
</html>
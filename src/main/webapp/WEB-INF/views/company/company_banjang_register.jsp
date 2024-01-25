<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- 다음 주소검색 API 사용을 위한 라이브러리 추가 -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
	window.onload = function() {
		document.getElementById('imageUpload').addEventListener(
				'change',
				function(event) {
					if (event.target.files && event.target.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							var output = document.getElementById('imagePreview');
							output.src = e.target.result;
						};
						reader.readAsDataURL(event.target.files[0]);
					}
				});
		// =====================================================================
		// 주소 검색 API 활용 기능 추가
		// "t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" 스크립트 파일 로딩 필수!
		document.querySelector("#btnSearchAddress").onclick = function() {
			new daum.Postcode({
				// 주소검색 창에서 주소 검색 후 검색된 주소를 클릭하면
				// oncomplete: 뒤의 익명함수가 실행(호출)됨 => callback(콜백) 함수라고 함
		        oncomplete: function(data) {
		        	// 클릭(선택)된 주소에 대한 정보(객체)가 익명함수 파라미터 data 에 전달됨
					// => data.xxx 형식으로 각 주소 정보에 접근
					// 1) 우편번호(zonecode) 가져와서 우편번호 항목(postCode)에 출력
					document.companyJoinForm.postCode.value = data.zonecode; 
					
					// 2) 기본주소(address) 가져와서 기본주소 항목(address1)에 출력
// 					document.joinForm.address1.value = data.address;
					let address = data.address;
					
					// 만약, 건물명(buildingName)이 존재(널스트링이 아님)할 경우
					// 기본주소 뒤에 건물명을 결합
					if(data.buildingName != "") {
						address += " (" + data.buildingName + ")";
					}
					
					document.companyJoinForm.address1.value = address;
					
					// 3) 상세주소 항목(address2)에 포커스(커서) 요청
					document.companyJoinForm.address2.focus();
		        }
		    }).open();
		};
		
	}; // window.onload 이벤트 끝
		// =====================================================================
	</script>
<meta charset="utf-8">
<title>공생 | 반장님 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body {
	margin-top: 20px;
	background-color: #f2f3f8;
}

.card {
	margin-bottom: 1.5rem;
	box-shadow: 0 1px 15px 1px rgba(52, 40, 104, .08);
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
	/*     max-width: 800px; /* 최대 너비 설정 (필요에 따라 조정) */
	*/
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

.address-row {
    max-width: 600px; /* 중앙 정렬을 위한 최대 너비 */
    margin: 0 auto; /* 중앙 정렬 */
}

/* 필드 높이를 줄이기 위한 새로운 스타일 */
.smaller-input {
    height: 38px; /* 높이 조정 */
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
									<form action="companyJoinPro" method="post" name="companyJoinForm">
										<div class="form-group">
											<label><b>대표 사진 등록</b></label>
											<div class="container mt-5 text-center">
												<!-- text-center 클래스 추가 -->
												<div class="preview mb-3">
													<img id="imagePreview"
														src="${pageContext.request.contextPath }/resources/img/banjang_profile5.png"
														alt="Image preview" class="img-fluid rounded-circle" />
												</div>
												<input type="file" id="imageUpload" accept="image/*" />
											</div>
											<br> <label><b>반장님 이름(사업체 명)</b></label> <input
												class="form-control small-input type="text"
												name="companyName" placeholder="사업체 명을 입력해주세요" required>
										</div>
										<br>
										<div class="form-group">
											<label><b>공개 연락처(선택)</b></label> <input
												class="form-control small-input" type="text"
												name="companyPhoneNumber" placeholder="공개 연락처를 입력해주세요">
										</div>
										<br>
										<div class="form-group">
											<label><b>공개 이메일</b></label> 
											<input class="form-control small-input" type="email"
												name="companyEmail" placeholder="공개 이메일을 입력해주세요" required>
										</div>
										<br>
										<div class="form-group">
											<label><b>사업체 주소</b></label><br>
											    <div class="row address-row"> <!-- 여기에 row 클래스를 추가하여 새로운 행을 시작합니다 -->
												<div class="col-6">
                                                    <input class="form-control smaller-input" type="text" name="post_code" id="postCode" required>
                                                </div>
                                                <div class="col-6">
                                                    <input class="form-control smaller-input btn-primary" type="button" id="btnSearchAddress" value="주소검색">
                                                </div>
                                            </div>
                                            <br>
                                            <input class="form-control smaller-input" type="text" name="address1" id="address1" placeholder="기본주소" required>
<!--                                             <br> -->
                                            <input class="form-control smaller-input" type="text" name="address2" id="address2" placeholder="상세주소" required>
										</div>
										<br>
										<div class="form-group">
											<label><b>반장님 소개</b></label> 
											<input class="form-control small-input" type="text"
												name="companyIntroduction" placeholder="반장님 소개를 입력해주세요">
										</div>
										<br>
										<div class="form-group">
											<label><b>계좌 정보 입력</b></label>
											<div class="form-group">
												<!--   <label for="sel1">Select list:</label> -->
												<select class="form-control small-input" id="sel1"
													name="companyAccountBank" required>
													<option disabled selected>은행명</option>
													<option>산업은행</option>
													<option>기업은행</option>
													<option>국민은행</option>
													<option>농협은행</option>
													<option>우리은행</option>
													<option>SC제일은행</option>
													<option>한국씨티은행</option>
													<option>대구은행</option>
													<option>부산은행</option>
													<option>광주은행</option>
													<option>제주은행</option>
													<option>전북은행</option>
													<option>경남은행</option>
													<option>새마을금고중앙회</option>
													<option>신협</option>
													<option>저축은행</option>
													<option>HSBC은행</option>
													<option>도이치은행</option>
													<option>제이피모간체이스은행</option>
													<option>비엔피파리바은행</option>
													<option>중국공상은행</option>
													<option>산림조합중앙회</option>
													<option>우체국</option>
													<option>KEB하나은행</option>
													<option>신한은행</option>
													<option>케이뱅크</option>
													<option>카카오뱅크</option>
													<option>유안타증권</option>
													<option>하나은행(구 외환)</option>
													<option>국민은행(구 주택)</option>
												</select>
											</div>
											<input class="form-control small-input" type="text"
												name="companyAccountNumber" placeholder="계좌번호를 입력해주세요" required> 
											<input class="form-control small-input" type="text"
												name="companyAccountName" placeholder="예금주명" required>
										</div>
										<br> <label><b>어떤 클래스를 제공할 수 있나요?</b></label>
										<div class="form-check-category">
											<div class="form-check">
												<label class="form-check-label"> 
												<input type="checkbox" class="form-check-input" value="">
												바닥 시공
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="">
													벽/천장 시공
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="">
													부분 인테리어
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="">
													야외 시공
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="">
													종합 인테리어
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="">
													기타 홈 인테리어
												</label>
											</div>
										</div>
										<br>
										<br>
										<!-- <div class="text-center mt-3"> -->
										<!-- <a href="index.html" class="btn btn-lg btn-primary">반장 신청</a> -->
										<!-- </div> -->
										<input type="submit" value="반장 신청">
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
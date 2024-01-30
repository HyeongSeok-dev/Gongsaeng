<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>공생 | FAQ page</title>
        <meta name="description" content="company is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/animate.css" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cs_faq.css">

        <script src="${pageContext.request.contextPath }/resources/assets/js/modernizr-2.6.2.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/jquery-1.10.2.min.js"></script> 
        <script src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap-select.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/easypiechart.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.easypiechart.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/wow.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/cs.js"></script>
    </head>
    <body>
    <jsp:include page="../inc/top.jsp"></jsp:include>
       	<div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">자주 묻는 질문</h1>               
                    </div>
                </div>
            </div>
        </div>
		<br>
		<div class="container">
	        <nav>
			  <div class="container row" style="float: none; margin:100 auto;">
			    <div class="faq_row">
			        <div class="col-lg-12">
						<div>
			                <form action="" name="">
				                <div>
				                    <div class="search-wrap">
				                    	<span>
				                        <input type="search" id="faq_search" name="searchFAQ" placeholder="검색어를 입력해주세요.">
				                        <button type="submit" class="">검색</button>
				                        </span>
				                    </div>
			                   </div> 
			                </form>
			            </div>  
			            <!-- Nav tabs category -->
			            <ul class="nav nav-tabs faq-cat-tabs">
			                <li><a href="#faq-cat-0" data-toggle="tab">전체</a></li>
			                <li><a href="#faq-cat-1" data-toggle="tab">이용안내</a></li>
			                <li><a href="#faq-cat-2" data-toggle="tab">회원정보</a></li>
			                <li><a href="#faq-cat-3" data-toggle="tab">결제/환불</a></li>
			                <li><a href="#faq-cat-4" data-toggle="tab">쿠폰/이벤트</a></li>
			                <li><a href="#faq-cat-5" data-toggle="tab">기타</a></li>
			            </ul>
			            <!-- Tab panes -->
			            <div class="tab-content faq-cat-content">
			                <div class="tab-pane active in fade" id="faq-cat-1">
			                    <div class="panel-group" id="accordion-cat-1">
			                    	<div class="panel panel-default panel-faq">
			                            <div class="panel-heading">
			                                <a data-toggle="collapse" data-parent="#accordion-cat-1" href="#faq-cat-1-sub-1">
			                                    <h4 class="panel-title" style="font-size: 15px; font-weight: bold; color: #000000;">
			                                       '공생'이란?
			                                        <span class="pull-right"></span>
			                                    </h4>
			                                </a>
			                            </div>
			                            <div id="faq-cat-1-sub-1" class="panel-collapse collapse">
			                                <div class="panel-body">
			                                   <div class="row form-group">
			                                        <div>
			                                        	<p>'공간을 생각한다.'의 줄임말입니다.<br>
			                                        	나의 집을 좀 더 특별한 공간이 될 수 있도록<br>
														반장을 연결하여 셀프 인테리어 및 DIY 등 <br>
														내가 직접 인테리어할 수 있도록 도와주는 서비스 플랫폼입니다.<br>
														공생에서는 클래스 선생님을 '반장'이라 칭하고 있습니다. </p>
			                                        </div>  
			                                 	</div>
			                                </div>
			                            </div>
			                        </div>
			                        
			                        <div class="panel panel-default panel-faq">
			                            <div class="panel-heading">
			                                <a data-toggle="collapse" data-parent="#accordion-cat-1" href="#faq-cat-1-sub-2">
			                                    <h4 class="panel-title" style="font-size: 15px; font-weight: bold; color: #000000;">
			                                        회원가입 방법
			                                        <span class="pull-right"></span>
			                                    </h4>
			                                </a>
			                            </div>
			                            <div id="faq-cat-1-sub-2" class="panel-collapse collapse">
			                                <div class="panel-body">
			                                    <div class="row form-group">
			                                        <div>
														<p>PC 혹은 휴대폰 등을 통해 손쉽게 가입할 수 있습니다.<br>
			                                        	※ 1인 1계정으로 이용이 가능하며, 각 계정간 통합은 불가능합니다.<br>
														※ 서비스 이용(신청 및 결제)을 위해서는 번호인증(1개의 계정)이 필수입니다.<br>
														※ 본인인증은 휴대폰 명의자를 기준으로 1인 1개의 계정만 인증할 수 있습니다.<br>
														※ SNS 계정으로 가입한 경우, 비밀번호 변경은 각 SNS 홈페이지에서 가능합니다. </p>
													</div>  
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div> <!-- faq-cat-1 -->
			                
			                <div class="tab-pane fade" id="faq-cat-2">
			                    <div class="panel-group" id="accordion-cat-2">
			                        <div class="panel panel-default panel-faq">
			                            <div class="panel-heading">
			                                <a data-toggle="collapse" data-parent="#accordion-cat-2" href="#faq-cat-2-sub-1">
			                                    <h4 class="panel-title" style="font-size: 15px; font-weight: bold; color: #000000;">
			                                        회원 탈퇴는 어떻게 하나요?
			                                        <span class="pull-right"></span>
			                                    </h4>
			                                </a>
			                            </div>
			                            <div id="faq-cat-2-sub-1" class="panel-collapse collapse">
			                                <div class="panel-body">
			                                   <div class="row form-group">
			                                        <div>
													탈퇴 시 유의사항<br>
													1) 탈퇴 즉시 모든 개인정보와 에너지(포인트), 쿠폰은 삭제됩니다.<br>
													2) 삭제된 모든 정보들은 재가입 후에도 복구가 불가합니다.<br><br>
													유의사항이 모두 확인되셨다면, 아래의 경로를 통해 회원 탈퇴를 진행해 주세요.<br>
													▶ 앱 우측 하단 [마이페이지] > 우측 상단 톱니바퀴 클릭 > 프로필 사진 클릭 > 우측 하단의 [회원탈퇴] 클릭 <br><br>
													만약 위 [회원탈퇴] 버튼이 보이지 않는다면, 재접속해주시기 바랍니다!
													</div>  
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        <div class="panel panel-default panel-faq">
			                            <div class="panel-heading">
			                                <a data-toggle="collapse" data-parent="#accordion-cat-2" href="#faq-cat-2-sub-2">
			                                    <h4 class="panel-title" style="font-size: 15px; font-weight: bold; color: #000000;">
			                                       계정을 잊어버렸는데 어떻게 하나요?
			                                        <span class="pull-right"></span>
			                                    </h4>
			                                </a>
			                            </div>
			                            <div id="faq-cat-2-sub-2" class="panel-collapse collapse">
			                                <div class="panel-body">
			                                 <div class="row form-group">
			                                    <div>아래의 문의처로 성함과 연락처를 전달해주시면 가입하신 계정 정보를 확인하여 안내드립니다.<br><br>
														이메일 : gongsaeng@gmail.com
												</div>  
			                                 </div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div> <!-- faq-cat-2 -->
			                
			                <div class="tab-pane fade" id="faq-cat-3">
			                    <div class="panel-group" id="accordion-cat-3">
			                        <div class="panel panel-default panel-faq">
			                            <div class="panel-heading">
			                                <a data-toggle="collapse" data-parent="#accordion-cat-3" href="#faq-cat-3-sub-1">
			                                    <h4 class="panel-title" style="font-size: 15px; font-weight: bold; color: #000000;">
			                                        공생 결제는 어떻게 하나요?
			                                        <span class="pull-right"></span>
			                                    </h4>
			                                </a>
			                            </div>
			                            <div id="faq-cat-3-sub-1" class="panel-collapse collapse">
			                                <div class="panel-body">
			                                   <div class="row form-group">
			                                        <div>토스 페이, 신용/체크카드, 네이버 페이, 카카오 페이, 페이코, 휴대폰 결제, 실시간 계좌이체, 적립/충전된 에너지를 이용한 결제가 가능합니다.</div>  
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        <div class="panel panel-default panel-faq">
			                            <div class="panel-heading">
			                                <a data-toggle="collapse" data-parent="#accordion-cat-3" href="#faq-cat-3-sub-2">
			                                    <h4 class="panel-title" style="font-size: 15px; font-weight: bold; color: #000000;">
			                                       현장에서 결제가 가능한가요?
			                                        <span class="pull-right"></span>
			                                    </h4>
			                                </a>
			                            </div>
			                            <div id="faq-cat-3-sub-2" class="panel-collapse collapse">
			                                <div class="panel-body">
			                                 <div class="row form-group">
			                                     <div>현장에서 추가 결제가 필요한 경우, 상품 상세페이지에서 불포함 사항으로 안내하고 있으며, 일정 진행 전 반장이 미리 안내합니다.<br>
													  다만, 공생을 통하지 않고 현장에서 별도 결제한 건에 대해서는 이슈 발생 시 공생에서 도움 드릴 수 없습니다.</div>  
			                                	 </div>
			                                </div>
			                            </div>
			                        </div>
			                        <div class="panel panel-default panel-faq">
			                            <div class="panel-heading">
			                                <a data-toggle="collapse" data-parent="#accordion-cat-3" href="#faq-cat-3-sub-3">
			                                    <h4 class="panel-title" style="font-size: 15px; font-weight: bold; color: #000000;">
			                                       환불은 언제 처리되나요?
			                                        <span class="pull-right"></span>
			                                    </h4>
			                                </a>
			                            </div>
			                            <div id="faq-cat-3-sub-3" class="panel-collapse collapse">
			                                <div class="panel-body">
			                                 <div class="row form-group">
			                                     <div>환불 금액은 환불 규정에 따라 공제 후 잔액을 지급해드릴 예정입니다.<br>
													환불 소요일은 다음과 같습니다.<br><br>
													▶ 환불 소요일<br>
													신용/체크카드, 계좌이체 : 전표 취소까지 카드사에 따라 영업일 기준으로 2~5일 정도 소요<br>
													당월 휴대폰 소액결제, 간편 결제, 에너지 : 취소 시 즉시 환불<br>
													(에너지와 쿠폰은 유효기한이 남아있는 경우에만 자동으로 복구되며, 만료 시에는 소멸됩니다.)<br>
													※ 전월 휴대폰 결제건은 환불 받을 계좌 정보를 카카오톡 채널 @프립 으로 전달해 주세요<br>
													※ 전달되지 않으면 환불 처리가 진행되지 않으며, 7일 이내로 회신이 없을 시 현금이 아닌 에너지 적립금으로 환불 처리됩니다.<br>
													※ 입금은 영업일 기준 최대 5일 정도 소요될 수 있습니다.
			                                	 </div>
			                                </div>
			                            	</div>
			                        	</div>
			                    	</div>
			                	</div> 
			                </div> <!-- faq-cat-3 -->		
			                		                
			                <div class="tab-pane fade" id="faq-cat-4">
			                    <div class="panel-group" id="accordion-cat-4">
			                        <div class="panel panel-default panel-faq">
			                            <div class="panel-heading">
			                                <a data-toggle="collapse" data-parent="#accordion-cat-4" href="#faq-cat-4-sub-1">
			                                    <h4 class="panel-title" style="font-size: 15px; font-weight: bold; color: #000000;">
			                                        쿠폰을 받았는데 어떻게 사용하나요?
			                                        <span class="pull-right"></span>
			                                    </h4>
			                                </a>
			                            </div>
			                            <div id="faq-cat-4-sub-1" class="panel-collapse collapse">
			                                <div class="panel-body">
			                                   <div class="row form-group">
			                                        <div>난수형(씨리얼번호) : 결제 시 [프립 할인 쿠폰] > [쿠폰 선택]에서 선택하거나 난수(씨리얼번호)를 입력하여 할인 금액이 적용<br>
														키워드형 : 마이프립 > 우측 상단 톱니바퀴 아이콘 클릭 > 쿠폰 > 키워드 입력 후 쿠폰 등록 > 결제 시 사용<br>
														다운로드형 : 상품에서 쿠폰을 다운로드 > 결제 시 [프립 할인 쿠폰] > [쿠폰 선택]에서 선택<br>
													</div>  
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                         <div class="panel panel-default panel-faq">
			                            <div class="panel-heading">
			                                <a data-toggle="collapse" data-parent="#accordion-cat-4" href="#faq-cat-4-sub-2">
			                                    <h4 class="panel-title" style="font-size: 15px; font-weight: bold; color: #000000;">
			                                        쿠폰 기간이 만료되었어요.
			                                        <span class="pull-right"></span>
			                                    </h4>
			                                </a>
			                            </div>
			                            <div id="faq-cat-4-sub-2" class="panel-collapse collapse">
			                                <div class="panel-body">
			                                   <div class="row form-group">
			                                        <div>기간이 지나면 사용하지 못합니다.
			                                        </div>  
			                                   </div>
			                            	</div>
			                        	</div>
			                    	</div>
			                	</div> 
			                </div> <!-- faq-cat-4 -->	
			                	                
			                <div class="tab-pane fade" id="faq-cat-5">
			                    <div class="panel-group" id="accordion-cat-5">
			                        <div class="panel panel-default panel-faq">
			                            <div class="panel-heading">
			                                <a data-toggle="collapse" data-parent="#accordion-cat-5" href="#faq-cat-5-sub-1">
			                                    <h4 class="panel-title" style="font-size: 15px; font-weight: bold; color: #000000;">
			                                        고객센터는 어떻게 이용하나요?
			                                        <span class="pull-right"></span>
			                                    </h4>
			                                </a>
			                            </div>
			                            <div id="faq-cat-5-sub-1" class="panel-collapse collapse">
			                                <div class="panel-body">
			                                   <div class="row form-group">
			                                        <div>Fever</div>  
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        <div class="panel panel-default panel-faq">
			                            <div class="panel-heading">
			                                <a data-toggle="collapse" data-parent="#accordion-cat-5" href="#faq-cat-5-sub-2">
			                                    <h4 class="panel-title" style="font-size: 15px; font-weight: bold; color: #000000;">
			                                       공생 이용하기 전, 서비스에 궁금한 것이 있어요.
			                                        <span class="pull-right"></span>
			                                    </h4>
			                                </a>
			                            </div>
			                            <div id="faq-cat-5-sub-2" class="panel-collapse collapse">
			                                <div class="panel-body">
			                                 <div class="row form-group">
			                                        <div>Fever</div>  
			                                 </div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>  <!-- faq-cat-5 -->	    
			            </div>
			          </div>
			        </div>
			    </div>
			</nav>
		</div>
		<!-- Footer area -->
		<!-- 하단바 삽입-->
		<div class="bottom">
			<jsp:include page="../inc/bottom.jsp"/>
		</div>
    </body>
</html>
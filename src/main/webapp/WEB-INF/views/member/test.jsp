<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>공생 | 공간을 생각하다</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
<link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/assets/css/animate.css" rel="stylesheet" media="screen">
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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/test.css">

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
<!-- <script -->
<%-- 	src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script> --%>
<script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>

<script type="text/javascript">

$(document).ready(function () {

	$('.star').on('click', function () {
      $(this).toggleClass('star-checked');
    });

    $('.ckbox label').on('click', function () {
      $(this).parents('tr').toggleClass('selected');
    });

    $('.btn-filter').on('click', function () {
      var $target = $(this).data('target');
      if ($target != 'all') {
        $('.table tr').css('display', 'none');
        $('.table tr[data-status="' + $target + '"]').fadeIn('slow');
      } else {
        $('.table tr').css('display', 'none').fadeIn('slow');
      }
    });

 });
</script>
</head>
<body>
	<jsp:include page="../inc/top.jsp"></jsp:include>


	<div class="container">
		<div class="row">

			<section class="content">
				<h1>Table Filter</h1>
				<div class="col-md-8 col-md-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="pull-right">
								<div class="btn-group">
									<button type="button" class="btn btn-success btn-filter" data-target="pagado">Pagado</button>
									<button type="button" class="btn btn-warning btn-filter" data-target="pendiente">Pendiente</button>
									<button type="button" class="btn btn-danger btn-filter" data-target="cancelado">Cancelado</button>
									<button type="button" class="btn btn-default btn-filter" data-target="all">Todos</button>
								</div>
							</div>
							<div class="table-container">
								<table class="table table-filter">
									<tbody>
										<tr data-status="pagado">
											<td>
												<div class="ckbox">
													<input type="checkbox" id="checkbox1"> <label for="checkbox1"></label>
												</div>
											</td>
											<td><a href="javascript:;" class="star"> <i class="glyphicon glyphicon-star"></i>
											</a></td>
											<td>
												<div class="media">
													<a href="#" class="pull-left"> <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
														class="media-photo">
													</a>
													<div class="media-body">
														<span class="media-meta pull-right">Febrero 13, 2016</span>
														<h4 class="title">
															Lorem Impsum <span class="pull-right pagado">(Pagado)</span>
														</h4>
														<p class="summary">Ut enim ad minim veniam, quis nostrud exercitation...</p>
													</div>
												</div>
											</td>
										</tr>
										<tr data-status="pendiente">
											<td>
												<div class="ckbox">
													<input type="checkbox" id="checkbox3"> <label for="checkbox3"></label>
												</div>
											</td>
											<td><a href="javascript:;" class="star"> <i class="glyphicon glyphicon-star"></i>
											</a></td>
											<td>
												<div class="media">
													<a href="#" class="pull-left"> <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
														class="media-photo">
													</a>
													<div class="media-body">
														<span class="media-meta pull-right">Febrero 13, 2016</span>
														<h4 class="title">
															Lorem Impsum <span class="pull-right pendiente">(Pendiente)</span>
														</h4>
														<p class="summary">Ut enim ad minim veniam, quis nostrud exercitation...</p>
													</div>
												</div>
											</td>
										</tr>
										<tr data-status="cancelado">
											<td>
												<div class="ckbox">
													<input type="checkbox" id="checkbox2"> <label for="checkbox2"></label>
												</div>
											</td>
											<td><a href="javascript:;" class="star"> <i class="glyphicon glyphicon-star"></i>
											</a></td>
											<td>
												<div class="media">
													<a href="#" class="pull-left"> <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
														class="media-photo">
													</a>
													<div class="media-body">
														<span class="media-meta pull-right">Febrero 13, 2016</span>
														<h4 class="title">
															Lorem Impsum <span class="pull-right cancelado">(Cancelado)</span>
														</h4>
														<p class="summary">Ut enim ad minim veniam, quis nostrud exercitation...</p>
													</div>
												</div>
											</td>
										</tr>
										<tr data-status="pagado" class="selected">
											<td>
												<div class="ckbox">
													<input type="checkbox" id="checkbox4" checked> <label for="checkbox4"></label>
												</div>
											</td>
											<td><a href="javascript:;" class="star star-checked"> <i class="glyphicon glyphicon-star"></i>
											</a></td>
											<td>
												<div class="media">
													<a href="#" class="pull-left"> <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
														class="media-photo">
													</a>
													<div class="media-body">
														<span class="media-meta pull-right">Febrero 13, 2016</span>
														<h4 class="title">
															Lorem Impsum <span class="pull-right pagado">(Pagado)</span>
														</h4>
														<p class="summary">Ut enim ad minim veniam, quis nostrud exercitation...</p>
													</div>
												</div>
											</td>
										</tr>
										<tr data-status="pendiente">
											<td>
												<div class="ckbox">
													<input type="checkbox" id="checkbox5"> <label for="checkbox5"></label>
												</div>
											</td>
											<td><a href="javascript:;" class="star"> <i class="glyphicon glyphicon-star"></i>
											</a></td>
											<td>
												<div class="media">
													<a href="#" class="pull-left"> <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
														class="media-photo">
													</a>
													<div class="media-body">
														<span class="media-meta pull-right">Febrero 13, 2016</span>
														<h4 class="title">
															Lorem Impsum <span class="pull-right pendiente">(Pendiente)</span>
														</h4>
														<p class="summary">Ut enim ad minim veniam, quis nostrud exercitation...</p>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="content-footer">
						<p>
							Page © - 2016 <br> Powered By <a href="https://www.facebook.com/tavo.qiqe.lucero" target="_blank">TavoQiqe</a>
						</p>
					</div>
				</div>
			</section>

		</div>
	</div>
</body>
</html>
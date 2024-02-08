$(function() {
	// 천단위 쉼표찍기
	var totalPayment = Number($("#totalPayment").text().trim()).toLocaleString();
	var countPayment = Number($("#countPayment").text().trim()).toLocaleString();
	var newComRegCount = Number($("#newComRegCount").text().trim()).toLocaleString();
	var newComRefundApp = Number($("#newComRefundApp").text().trim()).toLocaleString();
	var newClassReport = Number($("#newClassReport").text().trim()).toLocaleString();
	var newReviewReport = Number($("#newReviewReport").text().trim()).toLocaleString();
	var newQnaChat = Number($("#newQnaChat").text().trim()).toLocaleString();
	var newMemberCount = Number($("#newMemberCount").text().trim()).toLocaleString();
	var newBanjangCount = Number($("#newBanjangCount").text().trim()).toLocaleString();
	var cumulativeBanjangCount = Number($("#cumulativeBanjangCount").text().trim()).toLocaleString();
	var cumulativePayCount = Number($("#cumulativePayCount").text().trim()).toLocaleString();
	var monthlyPayCount = Number($("#monthlyPayCount").text().trim()).toLocaleString();
	var monthlyTotalPay = Number($("#monthlyTotalPay").text().trim()).toLocaleString();
	var cumulativeTotalPay = Number($("#cumulativeTotalPay").text().trim()).toLocaleString();
	var monthlyRefund = Number($("#monthlyRefund").text().trim()).toLocaleString();
	var cumulativeRefund = Number($("#cumulativeRefund").text().trim()).toLocaleString();
	var monthlyRefundFee = Number($("#monthlyRefundFee").text().trim()).toLocaleString();
	var cumulativeRefundFee = Number($("#cumulativeRefundFee").text().trim()).toLocaleString();

	console.log("text : " + $("#totalPayment").text());
	console.log(totalPayment);
	console.log(cumulativeTotalPay);

	$("#totalPayment").text(totalPayment);
	$("#countPayment").text(countPayment);
	$("#monthlyTotalPay").text(monthlyTotalPay);
	$("#cumulativeTotalPay").text(cumulativeTotalPay);
	$("#monthlyRefund").text(monthlyRefund);
	$("#newComRegCount").text(newComRegCount);
	$("#newComRefundApp").text(newComRefundApp);
	$("#newClassReport").text(newClassReport);
	$("#newReviewReport").text(newReviewReport);
	$("#newQnaChat").text(newQnaChat);
	$("#newMemberCount").text(newMemberCount);
	$("#newBanjangCount").text(newBanjangCount);
	$("#cumulativeBanjangCount").text(cumulativeBanjangCount);
	$("#cumulativePayCount").text(cumulativePayCount);
	$("#monthlyPayCount").text(monthlyPayCount);
	$("#cumulativeRefund").text(cumulativeRefund);
	$("#monthlyRefundFee").text(monthlyRefundFee);
	$("#cumulativeRefundFee").text(cumulativeRefundFee);

	console.log($("#cumulativeTotalPay").text(cumulativeTotalPay));
});
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<%--         <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css"> --%>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
        
        <link href="${pageContext.request.contextPath }/resources/css/charge_agree.css" rel="stylesheet" type="text/css">
        
        
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
<%--         <script src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script> --%>
        <script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
<%--         <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script> --%>
        <script src="${pageContext.request.contextPath }/resources/assets/js/main_noicheck.js"></script>

<script type="text/javascript">

//개인정보 이용동의 필수처리
$(document).ready(function(){
    $("#next").click(function(){
        if ($('#agree').is(":checked")) {
            // 체크박스가 체크되었을 때 authAccount()함수호출
//             window.close();
        	authAccount();
        } else {
            // 체크박스가 체크되지 않았을 때 alert 출력
            alert("개인정보이용 약관에 동의해주세요.");
        }
    });
});

//계좌인증
function authAccount() {
	// 새 창을 사용하여 사용자 인증 페이지 요청
	console.log("${sessionScope.state}");
	
	let requestUri = "https://testapi.openbanking.or.kr/oauth/2.0/authorize?"
						+ "response_type=code"
						+ "&client_id=4066d795-aa6e-4720-9383-931d1f60d1a9"
						+ "&redirect_uri=http://localhost:8081/gongsaeng/callback"
						+ "&scope=login inquiry transfer"
						+ "&state=${sessionScope.state}"
						+ "&auth_type=0";
	window.open(requestUri, "authWindow", "width=600, height=800");
}

</script>

</head>

  <body>
  
  	<div class="out_block">
  
  	<h1>0페이 이용약관</h1>
  	

		  	<h3>약관을 확인해 주세요.</h3>
		  	<br>
			<div class="section_box">
				<section class="sec05">
					<h2>개인정보이용 약관 동의[필수]</h2>
					<textarea readonly="readonly">
제1조 (목적)
이 약관은 공:생 주식회사(이하 '회사'라 합니다)가 제공하는 전자지급결제대행서비스 및 결제대금예치서비스를 이용자가 이용함에 있어 회사와 이용자 사이의 전자금융거래에 관한 기본적인 사항을 정함을 목적으로 합니다.

제2조 (용어의 정의)
이 약관에서 정하는 용어의 정의는 다음과 같습니다.

1. '전자금융거래'라 함은 회사가 전자적 장치를 통하여 전자지급결제대행서비스 및 결제대금예치서비스(이하 '전자금융거래 서비스'라고 합니다)를 제공하고, 이용자가 회사의 종사자와 직접 대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말합니다.
2. '전자지급결제대행서비스'라 함은 전자적 방법으로 재화의 구입 또는 용역의 이용에 있어서 지급결제정보를 송신하거나 수신하는 것 또는 그 대가의 정산을 대행하거나 매개하는 서비스를 말합니다.
3. '결제대금예치서비스'라 함은 이용자가 재화의 구입 또는 용역의 이용에 있어서 그 대가(이하 '결제대금'이라 한다)의 전부 또는 일부를 재화 또는 용역(이하 '재화 등'이라 합니다)을 공급받기 전에 미리 지급하는 경우, 회사가 이용자의 물품수령 또는 서비스 이용 확인 시점까지 결제대금을 예치하는 서비스를 말합니다.
4. '이용자'라 함은 이 약관에 동의하고 회사가 제공하는 전자금융거래 서비스를 이용하는 자를 말합니다.
5. '접근매체'라 함은 전자금융거래에 있어서 거래지시를 하거나 이용자 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는 수단 또는 정보로서 전자식 카드 및 이에 준하는 전자적 정보(신용카드번호를 포함한다), '전자서명법'상의 인증서, 회사에 등록된 이용자번호, 이용자의 생체정보, 이상의 수단이나 정보를 사용하는데 필요한 비밀번호 등 전자금융거래법 제2조 제10호에서 정하고 있는 것을 말합니다.
6. '거래지시'라 함은 이용자가 본 약관에 의하여 체결되는 전자금융거래계약에 따라 회사에 대하여 전자금융거래의 처리를 지시하는 것을 말합니다.
7. '오류'라 함은 이용자의 고의 또는 과실 없이 전자금융거래가 전자금융거래계약 또는 이용자의 거래지시에 따라 이행되지 아니한 경우를 말합니다.

제3조 (약관의 명시 및 변경)
1. 회사는 이용자가 전자금융거래 서비스를 이용하기 전에 이 약관을 게시하고 이용자가 이 약관의 중요한 내용을 확인할 수 있도록 합니다.
2. 회사는 이용자의 요청이 있는 경우 전자문서의 전송방식에 의하여 본 약관의 사본을 이용자에게 교부합니다.
3. 회사가 약관을 변경하는 때에는 그 시행일 1월 전에 변경되는 약관을 회사가 제공하는 전자금융거래 서비스 이용 초기화면 및 회사의 홈페이지에 게시함으로써 이용자에게 공지합니다.
4. 회사는 제3항의 공지를 할 경우 "이용자가 변경에 따라 변경에 동의하지 아니한 경우 공지 받은 날로부터 30일 이내에 계약을 해지할 수 있으며, 해지의사표시를 하지 아니한 경우 동의한 것으로 본다."라는 내용을 통지합니다.

제4조 (전자지급결제대행서비스의 종류)
회사가 제공하는 전자지급결제대행서비스는 지급결제수단에 따라 다음과 같이 구별됩니다.

1. 신용카드결제대행서비스: 이용자가 결제대금의 지급을 위하여 제공한 지급결제수단이 신용카드인 경우로서, 회사가 전자결제시스템을 통하여 신용카드 지불정보를 송, 수신하고 결제대금의 정산을 대행하거나 매개하는 서비스를 말합니다.
2. 계좌이체결제대행서비스: 이용자가 결제대금을 회사의 전자결제시스템을 통하여 금융기관에 등록한 자신의 계좌에서 출금하여 원하는 계좌로 이체할 수 있는 실시간 송금 서비스를 말합니다.
3. 가상계좌결제대행서비스: 이용자가 결제대금을 현금으로 결제하고자 경우 회사의 전자결제시스템을 통하여 자동으로 이용자만의 고유한 일회용 계좌의 발급을 통하여 결제대금의 지급이 이루어지는 서비스를 말합니다.
4. 간편결제서비스 : 이용자가 결제대금의 지급을 위하여 제공한 지급결제수단이 신용카드, 계좌이체인 경우로서, 정보를 매번 입력할 필요 없이 관련 정보의 한번 등록만으로 상품 결제가 가능한 서비스를 말합니다. 단, 간편결제서비스 신청 시 회사가 정하는 이용자의 본인확인 절차가 반드시 필요하며, 회사의 인증 및 승낙이 있어야 서비스를 이용할 수 있습니다.
5. 기타: 회사가 제공하는 서비스로서 지급결제수단의 종류에 따라 '휴대폰 결제대행서비스', '상품권결제대행서비스', 등이 있습니다.

제5조 (결제대금예치서비스의 내용)
1. 이용자(이용자의 동의가 있는 경우에는 재화 등을 공급받을 자를 포함합니다. 이하 본 조에서 같습니다)는 재화 등을 공급받은 사실을 재화 등을 공급받은 날부터 3영업일 이내에 회사에 통보하여야 합니다.
2. 회사는 이용자로부터 재화 등을 공급받은 사실을 통보 받은 후 회사와 통신판매업자간 사이에서 정한 기일 내에 통신판매업자에게 결제대금을 지급합니다.
3. 회사는 이용자가 재화 등을 공급받은 날부터 3영업일이 지나도록 정당한 사유의 제시 없이 그 공급받은 사실을 회사에 통보하지 아니하는 경우에는 이용자의 동의 없이 통신판매업자에게 결제대금을 지급할 수 있습니다.
4. 회사는 통신판매업자에게 결제대금을 지급하기 전에 이용자에게 결제대금을 환급 받을 사유가 발생한 경우에는 그 결제대금을 소비자에게 환급합니다.
5. 회사는 이용자와의 결제대금예치서비스 이용과 관련된 구체적인 권리, 의무를 정하기 위하여 본 약관과는 별도로 결제대금예치서비스이용약관을 제정할 수 있습니다.


가. 회사가 접근매체에 따른 확인 외에 보안강화를 위하여 전자금융거래 시 요구하는 추가적인 보안조치를 이용자가 정당한 사유 없이 거부하여 전자금융거래법 제9조 제1항 제3호에 따른(이하 '사고'라 한다) 사고가 발생한 경우
나. 이용자가 동항 제 가목의 추가적인 보안조치에서 사용되는 매체, 수단 또는 정보에 대하여 다음과 같은 행위를 하여 '사고'가 발생하는 경우
- 누설, 누출 또는 방치한 행위
- 3자에게 대여하거나 그 사용을 위임한 행위 또는 양도나 담보의 목적으로 제공한 행위

부칙 :
*최초 시행일자 : 2016년 7월 17일*
*변경 공고일자 : 2020년 7월 1일*
*변경 시행일자 : 2020년 8월 3일*

[개인정보 수집 및 이용에 대한] 동의
공:생"(이하 "회사")는 이용자의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호에 관한 법률", "개인정보보호법", “신용정보의 이용 및 보호에 관한 법률” 및 "전자상거래 등에서의 소비자 보호에 관한 법률"을 준수하고 있습니다. 회사는 전자지급결제대행 및 결제대금예치서비스(이하 "서비스") 이용자로부터 아래와 같이 개인정보를 수집 및 이용합니다.

1. 개인정보의 수집 및 이용목적
회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.

- 서비스 제공 계약의 성립, 유지, 종료를 위한 본인 식별 및 실명확인, 각종 회원관리, 계약서 발송 등
- 서비스 제공 과정 중 본인 식별, 인증, 실명확인 및 각종 안내/고지
- 부정 이용방지 및 비인가 사용방지
- 서비스 제공 및 관련 업무처리에 필요한 동의 또는 철회 등 의사확인
- 이용 빈도 파악 및 인구통계학적 특성에 따른 서비스 제공 및 CRM
- 서비스 제공을 위한 각 결제수단 별 상점 사업자 정보 등록
- 회사가 제공하는 소비자보호법 메일 발송
- 기타 회사가 제공하는 이벤트 등 광고성 정보 전달(결제알림메일 내), 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 실제 마케팅 활동
- 서비스 제공(거래승인 등) 및 관련 업무처리(민원, 개인정보 관리상태 점검 등)를 위해 이용자와 해당 결제수단에 관한 계약을 체결한 이용자의 해당 결제수단 발행자 (ex:신용카드의 경우 해당 신용카드사에게 이용자의 결제정보, 개인정보 보관내역 등 전송
- 특정 금융거래정보의 보고 및 이용 등에 관한 법률 및 동 법률 시행령에 따른 법령 상 의무이행 (고객확인, 특정금융거래보고 등), 신원확인에 관한 사항 (결제수단 발행자에 대한 상세 내용 아래 참조)

※ 결제수단별 발행자 - 신용카드 : 국민/비씨/롯데/삼성/NH농협/현대/신한/하나/우리 등 신용카드사
- 계좌이체 은행 : 경남/광주/국민/기업/농협/대구/부산/산업/새마을금고/수협/신한/신협/우리/우체국/전북제주/하나/씨티/SC제일/산림조합중앙회/케이뱅크/카카오뱅크 등 증권 : 유안타/미래에셋대우/삼성/신한/한투/한화 등, 금융결제원, 토스페이먼츠㈜
- 가상계좌 : 은행(국민/농협/우리/신한/하나/기업/우체국/외환/부산/대구 등), 세틀뱅크㈜, 쿠콘㈜
- 휴대폰 : ㈜SKT/㈜KT/㈜LGU+/㈜KG모빌리언스/㈜다날/갤럭시아머니트리㈜/MVNO
- 현금영수증 발행 : 국세청
- 본인확인 인증 : NICE평가정보㈜/쿠콘㈜/세틀뱅크㈜/㈜KG모빌리언스/㈜인비즈넷
- 간편결제 : 11번가㈜/㈜엘지씨엔에스/㈜카카오페이/㈜에스에스지닷컴/엔에이치엔㈜/엔에이치엔한국사이버결제㈜/엔에이치엔페이코㈜/삼성전자㈜/롯데멤버스㈜/네이버파이낸셜㈜/㈜비바리퍼블리카
- 상품권 : ㈜한국문화진흥

2. 수집하는 개인정보 항목 및 수집방법
- 개인정보 수집항목

가. 필수 항목
- 이용자의 성명(가맹점의 경우, 대표자명 및 담당자명, 생년월일, 실명번호(주민등록번호,운전면허번호), 대표자가 외국인일 경우 영문명/국적/외국인등록번호, 휴대폰번호(가맹점의 경우 대표자 휴대폰번호 및 담당자 휴대폰번호), 전화번호, 이메일주소(가맹점의 경우 대표자 이메일주소 및 담당자 이메일주소), 상호명, 사업자번호(법인번호), 업종 및 업태, 쇼핑몰URL, 사업장 주소(개인/개인사업자의 경우 주민등록증 상 주소지, 외국인일 경우 실제 거소), 대표번호, 팩스번호, 거래대금지급정보(결제은행, 계좌번호, 계좌명) 및 상품 또는 용역 거래정보
- 결제정보(”이용자”가 상점의 상품 및 서비스를 구매하기 위하여 “회사”가 제공하는 ‘서비스’를 통해 제시한 각 결제수단 별 제반 정보를 의미하며 신용카드 번호, 신용카드 유효기간, 성명, 계좌번호, 휴대폰번호, 유선전화번호 등)
- 상기 명시된 개인정보 수집항목 이외의 서비스 이용과정이나 서비스 처리과정에서 추가 정보(접속 IP/MAC Address, 쿠키, e-mail, 서비스 접속 일시, 서비스 이용기록, 불량 혹은 비정상 이용기록, 결제기록)들이 자동 혹은 수동으로 생성되어 수집 될 수 있습니다.

나. 선택 항목
- 필수항목 이외에 계약서류에 기재된 정보{" "} 또는 고객이 제공한 정보 또는 정보주체가 서비스 이용을 위하여 신청한 정보
- 주소, 팩스번호 등
- PAYU 간편결제 안면인증 서비스를 신청한 경우 안면정보, 본인인증내역
- 개인정보 수집방법
- 홈페이지(NICEPAY 신규 서비스 신청 게시판), 서면양식, 팩스, E-Mail, 회사가 제공하는 전자금융서비스 결제창 및 업무제휴 계약을 체결한 제휴사로부터 이용자가 직접 제시한 정보를 수집

3. 개인정보의 보유 및 이용기간
이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기 합니다. 단, 전자금융거래법, 전자상거래 등에서의 소비자 보호에 관한 법률 등 관련 법령에 의하여 보존할 필요가 있는 경우 관련 법령에서 정한 일정한 기간 동안 개인정보를 보존합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.

1) 계약 또는 청약 철회 등에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법률)
2) 대금결제 및 재화 등의 공급에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법률)
3) 건당 1만원 초과 전자금융거래에 관한 기록: 5년 (전자금융거래법)
4) 소비자의 불만 또는 분쟁 처리에 관한 기록: 3년 (전자상거래 등에서의 소비자보호에 관한 법률)
5) 신용정보의 수집/처리 및 이용 등에 관한 기록: 3년 (신용정보의 이용 및 보호에 관한 법률)
6) 방문에 관한 기록: 3년 (통신비밀보호법)
7) 건당 1만원 이하 전자금융거래에 관한 기록: 1년 (전자금융거래법)
8) 본인확인에 관한 기록: 6개월 (정보통신 이용촉진 및 정보보호 등에 관한 법률)
9) 고객확인에 관한 기록: 5년 (특정금융거래정보의 보고 및 이용에 관한 법률)

4. 이용자의 개인정보의 수집 및 이용 거부
이용자는 회사의 개인정보 수집 및 이용 동의를 거부할 수 있습니다. 단, 동의를 거부 하는 경우 서비스 결제가 정상적으로 완료 될 수 없음을 알려 드립니다.
※ 개인정보의 처리와 관련된 사항은 회사의 개인정보처리방침에 따릅니다.



					</textarea><br><br>
				</section>
				
				<%-- 동의체크박스 --%>
				<div >
					<input type="checkbox" style="width: 30px;" id="agree" > 개인정보이용 약관에 동의합니다.
				</div>
				
			</div>
			
			<%--전체동의 --%>
			<button type="button" class="payment"  id="next" style="width: 600px;" onclick="next();">확인</button>
    
    </div><!-- out_block -->
    
    
  </body>
</html>
import { GoogleGenerativeAI } from "@google/generative-ai";

// Fetch your API_KEY
const API_KEY = "AIzaSyAXJ5B0XYcbiTzySgX2C7ksnWirHPRniaQ";

const genAI = new GoogleGenerativeAI(API_KEY);
const model = genAI.getGenerativeModel({ model: "gemini-pro" });
const memberImg = $("#member_img").val();
const contextPath = $("#contextPath").val();


let history = [
	{
		role: "user",
		parts: [{ text: "안녕" }],
	},
	{
		role: "model",
		parts: [{ text: "안녕하세요! 여러분을 도와드릴 공생이입니다. 무엇을 도와드릴까요?" }],
	},
	{
		role: "user",
		parts: [{ text: "이 사이트는 뭐하는 곳이야?" }],
	},
	{
		role: "model",
		parts: [{ text: "공생은 하우징과 인테리어를 배우고 싶어하는 여러분을 위해 만들어진 사이트에요! 전문적인 지식을 갖춘 강사님인 반장님과 여러분을 연결시켜 원데이 클래스와 정규수업을 진행할 수있도록 도와드리고 있어요!" }],
	},
	{
		role: "user",
		parts: [{ text: "내가 반장이 될 수도 있어?" }],
	},
	{
		role: "model",
		parts: [{ text: "그럼요! 여러분께서 전문적인 지식과 노하우를 가지고 있다면 저희를 통해 반장회원을 신청하신 후 검토이후에 반장회원으로 변경하실 수 있어요!" }],
	},
	{
		role: "user",
		parts: [{ text: "그럼 반장이 되려면 어떻게 해야해?" }],
	},
	{
		role: "model",
		parts: [{ text: "반장이 되시려면 먼저 저희 공생에 회원가입을 하신 후 마이페이지에서 반장회원 가입을 통해 정보를 입력하세요! 검토 이후에 반장이 되시면 클래스를 등록해 수업을 하시고 일정 수수료를 제외한 수업료를 받으실 수 있어요!" }],
	},
	{
		role: "user",
		parts: [{ text: "공생은 어떤사람에게 추천해?" }],
	},
	{
		role: "model",
		parts: [{ text: "공생은 인테리어에 관심 있는 모든 분들에게 적합합니다. 특히, 다음과 같은 분들에게 추천합니다. 직접 집안을 인테리어하고 싶지만 어디서부터 시작해야 할지 모르는 분 기본적인 인테리어 지식을 쌓고 싶은 분 새로운 인테리어 아이디어를 얻고 싶은 분  깔끔하고 아늑한 공간을 만들고 싶은 분" }],
	},
	{
		role: "user",
		parts: [{ text: "공생에는 어떤 클래스가 있어?" }],
	},
	{
		role: "model",
		parts: [{ text: "공생은 다음과 같은 카테고리로 나누어져 있어요 \n1) 바닥시공 - 1: 바닥재 시공 / 2: 장판 시공 / 3: 타일 시공 / 4: 마루 시공 / 5: 카페트 시공2) 벽/천장 시공 - 1: 도배 시공 / 2: 칸막이 시공 / 3: 페인트 시공 / 4: 방음 시공 / 5: 단열 필름 시공3) 부분 인테리어 - 1: 샷시 설치 및 수리 / 2: 화장실 리모델링 / 3: 주방 리모델링 / 4: 가구 리폼 / 5: 붙박이장 시공4) 야외 시공 - 1: 조경 공사 / 2: 옥상공사 / 3: 지붕 공사 / 4: 태양광 발전 / 5: 외벽 리모델링5) 종합 인테리어 - 1: 집 인테리어 / 2: 상업공간 인테리어 / 3: 주택 리모델링 / 4: 집 수리 / 5: 인테리어 소품6) 기타 시공 - 1: 줄눈 시공 / 2: 단열 시공 / 3: 미장 시공" }],
	},
	{
		role: "user",
		parts: [{ text: "클래스에 기타제공사항이란게 있던데 그게 뭐야" }],
	},
	{
		role: "model",
		parts: [{ text: "기타제공사항은 클래스 수업외에 반장님이 제공하는 것들이에요 목록은 다음과 같아요 \n\"1: 공방보유 / 2: 주차공간 / 3: 와이파이 / 4: 커피 별도 구매 / 5: 대중교통 용이 \n6: 택시,자가용 추천 / 7: 음료,간식 제공\"" }],
	},
	{
		role: "user",
		parts: [{ text: "클래스 신청은 어떻게 하나요?" }],
	},
	{
		role: "model",
		parts: [{ text: "클래스 신청은 공생 웹사이트에서 가능합니다. 웹사이트 또는 앱에 접속합니다.\\n2. 원하는 클래스를 검색합니다.\\n3. 클래스 페이지에서 '신청하기' 버튼을 클릭합니다.\\n4. 신청 정보를 입력하고 '결제하기' 버튼을 클릭합니다.\\n5. 결제가 완료되면 클래스 신청이 완료됩니다.\"" }],
	},
	{
		role: "user",
		parts: [{ text: "\"클래스 취소 및 환불 정책은 어떻게 되나요?" }],
	},
	{
		role: "model",
		parts: [{ text: "클래스 취소 및 환불 정책은 다음과 같습니다.\\n\\n* 클래스 시작 7일 전까지 취소: 전액 환불\\n* 클래스 시작 7일 이내 취소: 50% 환불\\n* 클래스 시작 후 취소: 환불 불가\\n\\n단, 예외적인 상황에 따라 환불 정책이 변경될 수 있습니다. 자세한 내용은 고객센터에 문의하시기 바랍니다." }],
	},
	{
		role: "user",
		parts: [{ text: "강사님은 어떤 경력을 가지고 있나요?" }],
	},
	{
		role: "model",
		parts: [{ text: "저희 공생의 강사님들은 모두 풍부한 경력을 가진 인테리어 전문가로 엄선되어 있습니다." }],
	},
	{
		role: "user",
		parts: [{ text: "클래스 분위기는 어떤가요?" }],
	},
	{
		role: "model",
		parts: [{ text: "저희 공생의 원데이 클래스는 편안하고 즐거운 분위기에서 진행됩니다. 강사와 학생들이 서로 소통하며 적극적으로 참여하는 분위기입니다." }],
	},
	{
		role: "user",
		parts: [{ text: "원데이 클래스와 정규모집의 차이가 뭔가요?" }],
	},
	{
		role: "model",
		parts: [{ text: "원데이 클래스는 하룻동안에만 여러가지를 압축해서 배우거나 전문적인 지식 한가지를 배울 수 있고 정규모집 클래스는 일정한 기간동안 계속해서 방문하여 폭넓은 지식을 배우는 것이 가능해요" }],
	},
	{
		role: "user",
		parts: [{ text: "포인트는 있어?" }],
	},
	{
		role: "model",
		parts: [{ text: "죄송하지만 포인트는 아직 준비중이에요 개발이 되는대로 여러분을 찾아갈게요" }],
	},
	{
		role: "user",
		parts: [{ text: "클래스 수강 후에도 궁금한 점이 있으면 어떻게 해야 하나요?" }],
	},
	{
		role: "model",
		parts: [{ text: "클래스 수강 후에도 궁금한 점은 플랫폼 내 메시지 기능 또는 고객센터를 통해 문의하실 수 있습니다. 강사 또는 전문가가 답변을 드리도록 노력하겠습니다." }],
	},
	{
		role: "user",
		parts: [{ text: "클래스에서 사용하는 재료는 어디에서 구입할 수 있나요?" }],
	},
	{
		role: "model",
		parts: [{ text: "클래스에서 사용하는 재료는 대부분 온라인 쇼핑몰 또는 오프라인 홈센터에서 구입 가능합니다. 강사가 추천하는 구매처 정보는 클래스 자료에 포함되어 제공됩니다." }],
	},
	{
		role: "user",
		parts: [{ text: "클래스를 듣고 싶지만 시간이 안 맞는 경우 어떻게 해야 하나요?" }],
	},
	{
		role: "model",
		parts: [{ text: "죄송하지만 시간 변경기능은 제공하지 않습니다. 다만 1:1 채팅기능을 통해 반장님에게 문의하실 수 있습니다." }],
	},
	{
		role: "user",
		parts: [{ text: "추가적인 캐쉬도 지급해드립니클래스 강사가 마음에 안 든다면 어떻게 해야 하나요?" }],
	},
	{
		role: "model",
		parts: [{ text: "클래스 강사가 마음에 안 든다면 클래스 종료 후 플랫폼 내 '클래스 평가' 기능을 통해 평가를 남겨주시기 바랍니다. 플랫폼은 사용자 평가를 참고하여 클래스 개선에 노력할 것입니다.\"" }],
	},
	{
		role: "user",
		parts: [{ text: "\"클래스 중간에 궁금한 점이 있으면 어떻게 해야 하나요?" }],
	},
	{
		role: "model",
		parts: [{ text: "클래스 중간에 궁금한 점은 클래스 내 질문 기능 또는 댓글 기능을 통해 질문하실 수 있습니다. 반장님이 실시간으로 답변을 드릴 것입니다.\"" }],
	},
	{
		role: "user",
		parts: [{ text: "\"클래스 후기를 어디에서 볼 수 있나요" }],
	},
	{
		role: "model",
		parts: [{ text: "클래스 후기는 클래스 페이지에서 볼 수 있습니다. 다른 사용자들의 후기를 참고하여 원하는 클래스를 선택하시는 데 도움이 될 것입니다." }],
	},
	{
		role: "user",
		parts: [{ text: "클래스에 참여하기 위해 필요한 준비물은 무엇인가요?" }],
	},
	{
		role: "model",
		parts: [{ text: "클래스에 참여하기 위해 필요한 준비물은 클래스마다 다를 수 있습니다. 필요한 준비물은 클래스 정보에 포함되어 제공됩니다.\"" }],
	},
	{
		role: "user",
		parts: [{ text: "할인혜택 같은건 있나요?" }],
	},
	{
		role: "model",
		parts: [{ text: "물론입니다. 마음에 드는 강사님으 팔로우 하시면 2천원 할인쿠폰과 더불어 강사님의 신규클래스 알림도 받아보실 수있고 또한 저희 공페이를 충전하시면 추가적인 캐쉬도 적립해 드립니다." }],
	},
	{
		role: "user",
		parts: [{ text: "어떤 클래스를 선택해야 할지 잘 모르겠습니다. 어떻게 해야 하나요?" }],
	},
	{
		role: "model",
		parts: [{ text: "1. 목표 설정: 인테리어에 대한 목표를 설정합니다. 예를 들어, 기본적인 인테리어 지식을 쌓고 싶은지, 특정 공간을 꾸미고 싶은지, 전문적인 기술을 배우고 싶은지 등을 고려합니다.\n\n2. 강사 및 후기 확인: 강사의 경력 및 후기를 확인하여 자신에게 적합한 강사를 선택합니다.3. 클래스 내용 확인: 클래스 내용을 확인하여 자신이 배우고 싶은 내용을 다루는지 확인합니다" }],
	},
	{
		role: "user",
		parts: [{ text: "비밀번호를 잊었으면 어떻게하나요" }],
	},
	{
		role: "model",
		parts: [{ text: "로그인 페이지 하단의 비밀번호 찾기를 이용해 정보를 입력한뒤 이메일을 수신해 비밀번호를 재설정 하실 수 있습니다." }],
	},
	{
		role: "user",
		parts: [{ text: "아이디를 잊었으면 어떻게 해야해?" }],
	},
	{
		role: "model",
		parts: [{ text: "로그인 페이지 하단의 아이디 찾기를 이용해 정보를 입력한 뒤 이메일을 수신받아 아이디를 확인하실 수 있습니다." }],
	},
];

async function getResponse(prompt) {
	const chat = await model.startChat({ history: history });
	const result = await chat.sendMessage(prompt);
	const response = await result.response;
	const text = response.text();

	console.log(text);
	return text;
}

export const userDiv = (data) => {
	return "<li class='replies'><img src='"+memberImg+"' alt='' /><p>" + data + "</p></li>";
};

export const aiDiv = (data) => {
	return "<li class='sent'><img src='" +contextPath +"/resources/img/chat_bot.png' alt='' /><p>" + data + "</p></li>";
};


async function handleSubmit(event) {
	event.preventDefault();

	  let userMessage = document.getElementById("msg_input");
	  const chatArea = document.getElementById("chat-container");
	
	  var prompt = userMessage.value.trim();
	  if (prompt === "") {
	    return;
	  }
	console.log("user message : ", prompt);
	
	chatArea.innerHTML += userDiv(prompt);
	userMessage.value = "";
	const aiResponse = await getResponse(prompt);
	chatArea.innerHTML += aiDiv(aiResponse);

	let newUserRole = {
    role: "user",
    parts: prompt,
 	};
 	
 	let newAIRole = {
    role: "model",
    parts: aiResponse,
 	};

	history.push(newUserRole);
	history.push(newAIRole);

  console.log(history);
}

const chatForm = document.getElementById("chat-form");
chatForm.addEventListener("submit", handleSubmit);

chatForm.addEventListener("keyup", (event) => {
  if (event.keyCode === 13) handleSubmit(event);
});

const searchDiv = document.querySelector('.search');
const searchEngineDiv = document.querySelector('.searchEngine');
	
let searchBoardCnt=0;
let searchBoard = document.querySelector(".searchBoard");
searchBoard.addEventListener("click",()=>{
	if (searchBoardCnt%2==0) {
		document.querySelector(".searchBoard-menu").classList.remove("engine-active");
		document.getElementById("board_arrow_down").style.transform="rotate(180deg)";
	}
	else {
		document.querySelector(".searchBoard-menu").classList.add("engine-active");
		document.getElementById("board_arrow_down").style.transform="rotate(0)";
	}
	searchBoardCnt+=1;
})
let searchKeywordCnt=0;
let searchKeyword = document.querySelector(".searchKeyword");
searchKeyword.addEventListener("click",()=>{
	if (searchKeywordCnt%2==0) {
		document.querySelector(".searchKeyword-menu").classList.remove("engine-active");
		document.getElementById("keyword_arrow_down").style.transform="rotate(180deg)";
	}
	else {
		document.querySelector(".searchKeyword-menu").classList.add("engine-active");
		document.getElementById("keyword_arrow_down").style.transform="rotate(0)";
	}
	searchKeywordCnt+=1;
})
let searchWorkflowCnt=0;
let searchWorkflow = document.querySelector(".searchWorkflow");
searchWorkflow.addEventListener("click",()=>{
	if (searchWorkflowCnt%2==0) {
		document.querySelector(".searchWorkflow-menu").classList.remove("engine-active");
		document.getElementById("workflow_arrow_down").style.transform="rotate(180deg)";
	}
	else {
		document.querySelector(".searchWorkflow-menu").classList.add("engine-active");
		document.getElementById("workflow_arrow_down").style.transform="rotate(0)";
	}
	searchWorkflowCnt+=1;
})

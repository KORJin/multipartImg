/**
 * 
 */
function wirte(obj,root) {
	/**/
	if(LMForm.LMcategory.value==""){
		LMForm.LMcategory.focus();
		return false;
	}
	else if(LMForm.file.value=""){
		LMForm.file.focues();
		alert("이미지를 입력해 주세요.");
		return false;
	}
}
function LMForm(obj,root){
	var LMtitle = document.forms[0].title.value;
	
}

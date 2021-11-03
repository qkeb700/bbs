$(function(){
	$('#all').change(function(){
		if(this.checked){
			$('.yak').prop("checked", true);
		} else {
			$('.yak').prop("checked", false);
		}
	})
	$('#joinform').submit(function(){
		if($('#yak01').is(':checked') == false){
			alert("회원이용 약관에 동의해 주세요.");
			$('#yak01').focus();
			return false;
		}
		if($('#yak02').is(':checked') == false){
			alert("개인정보 수집에 동의해 주세요.");
			$('#yak02').focus();
			return false;
		}
	})
})
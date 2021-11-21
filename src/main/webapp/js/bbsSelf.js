$(function(){
	$(window).load(function(){
		$('.loading').fadeOut(1000);
	});
	$('textarea.contents').summernote({
		placeholder: "내용을 입력하세요.",
		tabsize: 2,
		height: 350
	});
	
	$('#writeform').submit(function(){
		if($("#username").val() == "") {
			alert("이름을 입력하세요.");
			$("#username").focus();
			return false;
		} else if($("#userpass").val() == "") {
			alert("비밀번호를 입력하세요.");
			$("#userpass").focus();
			return false;
		} else if($("#subject").val() == "") {
			alert("제목을 입력하세요.");
			$("#subject").focus();
			return false;
		} else if($(".contents").val() == "") {
			alert("내용을 입력하세요.");
			$(".contents").focus();
			return false;
		} else if($(".contents").val().length < 10) {
			alert("내용은 10자 이상 입력하세요.");
			$(".contents").focus();
			return false;
		} else{
			if($('#sec01').is(":checked") == false){
				$('#sec').val("0");
			} else{
				$('#sec').val($('#sec01').val());
			}
			return true;
		}
	});
})
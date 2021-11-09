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
	
	$('#checkid').click(function(){
		let userid = $('#userid').val();
		if(!userid){
			alert("아이디를 입력하세요.");
			$('#userid').focus();
			return false;
		}
		$('#fuserid').val(userid);
		$('.viewfind').fadeIn();
	})
	
	$(document).on("click", ".btn-find", function(){
		let userid = $('#fuserid').val();
		$.get("include/searchid.jsp", {userid: userid},
		function(data){
			if(data==1){
				$('.idable').css("cursor", "pointer").css("text-decoration", "underline").html("사용할 수 있는 아이디입니다.(사용하기)");
			} else{
				$('.idable').html("사용할 수 없는 아이디입니다.");
				$('#fuserid').val("");
				$('#userid').val("");
			}	
		})
	})
	
	$(document).on("click", ".idable", function(){
		if($('#fuserid').val()){
			let fuserid = $('#fuserid').val();
			$('#userid').val(fuserid);
			$('.findid').val("ok");
			alert(fuserid + "로 사용합니다.");
		}
		$(".viewfind").fadeOut();
	})
	
})
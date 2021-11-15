$(function(){
	// 모든 이용약관에 동의 체크 누르면 다 동의 체크 된다
	$('#all').change(function(){
		if(this.checked){
			$('.yak').prop("checked", true);
		} else {
			$('.yak').prop("checked", false);
		}
	})
	// 필수 이용약관에 체크가 되어있는지 확인
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
	
	// 중복확인 버튼 눌렀을때 빈값이면 에러, 아니면 아이디 중복확인창
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
	
	// 중복검색 버튼을 누르면 데이터베이스에 동일한 아이디가 있으면 경고, 아니면 가능
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
	
	// 중복검색 아래에 뜨는 글을 눌러서 아이디 중복확인창 나가기
	$(document).on("click", ".idable", function(){
		if($('#fuserid').val()){
			let fuserid = $('#fuserid').val();
			$('#userid').val(fuserid);
			$('.findid').val("ok");
			alert(fuserid + "로 사용합니다.");
		}
		$(".viewfind").fadeOut();
	})
	
	// 각 필드 값 유무 확인
	$('#joinform2').submit(function(){
		// 아이디 체크 확인
		if(!$('.findid').val()){
			alert("아이디 중복확인을 해주세요.");
			$('#checkid').focus();
			return false;
		}
		// 비밀번호 같은지 확인
		if($("#userpass").val()){
			if($('#userpass').val() != $('#userpass2').val()){
				alert("비밀번호가 다릅니다. 다시 확인해주세요.");
				$('#userpass').focus();
				return false;
			}
		} else{
			alert("비밀번호를 입력하세요.");
			$('#userpass').focus();
			return false;
		}
		// 이름 확인
		if(!$("input[name=username]").val()){
			alert("이름을 입력하세요.");
			$("input[name=username]").focus();
			return false;
		}
		// 이메일 확인
		if(!$("input[name=useremail]").val()){
			alert("이메일을 입력하세요.");
			$("input[name=useremail]").focus();
			return false;
		}
		// 전화번호 합치기
		let tel1 = $("input[name=tel1]").val();
		let tel2 = $("input[name=tel2]").val();
		let tel3 = $("input[name=tel3]").val();
		
		if(!tel1 || !tel2 || !tel3){
			alert("전화번호를 입력하세요.");
			$("input[name=tel1]").focus();
			return false;
		} else{
			let tel = tel1 + "-" + tel2 + "-" + tel3;
			$("input[name=tel]").val(tel);
		}
	})
})
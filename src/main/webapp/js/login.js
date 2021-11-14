$(function(){
	$('#findidform').submit(function(e){
		e.preventDefault();
		let username = $('#username').val();
		let useremail = $('#useremail').val();
		
		if(!username){
			alert("이름을 입력하세요.");
			$('#username').focus();
			return false;
		}
		if(!useremail){
			alert("이메일을 입력하세요.");
			$('#useremail').focus();
			return false;
		}
		$.ajax({
			type: "POST",
			url: "include/findidok.jsp",
			data: {username: username, useremail: useremail},
			success: function(data){
				const rs = JSON.parse(data);
				let str = "";
				if(rs.userid){
					str = "<div class='text-center py-5 px-5'>" + rs.username + "님의 아이디는 <b>[" + rs.userid + "]</b> 입니다.</div>";
					str += "<div class='text-center py-5 px-5'><a href='login.jsp'>로그인 하러가기</a></div>"; 
				} else{
					str = "<div class='text-center py-5 px-5'>" + rs.username + "님이 찾는 아이디는 없습니다.</div>";
					str += "<div class='text-center py-5 px-5'><a href='login.jsp'>로그인 하기</a> | <a href='join.jsp'>회원가입하기</a></div>";
				}
				$('.findid').html(str);
			}
		})
	})
})